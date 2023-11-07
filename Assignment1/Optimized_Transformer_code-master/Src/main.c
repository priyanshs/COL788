#include "main.h"
#include "kws_f746ng.h"

KWS_F746NG *kws;

#define AUDIO_IN_BUF_LEN   (AUDIO_CHANNELS*AUDIO_SAMPLING_FREQUENCY/1000)
#define AUDIO_OUT_BUF_LEN  (AUDIO_IN_BUF_LEN*8)

BSP_AUDIO_Init_t MicParams;
BSP_AUDIO_Init_t OutParams;
uint16_t PCM_Buffer[AUDIO_IN_BUF_LEN];
volatile int16_t audio_out_buffer[AUDIO_OUT_BUF_LEN];

USBD_HandleTypeDef hUSBDDevice;
extern USBD_AUDIO_ItfTypeDef  USBD_AUDIO_fops;

char output_class[12][8] = {"Silence", "Unknown","yes","no","up","down","left","right","on","off","stop","go"};

int recording_win = 3;
int averaging_window_len = 3;
int detection_threshold = 90;

void run_kws();

int main( void ) 
{
  HAL_Init();
  
  SystemClock_Config();
  
  HAL_PWREx_EnableVddUSB();   

  USBD_AUDIO_Init_Microphone_Descriptor(&hUSBDDevice, AUDIO_SAMPLING_FREQUENCY, AUDIO_CHANNELS);
  USBD_Init(&hUSBDDevice, &AUDIO_Desc, 0);
  USBD_RegisterClass(&hUSBDDevice, &USBD_AUDIO);
  //USBD_CDC_RegisterInterface(&hUSBDDevice, &USBD_CDC_fops);
  USBD_AUDIO_RegisterInterface(&hUSBDDevice, &USBD_AUDIO_fops);

  USBD_Start(&hUSBDDevice);  
  
  /* Configure Audio Input peripheral - DFSDM */  
  MicParams.BitsPerSample = 16;
  MicParams.ChannelsNbr = AUDIO_CHANNELS;
  MicParams.Device = AUDIO_IN_DIGITAL_MIC;
  MicParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
  MicParams.Volume = AUDIO_VOLUME_INPUT;
  
  BSP_AUDIO_IN_Init(BSP_AUDIO_IN_INSTANCE, &MicParams); 
  
  kws = new KWS_F746NG(recording_win, averaging_window_len);
  memset(kws->audio_buffer_in, 0, kws->audio_block_size);
  memset(kws->audio_buffer, 0, kws->audio_buffer_size);


  /* Start Microphone acquisition */
  BSP_AUDIO_IN_Record(BSP_AUDIO_IN_INSTANCE, (uint8_t *) PCM_Buffer, AUDIO_IN_BUFFER_SIZE);
    
  /* Configure Audio Output peripheral (SAI) and external DAC */
  OutParams.BitsPerSample = 16;
  OutParams.ChannelsNbr = AUDIO_CHANNELS;
  OutParams.Device = 0;
  OutParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
  OutParams.Volume = AUDIO_VOLUME_OUTPUT;
  
  BSP_AUDIO_OUT_Init(BSP_AUDIO_OUT_INSTANCE, &OutParams);
  BSP_AUDIO_OUT_SetVolume(BSP_AUDIO_OUT_INSTANCE, OutParams.Volume);
  
  printf("Testing...");
  while (1)
  {
    /* Go to Sleep, everything is done in the interrupt service routines */
    __WFI();
  }
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
  
  Send_Audio_to_USB((int16_t *)PCM_Buffer, AUDIO_SAMPLING_FREQUENCY/1000*AUDIO_CHANNELS);  
  
  for(indexIn=0;indexIn<AUDIO_IN_BUF_LEN;indexIn++)
  {
    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
  }
  
  if(!AudioOutActive && IndexOut==AUDIO_OUT_BUF_LEN/2)
  {
    BSP_AUDIO_OUT_Play(BSP_AUDIO_OUT_INSTANCE,(uint8_t*)audio_out_buffer, AUDIO_OUT_BUF_LEN);
    AudioOutActive=1;
  }
  if(IndexOut==AUDIO_OUT_BUF_LEN)
  {
    IndexOut=0;
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
 run_kws();
}

/**
* @brief  Transfer Complete user callback, called by BSP functions.
* @param  None
* @retval None
*/
void BSP_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
{  

 AudioProcess();
 run_kws();
}

void run_kws()
{
 kws->extract_features();    //extract mfcc features
 kws->classify();	      //classify using dnn
 kws->average_predictions();
 int max_ind = kws->get_top_class(kws->averaged_output);
  if(kws->averaged_output[max_ind]>detection_threshold*128/100)
    printf("%d%% %s",((int)kws->averaged_output[max_ind]*100/128),output_class[max_ind]);

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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
