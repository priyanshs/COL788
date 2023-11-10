#include <stdio.h>
#include "tensorflow/lite/micro/debug_log.h"
#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/micro/testing/micro_test.h"
#include "tensorflow/lite/version.h"

#include "model_weights.h"
#include "wavfile.h"
#include "main.h"
#include "kws_ds_cnn.h"

// FROM THE DATALOG APP
#include "cmsis_os.h" // from datalog app
#include "datalog_application.h" // from datalog app

#define DATAQUEUE_SIZE     ((uint32_t)100)

#define DATALOG_CMD_STARTSTOP  (0x00000007)
    
typedef enum
{
  THREAD_1 = 0,
  THREAD_2
} Thread_TypeDef;
  
  
osThreadId GetDataThreadId, WriteDataThreadId;


osPoolId sensorPool_id;
osPoolDef(sensorPool, DATAQUEUE_SIZE, char[5]);
/* LoggingInterface = USB_Datalog  --> Send sensors data via USB */
/* LoggingInterface = SDCARD_Datalog  --> Save sensors data on SDCard (enable with double tap) */
LogInterface_TypeDef LoggingInterface = USB_Datalog;

USBD_HandleTypeDef  USBD_Device;

/* Private function prototypes -----------------------------------------------*/
static void WriteData_Thread(char * argument);

void dataTimer_Callback(void const *arg);
void dataTimerStart(void);
void dataTimerStop(void);

uint32_t  exec;

// END OF THE DATALOG APP FUNCTIONS

#define  ARM_CM_DEMCR      (*(uint32_t *)0xE000EDFC)
#define  ARM_CM_DWT_CTRL   (*(uint32_t *)0xE0001000)
#define  ARM_CM_DWT_CYCCNT (*(uint32_t *)0xE0001004)


KWS_DS_CNN extract_mfcc_from_static_audio(int16_t * audio_buffer){
	KWS_DS_CNN kws(audio_buffer);
	kws.extract_features(); //extract mfcc features
	return kws;
}


void DebugLog(const char *s)
{
//	STLBLE_PRINTF("%s", s);
}


int16_t audio_buffer[16000] = WAVE_DATA;

TF_LITE_MICRO_TESTS_BEGIN

TF_LITE_MICRO_TEST(LoadModelAndPerformInference) {
	KWS_DS_CNN kws = extract_mfcc_from_static_audio(audio_buffer);
	q7_t * m_buff = kws.mfcc_buffer;
// TODO: This should also be removed once confirmed.

	tflite::MicroErrorReporter micro_error_reporter;
	tflite::ErrorReporter* error_reporter = &micro_error_reporter;
	const tflite::Model* model = ::tflite::GetModel(kws_model_weights);
	if (model->version() != TFLITE_SCHEMA_VERSION) {
	  TF_LITE_REPORT_ERROR(error_reporter,
	      "Model provided is schema version %d not equal "
	      "to supported version %d.\n",
	      model->version(), TFLITE_SCHEMA_VERSION);
	}

	static tflite::MicroMutableOpResolver<7> micro_op_resolver;
  	micro_op_resolver.AddConv2D();
  	micro_op_resolver.AddRelu();
  	micro_op_resolver.AddMean();
  	micro_op_resolver.AddMaxPool2D();
  	micro_op_resolver.AddSoftmax();
  	micro_op_resolver.AddFullyConnected();
  	micro_op_resolver.AddDequantize();

    // Create an area of memory to use for input, output, and intermediate arrays.
    // Finding the minimum value for your model may require some trial and error.
  	// This for now is the value that was there in optimized code. My calculation is about 194*1024
  	// (adding all the intermediate outputs)
    constexpr uint32_t kTensorArenaSize = 100 * 1024;
    uint8_t tensor_arena[kTensorArenaSize];
    tflite::MicroInterpreter interpreter(model, micro_op_resolver, tensor_arena,kTensorArenaSize, error_reporter);
    interpreter.AllocateTensors();

    // Obtain a pointer to the model's input tensor
    TfLiteTensor* input = interpreter.input(0);
    // Obtain a pointer to the model's output tensor

	input->data.int8 = kws.mfcc_buffer;

	TfLiteStatus invoke_status = interpreter.Invoke();
	if (invoke_status != kTfLiteOk) {
	  TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");
	}

	TfLiteTensor* output = interpreter.output(0);

	float value = output->data.f[0];



}

TF_LITE_MICRO_TESTS_END


namespace
{


//    tflite::ErrorReporter* error_reporter = nullptr;
//    const tflite::Model* model = nullptr;
//    tflite::MicroInterpreter* interpreter = nullptr;
//    TfLiteTensor* model_input = nullptr;
//    TfLiteTensor* model_output = nullptr;

