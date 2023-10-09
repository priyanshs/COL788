#include "stm32l4xx_it.h"
//#include "main.h"
#include "SensorTile_audio.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
extern PCD_HandleTypeDef       hpcd;
extern SAI_HandleTypeDef  hAudioOutSai;
extern TIM_HandleTypeDef TimCCHandle;
extern TIM_HandleTypeDef  TimHandle;
/* Private function prototypes -----------------------------------------------*/
void OTG_FS_IRQHandler(void);

/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M4 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Debug Monitor exception
  * @param  None
  * @retval None
  */
/*void DebugMon_Handler(void)
{
}*/

/**
  * @brief  This function handles SysTick Handler
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
  HAL_IncTick();
  HAL_SYSTICK_IRQHandler();
}

/******************************************************************************/
/*                 STM32L4xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32l4xx.s).                                               */
/******************************************************************************/


/**
  * @brief This function handles DFSDM Left DMAinterrupt request.
  * @param None
  * @retval None
  */
void AUDIO_DFSDM_DMAx_MIC1_IRQHandler(void)
{ 
  HAL_DMA_IRQHandler(&hDmaDfsdm);
}


/**
 * @brief  This function handles SAI DMA interrupt request.
 * @param  None
 * @retval None
*/
void DMA2_Channel3_IRQHandler(void)
{ 
  HAL_DMA_IRQHandler(hAudioOutSai.hdmatx);
}

/**
* @brief  This function handles PPP interrupt request.
* @param  None
* @retval None
*/
void OTG_FS_IRQHandler(void)
{
  HAL_PCD_IRQHandler(&hpcd);
}

void TIM3_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&TimHandle);
}

void TIM1_CC_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&TimCCHandle);
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
