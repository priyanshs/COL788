#include <stdio.h>
#include "main.h"
#include "kwt.h"
#include "tensorflow/lite/micro/debug_log.h"
#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"

/*
#define FILL_BUFFER_SIZE 640
#define AUDIO_IN_BUF_LEN   (AUDIO_CHANNELS*AUDIO_SAMPLING_FREQUENCY/1000)
#define AUDIO_OUT_BUF_LEN  FILL_BUFFER_SIZE//(AUDIO_IN_BUF_LEN*8)
#define STLBLE_PRINTF(...) {\
      char TmpBufferToWrite[256];\
      int32_t TmpBytesToWrite;\
      TmpBytesToWrite = sprintf( TmpBufferToWrite, __VA_ARGS__);\
      CDC_Fill_Buffer(( uint8_t * )TmpBufferToWrite, TmpBytesToWrite);\
} */

#define  ARM_CM_DEMCR      (*(uint32_t *)0xE000EDFC)
#define  ARM_CM_DWT_CTRL   (*(uint32_t *)0xE0001000)
#define  ARM_CM_DWT_CYCCNT (*(uint32_t *)0xE0001004)


void DebugLog(const char *s)
{
//	STLBLE_PRINTF("%s", s);
}

//const unsigned char kwt[] DATA_ALIGN_ATTRIBUTE = { }
//const int kwt_len = 31448;

namespace
{
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    tflite::MicroInterpreter* interpreter = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;
    int y = kwt_len;
    char c = kwt[0];
    // Create an area of memory to use for input, output, and intermediate arrays.
    // Finding the minimum value for your model may require some trial and error.
    constexpr uint32_t kTensorArenaSize = 85 * 1024;
    uint8_t tensor_arena[kTensorArenaSize];
} // namespace


//BSP_AUDIO_Init_t MicParams;
//BSP_AUDIO_Init_t OutParams;

//int16_t PCM_Buffer[AUDIO_IN_BUF_LEN];
//int8_t mfcc_buffer[490];
//int16_t Proc_Buffer_f[FILL_BUFFER_SIZE];
//int16_t Fill_Buffer[FILL_BUFFER_SIZE];

//volatile int16_t audio_out_buffer[AUDIO_OUT_BUF_LEN];
USBD_HandleTypeDef hUSBDDevice;
TIM_HandleTypeDef TimCCHandle;

extern USBD_DescriptorsTypeDef VCP_Desc;
extern TIM_HandleTypeDef TimHandle;
extern void CDC_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

//char output_class[12][8] = {"Silence", "Unknown","yes","no","up","down","left","right","on","off","stop","go"};
//int recording_win = 1;
//int averaging_window_len = 1;
//int detection_threshold = 90;
//
void run_kws(void);
//void AudioProcess(void);
//void AudioProcessSensing(void);

//static uint32_t index_buff_fill = 0;
//static int k = 0;//for running feature extraction multiple times
//
//KWS_F746NG *kws;
//uint32_t start, elapsed, stop, total;
//uint32_t c= 0;


int main( void ) {
  HAL_Init();
  SystemClock_Config();
  HAL_PWREx_EnableVddUSB();
  USBD_Init(&hUSBDDevice, &VCP_Desc, 0);
  USBD_RegisterClass(&hUSBDDevice, USBD_CDC_CLASS);
  USBD_CDC_RegisterInterface(&hUSBDDevice, &USBD_CDC_fops);
  USBD_Start(&hUSBDDevice);
//  HAL_Delay(5000);



//  Configure Audio Input peripheral - DFSDM
//		MicParams.BitsPerSample = 16;
//		MicParams.ChannelsNbr = AUDIO_CHANNELS;
//		MicParams.Device = AUDIO_IN_DIGITAL_MIC;
//		MicParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
//		MicParams.Volume = AUDIO_VOLUME_INPUT;

//  BSP_AUDIO_IN_Init(BSP_AUDIO_IN_INSTANCE, &MicParams);
//  kws = new KWS_F746NG(recording_win, averaging_window_len);
//  BSP_LED_Init(LED1);
//  BSP_AUDIO_IN_Record(BSP_AUDIO_IN_INSTANCE,(uint8_t *) PCM_Buffer, 32);
//     	//Configure Audio Output peripheral (SAI) and external DAC/
//		OutParams.BitsPerSample = 16;
//		OutParams.ChannelsNbr = AUDIO_CHANNELS;
//		OutParams.Device = 0;
//		OutParams.SampleRate = AUDIO_SAMPLING_FREQUENCY;
//		OutParams.Volume = AUDIO_VOLUME_OUTPUT;
//  BSP_AUDIO_OUT_Init(BSP_AUDIO_OUT_INSTANCE, &OutParams);
//  BSP_AUDIO_OUT_SetVolume(BSP_AUDIO_OUT_INSTANCE, OutParams.Volume);
//  BSP_LED_On(LED1);

//  STLBLE_PRINTF("Welcome to the AudioLoop App!\r\n\n");

//  while (1)
//  {      /* Go to Sleep, everything is done in the interrupt service routines */
//      __WFI();
//  }

//	int16_t audio_buffer[16000]=WAVE_DATA;
  	int8_t audio_buffer[3920];
	static tflite::MicroErrorReporter micro_error_reporter;
	error_reporter = &micro_error_reporter;
	model = tflite::GetModel(kwt);

//	if(model->version() != TFLITE_SCHEMA_VERSION)
//	{
//		STLBLE_PRINTF("Model provided is schema version %d not equal to supported version %d.",
//							 model->version(), TFLITE_SCHEMA_VERSION);
//	}
//	static tflite::AllOpsResolver resolver;
	static tflite::MicroMutableOpResolver<9> micro_op_resolver;
	micro_op_resolver.AddFullyConnected();
	micro_op_resolver.AddReshape();
	micro_op_resolver.AddConcatenation();
	micro_op_resolver.AddSoftmax();
	micro_op_resolver.AddL2Normalization();
	micro_op_resolver.AddTranspose();
	micro_op_resolver.AddMul();
	micro_op_resolver.AddAdd();
	micro_op_resolver.AddStridedSlice();

	static tflite::MicroInterpreter static_interpreter(model, micro_op_resolver, tensor_arena, kTensorArenaSize, error_reporter);
	interpreter = &static_interpreter;
	TfLiteStatus allocate_status = interpreter->AllocateTensors();
//	if (allocate_status != kTfLiteOk)
//	{
//		STLBLE_PRINTF("AllocateTensors() failed");
//	}

	model_input = interpreter->input(0);
	model_output = interpreter->output(0);
//	STLBLE_PRINTF("%d", model_input->dims->data[0]);
//	STLBLE_PRINTF("%d", model_input->dims->data[1]);
//	STLBLE_PRINTF("%d", model_input->dims->data[2]);
//	STLBLE_PRINTF("%d", model_input->dims->data[3]);
//	STLBLE_PRINTF("%d", model_input->type);

	uint32_t start, elapsed;

	while (1)
	{
//	 Calculate an x value to feed into the model
//		STLBLE_PRINTF("Running Inference!\n");
		model_input->data.int8 = audio_buffer;

		// Run inference, and report any error
	    start = HAL_GetTick();
		TfLiteStatus invoke_status = interpreter->Invoke();
		elapsed = HAL_GetTick() - start;
//		if (invoke_status != kTfLiteOk)
//		{
//			STLBLE_PRINTF("Invoke failed\n");
//		}

		// Read the predicted y value from the model's output tensor
//			float y_val = model_output->data.f[0];

		// Do something with the results
//			handle_output(error_reporter, x_val, y_val);
	}

}
/**
* @brief  Half Transfer user callback, called by BSP functions.
* @param  None
* @retval None
*/
//void BSP_AUDIO_IN_HalfTransfer_CallBack(uint32_t Instance)
//{
//	AudioProcess();
//}
/*
* @brief  Transfer Complete user callback, called by BSP functions.
* @param  None
* @retval None*/
//void BSP_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
//{
//	AudioProcess();
//}
/**
* @brief  User function that is called when 1 ms of PDM data is available.
* 		  In this application only PDM to PCM conversion and USB streaming
*                  is performed.
* 		  User can add his own code here to perform some DSP or audio analysis.
* @param  none
* @retval None
*/
//void AudioProcess(void)
//{
  /*for L4 PDM to PCM conversion is performed in hardware by DFSDM peripheral*/