    // Create an area of memory to use for input, output, and intermediate arrays.
    // Finding the minimum value for your model may require some trial and error.
    constexpr uint32_t kTensorArenaSize = 85 * 1024;
    uint8_t tensor_arena[kTensorArenaSize];
} // namespace


int kws_m_l = kws_model_len; 
const unsigned char * kws_m_w = kws_model_weights;
// THE ABOVE SHOULD BE REMOVED! IT IS ONLY HERE TO MAKE THE COMPILER HAPPY!

USBD_HandleTypeDef hUSBDDevice;
TIM_HandleTypeDef TimCCHandle;

extern USBD_DescriptorsTypeDef VCP_Desc;
extern TIM_HandleTypeDef TimHandle;
extern void CDC_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

//
//int main( void )
//{
//  HAL_Init();
//  SystemClock_Config();
//  HAL_PWREx_EnableVddUSB();
//  USBD_Init(&hUSBDDevice, &VCP_Desc, 0);
//  USBD_RegisterClass(&hUSBDDevice, USBD_CDC_CLASS);
//  USBD_CDC_RegisterInterface(&hUSBDDevice, &USBD_CDC_fops);
//  USBD_Start(&hUSBDDevice);
////  HAL_Delay(5000);
//  printf("adkljasd\n");
//
//  	int8_t audio_buffer[3920];
//	static tflite::MicroMutableOpResolver<9> micro_op_resolver;
//	micro_op_resolver.AddFullyConnected();
//	micro_op_resolver.AddReshape();
//	micro_op_resolver.AddConcatenation();
//	micro_op_resolver.AddSoftmax();
//	micro_op_resolver.AddL2Normalization();
//	micro_op_resolver.AddTranspose();
//	micro_op_resolver.AddMul();
//	micro_op_resolver.AddAdd();
//	micro_op_resolver.AddStridedSlice();
//
//	static tflite::MicroInterpreter static_interpreter(model, micro_op_resolver, tensor_arena, kTensorArenaSize, error_reporter);
//	interpreter = &static_interpreter;
//	TfLiteStatus allocate_status = interpreter->AllocateTensors();
//	model_input = interpreter->input(0);
//	model_output = interpreter->output(0);
//	uint32_t start, elapsed;
//
//	while (1)
//	{
//		model_input->data.int8 = ;
//
//		// Run inference, and report any error
//	    start = HAL_GetTick();
//		TfLiteStatus invoke_status = interpreter->Invoke();
//		elapsed = HAL_GetTick() - start;
//	}
//
//}
//













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
// void run_kws()
// {

// 	kws obj;
// 	obj.init_kws();
// 	obj.classify();
//  //STLBLE_PRINTF("--");
// // kws->classify();
// //  STLBLE_PRINTF("Input ")
// 			  //STLBLE_PRINTF("conv1_wt: %d %d %d\r\n\n", dscnn->conv1_wt[0], dscnn->conv1_wt[1], dscnn->conv1_wt[2559]);
// 			  //STLBLE_PRINTF("conv2_ds_wt: %d %d %d\r\n\n", dscnn->conv2_ds_wt[0], dscnn->conv2_ds_wt[1], dscnn->conv2_ds_wt[575]);
// 			  //STLBLE_PRINTF("conv5_pw_wt: %d %d %d\r\n\n", dscnn->conv5_pw_wt[0], dscnn->conv5_pw_wt[1], dscnn->conv5_pw_wt[4095]);
//  kws->average_predictions();
//  int max_ind = kws->get_top_class(kws->averaged_output);
// // if(kws->averaged_output[max_ind]>detection_threshold*128/100)
// //    {
// ////	  STLBLE_PRINTF("Detected %s (%d%%)\r\n\n",output_class[max_ind],((int)kws->averaged_output[max_ind]*100/128));
// //    }


// }


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


/**
  * @brief  Write data in the queue on file or streaming via USB
  * @param  argument not used
  * @retval None
  */
static void WriteData_Thread(char* argument)
{
  int size;
  char data_s[5];

  for (;;)
  {
      // TODO : WHILE WRITING THIS SHOULD THIS BE IN A INF LOOP??
      // TODO : WHAT IS THE ARGUMENT HERE??
      // TODO : CAN IT JUST BE A SINGLE CALL?
      

          size = sprintf(data_s, argument);
          osPoolFree(sensorPool_id, argument);      // free memory allocated for message
          BSP_LED_Toggle(LED1);
          CDC_Fill_Buffer(( uint8_t * )data_s, size);
        
        
      
    
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

// // Scratchpad!
//
