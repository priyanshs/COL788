#include <stdio.h>
#include "main.h"

#define FILL_BUFFER_SIZE 640
#define AUDIO_IN_BUF_LEN   (AUDIO_CHANNELS*AUDIO_SAMPLING_FREQUENCY/1000)
#define AUDIO_OUT_BUF_LEN  FILL_BUFFER_SIZE//(AUDIO_IN_BUF_LEN*8)
#define STLBLE_PRINTF(...) {\
      char TmpBufferToWrite[256];\
      int32_t TmpBytesToWrite;\
      TmpBytesToWrite = sprintf( TmpBufferToWrite, __VA_ARGS__);\
      CDC_Fill_Buffer(( uint8_t * )TmpBufferToWrite, TmpBytesToWrite);\
}


BSP_AUDIO_Init_t MicParams;
BSP_AUDIO_Init_t OutParams;

int16_t PCM_Buffer[AUDIO_IN_BUF_LEN];
int8_t mfcc_buffer[490];
int16_t Proc_Buffer_f[FILL_BUFFER_SIZE];
int16_t Fill_Buffer[FILL_BUFFER_SIZE];

volatile int16_t audio_out_buffer[AUDIO_OUT_BUF_LEN];
USBD_HandleTypeDef hUSBDDevice;
TIM_HandleTypeDef TimCCHandle;

extern USBD_DescriptorsTypeDef VCP_Desc;
extern TIM_HandleTypeDef TimHandle;
extern void CDC_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

char output_class[12][8] = {"Silence", "Unknown","yes","no","up","down","left","right","on","off","stop","go"};
int recording_win = 1;
int averaging_window_len = 1;
int detection_threshold = 90;

void run_kws(void);
void AudioProcess(void);
void AudioProcessSensing(void);

static uint32_t index_buff_fill = 0;
static int k = 0;//for running feature extraction multiple times

KWS_F746NG *kws;
uint32_t start, elapsed;
int main( void ) 
{
  HAL_Init();
  SystemClock_Config();
  HAL_PWREx_EnableVddUSB();
  CoreDebug->DEMCR = CoreDebug_DEMCR_TRCENA_Msk /*enable tracing*/ |
                     CoreDebug_DEMCR_MON_EN_Msk /*enable debug interrupt*/;

  USBD_Init(&hUSBDDevice, &VCP_Desc, 0);
  USBD_RegisterClass(&hUSBDDevice, USBD_CDC_CLASS);
  USBD_CDC_RegisterInterface(&hUSBDDevice, &USBD_CDC_fops);
  USBD_Start(&hUSBDDevice);
  HAL_Delay(5000);
		//Configure Audio Input peripheral - DFSDM
		MicParams.BitsPerSample = 16;
		MicParams.ChannelsNbr = AUDIO_CHANNELS;
		MicParams.Device = AUDIO_IN_DIGITAL_MIC;
		MicParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
		MicParams.Volume = AUDIO_VOLUME_INPUT;
  BSP_AUDIO_IN_Init(BSP_AUDIO_IN_INSTANCE, &MicParams);
  kws = new KWS_F746NG(recording_win, averaging_window_len);
  BSP_LED_Init(LED1);
  BSP_AUDIO_IN_Record(BSP_AUDIO_IN_INSTANCE,(uint8_t *) PCM_Buffer, 32);
     	//Configure Audio Output peripheral (SAI) and external DAC/
		OutParams.BitsPerSample = 16;
		OutParams.ChannelsNbr = AUDIO_CHANNELS;
		OutParams.Device = 0;
		OutParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
		OutParams.Volume = AUDIO_VOLUME_OUTPUT;
  BSP_AUDIO_OUT_Init(BSP_AUDIO_OUT_INSTANCE, &OutParams);
  BSP_AUDIO_OUT_SetVolume(BSP_AUDIO_OUT_INSTANCE, OutParams.Volume);
  BSP_LED_On(LED1);

  STLBLE_PRINTF("Welcome to the AudioLoop App!\r\n\n");

  /*uint32_t test_variable;
     DWT->COMP0 = &test_variable;
     DWT->MASK0 = 0; //match all comparator bits, don't ignore any
     DWT->FUNCTION0 = (1 << 11)/*DATAVSIZE 1 - match whole word*/
                //| (1 << 1) | (1 << 2)/*generate a watchpoint event on write*/;
     //test_variable = 5; // <<----- CPU stops after this line


  STLBLE_PRINTF("Watchpoint test!\r\n\n");


  while (1)
  {      /* Go to Sleep, everything is done in the interrupt service routines */
      __WFI();
  }
}
/**
* @brief  Half Transfer user callback, called by BSP functions.
* @param  None
* @retval None
*/
void BSP_AUDIO_IN_HalfTransfer_CallBack(uint32_t Instance)
{
	AudioProcess();
}
/*
* @brief  Transfer Complete user callback, called by BSP functions.
* @param  None
* @retval None*/
void BSP_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
{
	AudioProcess();
}
/**
* @brief  User function that is called when 1 ms of PDM data is available.
* 		  In this application only PDM to PCM conversion and USB streaming
*                  is performed.
* 		  User can add his own code here to perform some DSP or audio analysis.
* @param  none
* @retval None
*/
void AudioProcess(void)
{
  /*for L4 PDM to PCM conversion is performed in hardware by DFSDM peripheral*/
  static uint32_t IndexOut = 0;
  static uint32_t AudioOutActive = 0;
  uint32_t indexIn;
  //Send_Audio_to_USB((int16_t *)PCM_Buffer, AUDIO_SAMPLING_FREQUENCY/1000*AUDIO_CHANNELS);

  for(indexIn=0;indexIn<AUDIO_IN_BUF_LEN;indexIn++)
  {
    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
  }

  memcpy(Fill_Buffer + index_buff_fill, PCM_Buffer, sizeof(int16_t) * 16);
  index_buff_fill += 16;

  if(!AudioOutActive && IndexOut==AUDIO_OUT_BUF_LEN/2)
  {
    BSP_AUDIO_OUT_Play(BSP_AUDIO_OUT_INSTANCE,(uint8_t*)audio_out_buffer, AUDIO_OUT_BUF_LEN);
    AudioOutActive=1;
  }
  if(IndexOut==AUDIO_OUT_BUF_LEN)
  {
    IndexOut=0;
  }
  start = HAL_GetTick();
  AudioProcessSensing();
}

