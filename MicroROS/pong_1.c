/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE BEGIN Includes */

#include "usart.h"
#include "gpio.h"
#include "dma.h"
#include "adc.h"
#include "can.h"
#include "dac.h"

#include "stdbool.h"

#include <rcl/rcl.h>
#include <rcl/error_handling.h>
#include <rclc/rclc.h>
#include <rclc/executor.h>
#include <uxr/client/transport.h>
#include <rmw_microxrcedds_c/config.h>
#include <rmw_microros/rmw_microros.h>
#include <rosidl_runtime_c/string.h>

#include <time.h>
#include <math.h>

#include <std_msgs/msg/int32.h>
#include <std_msgs/msg/u_int32.h>
#include <sensor_msgs/msg/nav_sat_fix.h>
#include <std_msgs/msg/u_int16_multi_array.h>
#include <std_msgs/msg/u_int8_multi_array.h>
#include <std_msgs/msg/float32_multi_array.h>
#include <std_msgs/msg/string.h>
#include <sensor_msgs/msg/imu.h>
#include <sensor_msgs/msg/nav_sat_fix.h>
#include <sensor_msgs/msg/joint_state.h>

#include <std_msgs/msg/float32.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
/* USER CODE BEGIN PTD */

HAL_StatusTypeDef status;

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

std_msgs__msg__UInt32  pong;


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* Subscriber declaration */

rcl_subscription_t ping_sub;

/* Publisher declaration */

rcl_publisher_t pong_pub;

/* ROS timer declaration */

/* Messages declaration */


HAL_StatusTypeDef status;

/* USER CODE END Variables */
/* Definitions for task_ros2 */
osThreadId_t task_ros2Handle;
uint32_t task_ros2Buffer[ 1500 ];
osStaticThreadDef_t task_ros2ControlBlock;
const osThreadAttr_t task_ros2_attributes = {
  .name = "task_ros2",
  .cb_mem = &task_ros2ControlBlock,
  .cb_size = sizeof(task_ros2ControlBlock),
  .stack_mem = &task_ros2Buffer[0],
  .stack_size = sizeof(task_ros2Buffer),
  .priority = (osPriority_t) osPriorityNormal,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */


void onPingCallback(const void * msg);

bool cubemx_transport_open(struct uxrCustomTransport * transport);
bool cubemx_transport_close(struct uxrCustomTransport * transport);
size_t cubemx_transport_write(struct uxrCustomTransport* transport, const uint8_t * buf, size_t len, uint8_t * err);
size_t cubemx_transport_read(struct uxrCustomTransport* transport, uint8_t* buf, size_t len, int timeout, uint8_t* err);

void * microros_allocate(size_t size, void * state);
void microros_deallocate(void * pointer, void * state);
void * microros_reallocate(void * pointer, size_t size, void * state);
void * microros_zero_allocate(size_t number_of_elements, size_t size_of_element, void * state);

/* USER CODE END FunctionPrototypes */


void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

	  txHeader.DLC = 4;
	  txHeader.IDE = CAN_ID_STD; //CAN_ID_EXT
	  txHeader.RTR = CAN_RTR_DATA;
	  txHeader.StdId = 0x2BC;

  /* USER CODE END Init */
  /* Create the mutex(es) */
  /* creation of analog_mutex */
  analog_mutexHandle = osMutexNew(&analog_mutex_attributes);
  HAL_DAC_Start(&hdac, DAC_CHANNEL_1);
  HAL_DAC_Start(&hdac, DAC_CHANNEL_2);
  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of task_ros2 */
  task_ros2Handle = osThreadNew(task_ros2_function, NULL, &task_ros2_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */
}

/* USER CODE BEGIN Header_task_ros2_function */
/**
  * @brief  Function implementing the task_ros2 thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_task_ros2_function */
void task_ros2_function(void *argument)
{
  /* USER CODE BEGIN task_ros2_function */
  /* Infinite loop */
	// micro-ROS configuration
	  rmw_uros_set_custom_transport(
		true,
		(void *) &huart2,
		cubemx_transport_open,
		cubemx_transport_close,
		cubemx_transport_write,
		cubemx_transport_read);

	  rcl_allocator_t freeRTOS_allocator = rcutils_get_zero_initialized_allocator();
	  freeRTOS_allocator.allocate = microros_allocate;
	  freeRTOS_allocator.deallocate = microros_deallocate;
	  freeRTOS_allocator.reallocate = microros_reallocate;
	  freeRTOS_allocator.zero_allocate =  microros_zero_allocate;

	  if (!rcutils_set_default_allocator(&freeRTOS_allocator)) {
		  printf("Error on default allocators (line %d)\n", __LINE__);
	  }

	  rclc_support_t support;
	  rcl_allocator_t allocator;
	  rcl_node_t node;
	  rclc_executor_t executor;
	  rcl_init_options_t init_options;

	  allocator = rcl_get_default_allocator();
	  init_options = rcl_get_zero_initialized_init_options();
	  rcl_init_options_init(&init_options, allocator);

	  // create init_options
	  rclc_support_init_with_options(&support, 0, NULL, &init_options, &allocator);

	  // create node
	   rclc_node_init_default(&node, "pong", "microros", &support);

	  //time sync
	  if( rmw_uros_sync_session(1000) != RMW_RET_OK)
		  printf("Error on time sync (line %d)\n", __LINE__);

	  //create gpio_output_sub
	  ping_sub = rcl_get_zero_initialized_subscription();

	  rclc_subscription_init_best_effort(
			  &ping_sub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, UInt32),
			  "/ping");
              
      rclc_publisher_init_default(
              &pong_pub,
              &node,
              ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, UInt32),
              "/pong");

	  // Create executor
	  rclc_executor_init(&executor, &support.context, 5, &allocator);

	  rclc_executor_add_subscription(&executor, &ping_sub, &receive,
	 	  			  &onPingCallback, ON_NEW_DATA); // ON_NEW_DATA does not work properly

      // Run executor
	  rclc_executor_spin(&executor);

	  /* Infinite loop */
	  for(;;)
	  {
	    osDelay(10);
	  }
  /* USER CODE END task_ros2_function */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* ROS CALLBACKS*/


void onPingCallback(const void * msg){


	const std_msgs__msg__UInt32 *ping_data;

	if (msg != NULL){
		ping_data = (const std_msgs__msg__UInt32 *)msg;

        pong = *ping_data;

		rcl_ret_t ret = rcl_publish(&pong_pub,&pong, NULL);

	}
}
/* USER CODE END Application */