//  static uint32_t IndexOut = 0;
//  static uint32_t AudioOutActive = 0;
//  uint32_t indexIn;
//  //Send_Audio_to_USB((int16_t *)PCM_Buffer, AUDIO_SAMPLING_FREQUENCY/1000*AUDIO_CHANNELS);
//
//  for(indexIn=0;indexIn<AUDIO_IN_BUF_LEN;indexIn++)
//  {
//    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
//    audio_out_buffer[IndexOut++] = PCM_Buffer[indexIn];
//  }
//
//  memcpy(Fill_Buffer + index_buff_fill, PCM_Buffer, sizeof(int16_t) * 16);
//  index_buff_fill += 16;
//
//  if(!AudioOutActive && IndexOut==AUDIO_OUT_BUF_LEN/2)
//  {
//    BSP_AUDIO_OUT_Play(BSP_AUDIO_OUT_INSTANCE,(uint8_t*)audio_out_buffer, AUDIO_OUT_BUF_LEN);
//    AudioOutActive=1;
//  }
//  if(IndexOut==AUDIO_OUT_BUF_LEN)
//  {
//    IndexOut=0;
//  }
//
//  AudioProcessSensing();
//}

//void AudioProcessSensing(void)
//{
//
//   //Create a 40ms (640 samples) window every 20ms (320 samples)
//   //Audio Feature Extraction is ran every 20ms on a 40 ms window (50% overlap)
//   if (index_buff_fill == FILL_BUFFER_SIZE) {
//	   //Copy Fill Buffer in Proc Buffer
//       for (int16_t i = 0; i < FILL_BUFFER_SIZE; i++)
//       {
//         Proc_Buffer_f[i] = Fill_Buffer[i];
//       }
//
//    //Left shift Fill Buffer by 320 samples
//    memmove(Fill_Buffer, Fill_Buffer + (FILL_BUFFER_SIZE / 2), sizeof(int16_t) * (FILL_BUFFER_SIZE / 2));
//    index_buff_fill = (FILL_BUFFER_SIZE / 2);
//
//    start = HAL_GetTick();
//
//    kws->extract_features();
//
//    stop = HAL_GetTick();
//	total+= stop-start;
//
//    k++;
//    if(k == 49)
//    {
//
//    	run_kws();
//    	elapsed = total + (HAL_GetTick()-stop);
//      	STLBLE_PRINTF("\n\rtime taken=%d\r\n",elapsed);
//    	STLBLE_PRINTF("\n\rInterrupt raised %d times\n\n\r",c);
//    	k = 0;
//    	start = 0;
//    	total = 0;
//    }
//   }
//}
//
void run_kws()
{

  //STLBLE_PRINTF("--");
  kws->classify();
//  STLBLE_PRINTF("Input ")
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
//void HAL_Delay(__IO uint32_t Delay)
//{
//  uint32_t tickstart = 0;
//  tickstart = HAL_GetTick();
//  while((HAL_GetTick() - tickstart) < Delay)
//  {
//    __WFI();
//  }
//}


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