void AudioProcessSensing(void)
{

   //Create a 40ms (640 samples) window every 20ms (320 samples)
   //Audio Feature Extraction is ran every 20ms on a 40 ms window (50% overlap)
   if (index_buff_fill == FILL_BUFFER_SIZE) {
	   //Copy Fill Buffer in Proc Buffer
       for (int16_t i = 0; i < FILL_BUFFER_SIZE; i++)
       {
         Proc_Buffer_f[i] = Fill_Buffer[i];
       }

    //Left shift Fill Buffer by 320 samples
    memmove(Fill_Buffer, Fill_Buffer + (FILL_BUFFER_SIZE / 2), sizeof(int16_t) * (FILL_BUFFER_SIZE / 2));
    index_buff_fill = (FILL_BUFFER_SIZE / 2);


    kws->extract_features();

    k++;
    if(k == 49)
    {
    	run_kws();
    	elapsed = HAL_GetTick() -start;
    	STLBLE_PRINTF("time taken=%d\r\n",elapsed);
    	k = 0;
    }

  }
}

void run_kws()
{

  //STLBLE_PRINTF("--");
  kws->classify();
			  //STLBLE_PRINTF("conv1_wt: %d %d %d\r\n\n", dscnn->conv1_wt[0], dscnn->conv1_wt[1], dscnn->conv1_wt[2559]);
			  //STLBLE_PRINTF("conv2_ds_wt: %d %d %d\r\n\n", dscnn->conv2_ds_wt[0], dscnn->conv2_ds_wt[1], dscnn->conv2_ds_wt[575]);
			  //STLBLE_PRINTF("conv5_pw_wt: %d %d %d\r\n\n", dscnn->conv5_pw_wt[0], dscnn->conv5_pw_wt[1], dscnn->conv5_pw_wt[4095]);
  kws->average_predictions();
  int max_ind = kws->get_top_class(kws->averaged_output);
  if(kws->averaged_output[max_ind]>detection_threshold*128/100)
     {
	  STLBLE_PRINTF("Detected %s (%d%%)\r\n\n",output_class[max_ind],((int)kws->averaged_output[max_ind]*100/128));
     }


}


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if(htim == (&TimHandle))
  {
     CDC_TIM_PeriodElapsedCallback(htim);
  }
}

/**
 * @brief  This function is executed in case of error occurrence
 * @param  None
 * @retval None
 */
void Error_Handler( void )
{

  while (1)
  {}
}
void HAL_Delay(__IO uint32_t Delay)
{
  uint32_t tickstart = 0;
  tickstart = HAL_GetTick();
  while((HAL_GetTick() - tickstart) < Delay)
  {
    __WFI();
  }
}


#ifdef  USE_FULL_ASSERT

/**
 * @brief  Reports the name of the source file and the source line number
 *   where the assert_param error has occurred
 * @param  file: pointer to the source file name
 * @param  line: assert_param error line source number
 * @retval None
 */
void assert_failed( uint8_t *file, uint32_t line )
{

  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  
  while (1)
  {}
}

#endif
