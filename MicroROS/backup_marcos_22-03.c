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
#include "tim.h"
#include "stdbool.h"
#include <time.h>
#include <math.h>
#include "stepper.h"

#include <rcl/rcl.h>
#include <rcl/error_handling.h>
#include <rclc/rclc.h>
#include <rclc/executor.h>
#include <uxr/client/transport.h>
#include <rmw_microxrcedds_c/config.h>
#include <rmw_microros/rmw_microros.h>
#include <rosidl_runtime_c/string.h>

#include <std_msgs/msg/u_int8.h>
#include <std_msgs/msg/u_int32.h>
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
#include <nav_msgs/msg/odometry.h>

#include <geometry_msgs/msg/twist.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
/* USER CODE BEGIN PTD */

HAL_StatusTypeDef status;

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/*
 * Verifica a estado da chave do carrinho:
 *  1- desligado;
 *  2- frente;
 *  3 - trás;
 *  4 - Neutro;
 *  Modo de operaçâo:
 *  0 - manual
 *  1 - automatico
 * Check de sensores do carrinho:
 *  1- RBS_02;
 *  2- Encoders;
 *  3 - GPS;------------------------------------ A informação sobre os status do sensor será recebido atráves da comunicação CAN da placa IMU-GPS.
 *  4 - IMU;
 *  5 -
 *  6 -
 * */
std_msgs__msg__UInt8MultiArray  golfinho_check_status_msg;

/*
 * Check de sensores do carrinho:
 *  1- Angulo de esterçamento;
 *  2- aceleração (%);
 *  3- frenagem (%);
 *  4- velocidade linear;
 *  5- velocidade angular roda esquerda;
 *  6- velocidade angular esquerda;
 * */
std_msgs__msg__Float32MultiArray golfinho_motion_info_gpio_output_msg;

// imu data
sensor_msgs__msg__Imu imu_;

// gps data

sensor_msgs__msg__NavSatFix gps_;

// joint state data

sensor_msgs__msg__JointState joint_steering;

// Twist (comand_vel)

geometry_msgs__msg__Twist cmd_vel;

// operation mode

std_msgs__msg__UInt8 operation_mode_;

// odometry

nav_msgs__msg__Odometry odom;

// buffers

uint8_t flg=0; //modo de operação do golfinho manual-0 ; auto-1;
uint8_t flg_ImuGps_Sterr=0; //informa qual topico enviou os dados para a placa principal: CAN IMU_GPS - 0 , STEER - 1;
uint8_t digital_data_input_manual[5]={0,0,0,0,0};
uint16_t analog_data_input_manual[5]={0,0,0,0,0};
uint8_t digital_data_input_auto[5]={0,0,0,0,0};
uint16_t analog_data_input_auto[5]={0,0,0,0,0};

double cmd_vel_buff[2]={0,0}; // buffer


// CAN Variables

CAN_TxHeaderTypeDef txHeader; //CAN Bus Transmit Header
CAN_RxHeaderTypeDef rxHeader; //CAN Bus Receive Header
uint8_t canRX[8] = {0,0,0,0,0,0,0,0};  //CAN Bus Receive Buffer
CAN_FilterTypeDef canfil; //CAN Bus Filter
uint32_t canMailbox; //CAN Bus Mail box variable
uint8_t steer_info;

#define TF_STEPPER_INT 1<<0
#define TF_STEPPER_DATA 1<<1
#define TF_MAIN_ROS_CMD 1<<0

stepper_t stepper;
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */



/* Publisher declaration */

rcl_publisher_t ros2_gpio_input_pub;
rcl_publisher_t ros2_motion_info_pub;
rcl_publisher_t ros2_imu_pub;
rcl_publisher_t ros2_gps_pub;
rcl_publisher_t ros2_joint_steering_pub;

rcl_publisher_t odom_pub;

/* Subscriber declaration */

rcl_subscription_t cmd_vel_sub;

rcl_subscription_t operation_mode_sub;

/* ROS timer declaration */

rcl_timer_t golfinho_check_status_timer;
rcl_timer_t golfinho_motion_info_timer;
rcl_timer_t golfinho_imu_timer;
rcl_timer_t golfinho_gps_timer;
rcl_timer_t golfinho_joint_steering_timer;

rcl_timer_t operation_mode_timer;
rcl_timer_t odom_timer;



HAL_StatusTypeDef status;



/* USER CODE END Variables */
/* Definitions for task_ros2 */
osThreadId_t task_ros2Handle;
uint32_t defaultTaskBuffer[ 2100 ];
osStaticThreadDef_t defaultTaskControlBlock;
const osThreadAttr_t task_ros2_attributes = {
  .name = "task_ros2",
  .cb_mem = &defaultTaskControlBlock,
  .cb_size = sizeof(defaultTaskControlBlock),
  .stack_mem = &defaultTaskBuffer[0],
  .stack_size = sizeof(defaultTaskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for digital_inputs */
osThreadId_t digital_inputsHandle;
const osThreadAttr_t digital_inputs_attributes = {
  .name = "digital_inputs",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for analog_input */
osThreadId_t analog_inputHandle;
const osThreadAttr_t analog_input_attributes = {
  .name = "analog_input",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for auto_man_mod */
osThreadId_t auto_man_modHandle;
const osThreadAttr_t auto_man_mod_attributes = {
  .name = "auto_man_mod",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for task_stepper */
osThreadId_t task_stepperHandle;
const osThreadAttr_t task_stepper_attributes = {
  .name = "task_stepper",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Imu_gps_steer */
osThreadId_t Imu_gps_steerHandle;
const osThreadAttr_t Imu_gps_steer_attributes = {
  .name = "Imu_gps_steer",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

//Publishers

void golfinho_check_status_timer_callback(rcl_timer_t * timer, int64_t last_call_time);
void golfinho_motion_info_timer_callback(rcl_timer_t * timer, int64_t last_call_time);
void golfinho_imu_timer_callback(rcl_timer_t * timer, int64_t last_call_time);
void golfinho_gps_timer_callback(rcl_timer_t * timer, int64_t last_call_time);

void odom_callback(rcl_timer_t * timer, int64_t last_call_time);

//Subscribers

void cmd_vel_callback(const void * msgin);
void operation_mode_callback(const void * msgin);

// Functions used by microros

bool cubemx_transport_open(struct uxrCustomTransport * transport);
bool cubemx_transport_close(struct uxrCustomTransport * transport);
size_t cubemx_transport_write(struct uxrCustomTransport* transport, const uint8_t * buf, size_t len, uint8_t * err);
size_t cubemx_transport_read(struct uxrCustomTransport* transport, uint8_t* buf, size_t len, int timeout, uint8_t* err);

void * microros_allocate(size_t size, void * state);
void microros_deallocate(void * pointer, void * state);
void * microros_reallocate(void * pointer, size_t size, void * state);
void * microros_zero_allocate(size_t number_of_elements, size_t size_of_element, void * state);


void ADC_select_channel_break (void);
void ADC_select_channel_Throttle (void);
void ADC_select_channel_batery_car(void);
void ADC_select_channel_system_batery(void);

uint32_t stepper_interval=65000;
void signal_pos_stepper(uint32_t);
void change_period(void);

/* USER CODE END FunctionPrototypes */

void task_ros2_function(void *argument);
void digital_inputs_task(void *argument);
void analog_input_task(void *argument);
void automatic_manual_mode_Task(void *argument);
void task_stepper_function(void *argument);
void Imu_gps_steer_function(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */
      HAL_TIM_Base_Start_IT(&htim2);
   // CAN configuration transmiter
	  txHeader.DLC = 8;
	  txHeader.IDE = CAN_ID_STD; //CAN_ID_EXT
	  txHeader.RTR = CAN_RTR_DATA;
	  txHeader.StdId = 0x2BC;

   // CAN configuration filter
	  canfil.FilterActivation = CAN_FILTER_ENABLE;
	  canfil.FilterBank = 10;  // which filter bank to use from the assigned ones
	  canfil.FilterFIFOAssignment = CAN_FILTER_FIFO0;
	  canfil.FilterIdHigh =0xFF;
	  canfil.FilterIdLow = 0;
	  canfil.FilterMaskIdHigh = 0x000;
	  canfil.FilterMaskIdLow = 0x0000;
	  canfil.FilterMode = CAN_FILTERMODE_IDMASK;
	  canfil.FilterScale = CAN_FILTERSCALE_32BIT;
	  canfil.SlaveStartFilterBank = 0;  // how many filters to assign to the CAN1 (master can)

	  HAL_CAN_ConfigFilter(&hcan,&canfil);

    // Start Can
	 HAL_CAN_Start(&hcan);
     // Start Callback receive data
	 if (HAL_CAN_ActivateNotification(&hcan, CAN_IT_RX_FIFO0_MSG_PENDING) != HAL_OK)
	 {
		  Error_Handler();
	 }
	 // HAL_TIM_Base_Start_IT(&htim2);

  /* USER CODE END Init */

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

  /* creation of digital_inputs */
  digital_inputsHandle = osThreadNew(digital_inputs_task, NULL, &digital_inputs_attributes);

  /* creation of analog_input */
  analog_inputHandle = osThreadNew(analog_input_task, NULL, &analog_input_attributes);

  /* creation of auto_man_mod */
  auto_man_modHandle = osThreadNew(automatic_manual_mode_Task, NULL, &auto_man_mod_attributes);

  /* creation of task_stepper */
  task_stepperHandle = osThreadNew(task_stepper_function, NULL, &task_stepper_attributes);

  /* creation of Imu_gps_steer */
  Imu_gps_steerHandle = osThreadNew(Imu_gps_steer_function, NULL, &Imu_gps_steer_attributes);

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
	   rclc_node_init_default(&node, "golfinho", "acquisition_system", &support);

	  //time sync
	  if( rmw_uros_sync_session(1000) != RMW_RET_OK)
		  printf("Error on time sync (line %d)\n", __LINE__);

	  // ros2_gpio_input_pub
	  rclc_publisher_init_default(
			  &ros2_gpio_input_pub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, UInt8MultiArray),
			  "/golfinho/diagnostics/status_info");

	  // ros2_motion_info_pub
	  rclc_publisher_init_default(
			  &ros2_motion_info_pub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, Float32MultiArray),
			  "/golfinho/diagnostics/motion_info");

	  // ros2_motion_info_pub
	  rclc_publisher_init_default(
			  &ros2_imu_pub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(sensor_msgs, msg, Imu),
			  "/golfinho/imu");

	  // ros2_gps
	  rclc_publisher_init_default(
			  &ros2_gps_pub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(sensor_msgs, msg, NavSatFix),
			  "/golfinho/gps");

	  // odom_pub
	  rclc_publisher_init_default(
			  &odom_pub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(nav_msgs, msg, Odometry),
			  "/golfinho/odom");

	  //create cmd_vel_sub
	  cmd_vel_sub = rcl_get_zero_initialized_subscription();
      rclc_subscription_init_best_effort(
			  &cmd_vel_sub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(geometry_msgs, msg, Twist),
			  "/golfinho/cmd_vel");

	  //create operation_mode_sub
	  operation_mode_sub = rcl_get_zero_initialized_subscription();
      rclc_subscription_init_best_effort(
			  &operation_mode_sub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, UInt8),
			  "/golfinho/operation_mode");


     // Alocação de memoria das variaveis criadas pelos tipos std_msgs e outros

	  golfinho_check_status_msg.data.capacity = 5;
	  golfinho_check_status_msg.data.size = 5;
	  golfinho_check_status_msg.data.data = (uint8_t*) pvPortMalloc(golfinho_check_status_msg.data.capacity * sizeof(uint8_t));
	  golfinho_check_status_msg.layout.dim.capacity = 5;
	  golfinho_check_status_msg.layout.dim.size = 5;
	  golfinho_check_status_msg.layout.dim.data = (std_msgs__msg__MultiArrayDimension*) pvPortMalloc(golfinho_check_status_msg.layout.dim.capacity * sizeof(std_msgs__msg__MultiArrayDimension));
	 	  for (size_t i =0; i< golfinho_check_status_msg.layout.dim.capacity; i++){
	 		golfinho_check_status_msg.layout.dim.data[i].label.capacity = 7;
	 		golfinho_check_status_msg.layout.dim.data[i].label.size = 7;
	 		golfinho_check_status_msg.layout.dim.data[i].label.data = (char*) pvPortMalloc(golfinho_check_status_msg.layout.dim.data[i].label.capacity * sizeof(char));

	 	  }

	 	  strcpy(golfinho_check_status_msg.layout.dim.data[0].label.data, "reserv");
	 	  strcpy(golfinho_check_status_msg.layout.dim.data[1].label.data, "status");
	 	  strcpy(golfinho_check_status_msg.layout.dim.data[2].label.data, "op_mod");
	 	  strcpy(golfinho_check_status_msg.layout.dim.data[3].label.data, "key_th");
	 	  strcpy(golfinho_check_status_msg.layout.dim.data[4].label.data, "key_br");


		 	golfinho_motion_info_gpio_output_msg.data.capacity = 6;
		 	golfinho_motion_info_gpio_output_msg.data.size = 6;
		 	golfinho_motion_info_gpio_output_msg.data.data = (uint16_t*) pvPortMalloc(golfinho_motion_info_gpio_output_msg.data.capacity * sizeof(uint16_t));
		 	golfinho_motion_info_gpio_output_msg.layout.dim.capacity = 6;
		 	golfinho_motion_info_gpio_output_msg.layout.dim.size = 6;
		 	golfinho_motion_info_gpio_output_msg.layout.dim.data = (std_msgs__msg__MultiArrayDimension*) pvPortMalloc(golfinho_motion_info_gpio_output_msg.layout.dim.capacity * sizeof(std_msgs__msg__MultiArrayDimension));
			 	  for (size_t i =0; i< golfinho_motion_info_gpio_output_msg.layout.dim.capacity; i++){
			 		golfinho_motion_info_gpio_output_msg.layout.dim.data[i].label.capacity = 9;
			 		golfinho_motion_info_gpio_output_msg.layout.dim.data[i].label.size = 9;
			 		golfinho_motion_info_gpio_output_msg.layout.dim.data[i].label.data = (char*) pvPortMalloc(golfinho_motion_info_gpio_output_msg.layout.dim.data[i].label.capacity * sizeof(char));

			 	  }

			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[0].label.data, "reserved");
			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[1].label.data, "steering");
			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[2].label.data, "throttle");
			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[3].label.data, "break");
			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[4].label.data, "bat_car");
			 	  strcpy(golfinho_motion_info_gpio_output_msg.layout.dim.data[5].label.data, "bat_sys");


						int STRING_BUFFER_LEN=10;
	//imu
				    	char imu_buffer[STRING_BUFFER_LEN];
				    	imu_.header.frame_id.data = imu_buffer;
				    	imu_.header.frame_id.capacity = STRING_BUFFER_LEN;
	//gps
				    	char gps_buffer[STRING_BUFFER_LEN];
				    	gps_.header.frame_id.data = gps_buffer;
				    	gps_.header.frame_id.capacity = STRING_BUFFER_LEN;
	//odom
				    	char odom_buffer[STRING_BUFFER_LEN];
				    	odom.header.frame_id.data = odom_buffer;
				    	odom.header.frame_id.capacity = STRING_BUFFER_LEN;

				    	char child_frame_id[15];
				    	odom.child_frame_id.data=child_frame_id;
				    	odom.child_frame_id.capacity=15;



	  // Create a timer
	  rclc_timer_init_default(&golfinho_imu_timer, &support, RCL_MS_TO_NS(100), golfinho_imu_timer_callback);
	  rclc_timer_init_default(&odom_timer, &support, RCL_MS_TO_NS(100), odom_callback);
	  rclc_timer_init_default(&golfinho_motion_info_timer, &support, RCL_MS_TO_NS(250), golfinho_motion_info_timer_callback);
	  rclc_timer_init_default(&golfinho_check_status_timer, &support, RCL_MS_TO_NS(500), golfinho_check_status_timer_callback);
	  rclc_timer_init_default(&golfinho_gps_timer, &support, RCL_MS_TO_NS(1000), golfinho_gps_timer_callback);

	  // Create executor
	  rclc_executor_init(&executor, &support.context,7, &allocator);

//	  rclc_executor_add_subscription(&executor, &cmd_vel_sub, &cmd_vel,
//	 	  			  &cmd_vel_callback, ON_NEW_DATA); // ON_NEW_DATA does not work properly
//      rclc_executor_add_subscription(&executor, &operation_mode_sub, &operation_mode_,
//	 	  			  &operation_mode_callback, ON_NEW_DATA);

	  rclc_executor_add_timer(&executor, &odom_timer);
	  rclc_executor_add_timer(&executor, &golfinho_check_status_timer);
	  rclc_executor_add_timer(&executor, &golfinho_motion_info_timer);
	  rclc_executor_add_timer(&executor, &golfinho_imu_timer);
	  rclc_executor_add_timer(&executor, &golfinho_gps_timer);

      // Run executor
	  rclc_executor_spin(&executor);

	  /* Infinite loop */
	  for(;;) osDelay(10);

  /* USER CODE END task_ros2_function */
}

/* USER CODE BEGIN Header_digital_inputs_task */
/**
* @brief Function implementing the digital_inputs thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_digital_inputs_task */
void digital_inputs_task(void *argument)
{
  /* USER CODE BEGIN digital_inputs_task */
  /* Infinite loop */
	 uint8_t stats[3]={0,0,0};
	  for(;;){

		  // key switch read
		  stats[2]=!(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_6));
		  stats[1]=!(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_15));
		  stats[0]=!(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_14));

		  // break read
		  digital_data_input_manual[4]=!(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_13));
		  // throttle read
		  digital_data_input_manual[3]=!(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_12));


		  if(stats[0] || stats[1] || stats[2]){
			  if(stats[0])
			 	digital_data_input_manual[1]=2;
			  if(stats[1])
			 	digital_data_input_manual[1]=3;
			  if(stats[2])
			    digital_data_input_manual[1]=4;
		  }else
			  digital_data_input_manual[1]=1;

        //steer read
	  if(flg_ImuGps_Sterr)
	      steer_info=canRX[7];

		  osDelay(100);
	  }
  /* USER CODE END digital_inputs_task */
}

/* USER CODE BEGIN Header_analog_input_task */
/**
* @brief Function implementing the analog_input thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_analog_input_task */
void analog_input_task(void *argument)
{
  /* USER CODE BEGIN analog_input_task */
  /* Infinite loop */
  for(;;)
  {
	  // Get ADC value
		  ADC_select_channel_Throttle();
		  HAL_ADC_Start(&hadc1);
		  HAL_ADC_PollForConversion(&hadc1, 10);
		  analog_data_input_manual[3] = HAL_ADC_GetValue(&hadc1);
		  HAL_ADC_Stop(&hadc1);

	      ADC_select_channel_break();
		  HAL_ADC_Start(&hadc1);
		  HAL_ADC_PollForConversion(&hadc1, 10);
		  analog_data_input_manual[2] = HAL_ADC_GetValue(&hadc1);
		  HAL_ADC_Stop(&hadc1);

		  ADC_select_channel_batery_car();
		  HAL_ADC_Start(&hadc1);
		  HAL_ADC_PollForConversion(&hadc1, 10);
		  analog_data_input_manual[4] = HAL_ADC_GetValue(&hadc1);
		  HAL_ADC_Stop(&hadc1);

		  ADC_select_channel_system_batery();
		  HAL_ADC_Start(&hadc1);
		  HAL_ADC_PollForConversion(&hadc1, 10);
		  analog_data_input_manual[5] = HAL_ADC_GetValue(&hadc1);
		  HAL_ADC_Stop(&hadc1);

		  HAL_Delay(50);
  }
  /* USER CODE END analog_input_task */
}

/* USER CODE BEGIN Header_automatic_manual_mode_Task */
/**
* @brief Function implementing the auto_man_mod thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_automatic_manual_mode_Task */
void automatic_manual_mode_Task(void *argument)
{
  /* USER CODE BEGIN automatic_manual_mode_Task */
  /* Infinite loop */
  for(;;){

	  switch(flg){

	     case 0:
     //KEY SWITCH
	    	  if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==3 || digital_data_input_manual[1]==4)
		         HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,GPIO_PIN_RESET);
             else
		         if(digital_data_input_manual[1]==2)
                     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,GPIO_PIN_SET);

     	      if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==2 || digital_data_input_manual[1]==4)
     	         HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,GPIO_PIN_RESET);
     	      else
                 if(digital_data_input_manual[1]==3)
            	      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,GPIO_PIN_SET);

    	     if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==2 || digital_data_input_manual[1]==3)
    		     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,GPIO_PIN_RESET);
    	     else
                 if(digital_data_input_manual[1]==4)
            	      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,GPIO_PIN_SET);

     //THROTTLE

             if(digital_data_input_manual[3]){
            	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,GPIO_PIN_SET);
           	     HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1,DAC_ALIGN_12B_R, analog_data_input_manual[2]);
               }else
            	 if(!digital_data_input_manual[3])
            		 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,GPIO_PIN_RESET);
     //BREAK
             if(digital_data_input_manual[4]){
               	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,GPIO_PIN_SET);
                 HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2,DAC_ALIGN_12B_R, analog_data_input_manual[3]);
            	}else
            	   if(!digital_data_input_manual[4])
            		   HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,GPIO_PIN_RESET);

		  break;

	  case 1:

      //KEY SWITCH
	    	  if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==3 || digital_data_input_manual[1]==4)
		         HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,GPIO_PIN_RESET);
             else
		         if(digital_data_input_manual[1]==2)
                     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,GPIO_PIN_SET);

     	      if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==2 || digital_data_input_manual[1]==4)
     	         HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,GPIO_PIN_RESET);
     	      else
                 if(digital_data_input_manual[1]==3)
            	      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,GPIO_PIN_SET);

    	     if(digital_data_input_manual[1]==1 || digital_data_input_manual[1]==2 || digital_data_input_manual[1]==3)
    		     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,GPIO_PIN_RESET);
    	     else
                 if(digital_data_input_manual[1]==4)
            	      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,GPIO_PIN_SET);

	  // THROTTLE
		             if(digital_data_input_auto[3]){
		            	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,GPIO_PIN_SET);
		                 HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1,DAC_ALIGN_12B_R, analog_data_input_auto[2]);
	  	  	  	  	  }else
		            	 if(!digital_data_input_auto[3])
		                	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,GPIO_PIN_RESET);
      //BREAK
		             if(digital_data_input_auto[4]){
		            	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,GPIO_PIN_SET);
		                 HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2,DAC_ALIGN_12B_R, analog_data_input_auto[3]);
	  	  	  	  	  }else
	  	  	  	  		 if(!digital_data_input_auto[4])
		                	 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,GPIO_PIN_RESET);
	     break;

	  }
     osDelay(100);
  }
  /* USER CODE END automatic_manual_mode_Task */
}

/* USER CODE BEGIN Header_task_stepper_function */
/**
* @brief Function implementing the task_stepper thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_task_stepper_function */
void task_stepper_function(void *argument)
{
  /* USER CODE BEGIN task_stepper_function */
	uint32_t flags;
	stepperInit(&stepper);

	stepperSetSpeed(&stepper, 1);
	__HAL_TIM_SET_AUTORELOAD(&htim3, stepper.stepInverval);
	stepperSetAcceleration(&stepper, 48*2*4);
	// Motor = 7.5°/Step, 1/4 Microstepping, speed =  2rev/s,
	stepperSetMaxSpeed(&stepper, 2*4*48);
	stepperSetAbsoluteTartePosition(&stepper, 0);
	__HAL_TIM_SET_AUTORELOAD(&htim3, stepper.stepInverval);
	 HAL_TIM_PWM_Start_IT(&htim3, TIM_CHANNEL_1);

  /* Infinite loop */
  for(;;)
  {
	  flags = osThreadFlagsWait((TF_STEPPER_INT | TF_STEPPER_DATA), osFlagsWaitAny, osWaitForever);

	  if ((flags & TF_STEPPER_INT) == TF_STEPPER_INT){
		  stepperComputeNewSpeed(&stepper);
		     signal_pos_stepper(stepper.stepInverval);
		  __HAL_TIM_SET_AUTORELOAD(&htim3, stepper.stepInverval);
	  }

	  if ((flags & TF_STEPPER_DATA) == TF_STEPPER_DATA){
		  stepperComputeNewSpeed(&stepper);
		     signal_pos_stepper(stepper.stepInverval);
		  __HAL_TIM_SET_AUTORELOAD(&htim3, stepper.stepInverval);
	  }
  }
  /* USER CODE END task_stepper_function */
}

/* USER CODE BEGIN Header_Imu_gps_steer_function */
/**
* @brief Function implementing the Imu_gps_steer thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_Imu_gps_steer_function */
void Imu_gps_steer_function(void *argument)
{
  /* USER CODE BEGIN Imu_gps_steer_function */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END Imu_gps_steer_function */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */



									    					/* ROS CALLBACKS*/


void cmd_vel_callback(const void * msgin){

	const geometry_msgs__msg__Twist *cmd_vel_msg;

	if (msgin != NULL){
		 cmd_vel_msg = (const geometry_msgs__msg__Twist *)msgin;
         cmd_vel_buff[0]=cmd_vel_msg->linear.x;  // velocidade linear
         cmd_vel_buff[1]=cmd_vel_msg->angular.z; // posição angular
         stepper.targetPos=cmd_vel_buff[1];
		  osThreadFlagsSet(task_stepperHandle, TF_STEPPER_DATA);
/*
		 digital_data_input_auto[1]= receive_command_ros_msg->data.data[0]; // key_switch
		 digital_data_input_auto[2]= receive_command_ros_msg->data.data[1]; // operation_modo
	     flg=digital_data_input_auto[2];
		 digital_data_input_auto[3]= receive_command_ros_msg->data.data[2];  // throttle_ switch
	     digital_data_input_auto[4]= receive_command_ros_msg->data.data[3];  // break_ switch

     	 analog_data_input_auto[2]= receive_command_ros_msg->data.data[4]; // throttle analog
	     analog_data_input_auto[3]= receive_command_ros_msg->data.data[5]; // break analog
*/
	}
}


void operation_mode_callback(const void * msgin){
	const std_msgs__msg__UInt8 *operation_mode_msg;
	if (msgin != NULL){
		operation_mode_msg = (const std_msgs__msg__UInt8 *)msgin;
         flg=operation_mode_msg->data;  // flag - operation mode , go to automatic_manual_mode
		 digital_data_input_auto[2]=flg;    // go to check_status
	}
}


void golfinho_imu_timer_callback(rcl_timer_t * timer, int64_t last_call_time)
{
	int device_id=1234;
	int seq_no=10;

	(void) last_call_time;

	if (timer != NULL) {

		sprintf(imu_.header.frame_id.data, "%d_%d", seq_no, device_id);
		imu_.header.frame_id.size = strlen(imu_.header.frame_id.data);


		if(!flg_ImuGps_Sterr){
		  imu_.angular_velocity.x=canRX[0];
		  imu_.angular_velocity.y=canRX[1];
		  imu_.angular_velocity.z=canRX[2];
		  imu_.linear_acceleration.x=canRX[3];
		  imu_.linear_acceleration.y=canRX[4];
		  imu_.linear_acceleration.z=canRX[5];
		}

		// Fill the message timestamp
		struct timespec ts;
		clock_gettime(CLOCK_REALTIME, &ts);
		imu_.header.stamp.sec = ts.tv_sec;
		imu_.header.stamp.nanosec = ts.tv_nsec;

		rcl_ret_t ret = rcl_publish(&ros2_imu_pub,&imu_, NULL);

		if (ret != RCL_RET_OK)
		{
		  printf("Error publishing gpio inputs (line %d)\n", __LINE__);
		}
    }
}



void golfinho_gps_timer_callback(rcl_timer_t * timer, int64_t last_call_time)
{
	int device_id=1234;
	int seq_no=11;

	(void) last_call_time;

	if (timer != NULL) {

		sprintf(gps_.header.frame_id.data, "%d_%d", seq_no, device_id);
		gps_.header.frame_id.size = strlen(gps_.header.frame_id.data);


		if(!flg_ImuGps_Sterr){
		  gps_.altitude=canRX[5];
		  gps_.latitude=canRX[6];
		  gps_.longitude=canRX[7];
		}
		// Fill the message timestamp
		struct timespec ts;
		clock_gettime(CLOCK_REALTIME, &ts);
		gps_.header.stamp.sec = ts.tv_sec;
		gps_.header.stamp.nanosec = ts.tv_nsec;

		rcl_ret_t ret = rcl_publish(&ros2_gps_pub,&gps_, NULL);

		if (ret != RCL_RET_OK)
		{
		  printf("Error publishing gpio inputs (line %d)\n", __LINE__);
		}
   }
}

void odom_callback(rcl_timer_t * timer, int64_t last_call_time)
{
	int device_id=4321;
	int seq_no=15;

	(void) last_call_time;

	if (timer != NULL) {

		sprintf(odom.header.frame_id.data, "%d_%d", seq_no, device_id);
		odom.header.frame_id.size = strlen(odom.header.frame_id.data);

		sprintf(odom.child_frame_id.data, "%d_%d", seq_no, device_id);
		odom.child_frame_id.size = strlen(odom.child_frame_id.data);

		// Fill the message timestamp
		struct timespec ts;
		clock_gettime(CLOCK_REALTIME, &ts);
		odom.header.stamp.sec = ts.tv_sec;
		odom.header.stamp.nanosec = ts.tv_nsec;

		rcl_ret_t ret = rcl_publish(&odom_pub,&odom, NULL);

		if (ret != RCL_RET_OK)
		{
		  printf("Error publishing gpio inputs (line %d)\n", __LINE__);
		}
   }
}


void golfinho_check_status_timer_callback(rcl_timer_t * timer, int64_t last_call_time) // Envia os dados de estados do carrihno para o ros2
{               // status dos dois modos de operação
	if(flg){
				golfinho_check_status_msg.data.data[0]=digital_data_input_manual[0];
				golfinho_check_status_msg.data.data[1]=digital_data_input_manual[1];//key_switch
			    golfinho_check_status_msg.data.data[2]=digital_data_input_auto[2];  //op_mode
			    golfinho_check_status_msg.data.data[3]=digital_data_input_auto[3];  //key_throttle
				golfinho_check_status_msg.data.data[4]=digital_data_input_auto[4];  //key_break
			}else {
				golfinho_check_status_msg.data.data[0]=digital_data_input_manual[0];
				golfinho_check_status_msg.data.data[1]=digital_data_input_manual[1]; // key_switch
			    golfinho_check_status_msg.data.data[2]=digital_data_input_auto[2];   //op_mode
			    golfinho_check_status_msg.data.data[3]=digital_data_input_manual[3]; //key_throttle
			    golfinho_check_status_msg.data.data[4]=digital_data_input_manual[4]; //key_break
    }
		// Publish the message
		rcl_ret_t ret = rcl_publish(&ros2_gpio_input_pub,&golfinho_check_status_msg, NULL);
		if (ret != RCL_RET_OK){
		  printf("Error publishing gpio inputs (line %d)\n", __LINE__);
		}
}



void golfinho_motion_info_timer_callback(rcl_timer_t * timer, int64_t last_call_time)
{
	if(flg){ // status dos dois modos de operação

		       golfinho_motion_info_gpio_output_msg.data.data[1]=steer_info; // steer

		      if(digital_data_input_auto[3]) //acelerador
		         golfinho_motion_info_gpio_output_msg.data.data[2]=analog_data_input_auto[2]*100/4096;
		      else
		         golfinho_motion_info_gpio_output_msg.data.data[2]=0;

		      if(digital_data_input_auto[4]) //break
                 golfinho_motion_info_gpio_output_msg.data.data[3]=analog_data_input_auto[3]*100/4096;
	    	  else
	        	 golfinho_motion_info_gpio_output_msg.data.data[3]=0;

	        	golfinho_motion_info_gpio_output_msg.data.data[4]=analog_data_input_manual[4]*100/4096; // batery car
	         	golfinho_motion_info_gpio_output_msg.data.data[5]=analog_data_input_manual[5]*100/4096; // batery system

			   }else {

				       golfinho_motion_info_gpio_output_msg.data.data[1]=steer_info; // steer

                       if(digital_data_input_manual[3]) //acelerador
			             golfinho_motion_info_gpio_output_msg.data.data[2]=analog_data_input_manual[2]*100/4096;
				       else
			             golfinho_motion_info_gpio_output_msg.data.data[2]=0;

			           if(digital_data_input_manual[4]) //freio
			    	     golfinho_motion_info_gpio_output_msg.data.data[3]=analog_data_input_manual[3]*100/4096;
			           else
			    	     golfinho_motion_info_gpio_output_msg.data.data[3]=0;

			        	golfinho_motion_info_gpio_output_msg.data.data[4]=analog_data_input_manual[4]*100/4096; // batery car
				        golfinho_motion_info_gpio_output_msg.data.data[5]=analog_data_input_manual[5]*100/4096; // batery system
   	}
		// Publish the message
		rcl_ret_t ret = rcl_publish(&ros2_motion_info_pub,&golfinho_motion_info_gpio_output_msg, NULL);
		if (ret != RCL_RET_OK){
		  printf("Error publishing gpio inputs (line %d)\n", __LINE__);
		}
}




// As funções ADC alteram o canal do qual conecta o terminal analógico ao registrador que armazena a informação.

void ADC_select_channel_break (void)
{
	ADC_ChannelConfTypeDef sConfig = {0};
	  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
	  */
	  sConfig.Channel = ADC_CHANNEL_8;
	  sConfig.Rank = ADC_REGULAR_RANK_1;
	  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
	  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

void ADC_select_channel_Throttle (void)
{
	ADC_ChannelConfTypeDef sConfig = {0};
	  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
	  */
	  sConfig.Channel = ADC_CHANNEL_9;
	  sConfig.Rank = ADC_REGULAR_RANK_1;
	  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

void ADC_select_channel_batery_car(void)
{
	ADC_ChannelConfTypeDef sConfig = {0};
	  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
	  */
	  sConfig.Channel = ADC_CHANNEL_6;
	  sConfig.Rank = ADC_REGULAR_RANK_1;
	  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

void ADC_select_channel_system_batery(void)
{
	ADC_ChannelConfTypeDef sConfig = {0};
	  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
	  */
	  sConfig.Channel = ADC_CHANNEL_7;
	  sConfig.Rank = ADC_REGULAR_RANK_1;
	  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan1)
{
  if (HAL_CAN_GetRxMessage(hcan1, CAN_RX_FIFO0, &rxHeader, canRX) != HAL_OK)
  {
    Error_Handler();
  }
     // Ao receber dados de um dispositivo conectado a rede, a "flag_no" informa qual dispositivo enviou os dados que se encontra no buffer canRX onde será
	 // direcionado para a callback associada ao nivel lógico da flag.
  if(rxHeader.StdId == 171)
 	   flg_ImuGps_Sterr=1;

   if(rxHeader.StdId == 0)
       flg_ImuGps_Sterr=0;
}


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1) {
    HAL_IncTick();
  }

  if (htim->Instance == TIM2) {
	  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
	   for(int i=0;i<999;i++);
	   HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

uint32_t stepper_interval;

void signal_pos_stepper(uint32_t pos_){
	stepper_interval=pos_;
	htim2.Instance->ARR=stepper_interval;
	change_period();
}


void change_period(void)
{
  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 36000;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = stepper_interval;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim){
	if (htim->Instance == TIM3){
		if (stepper.direction == DIRECTION_CW) {
			stepper.currentPos++;
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_14, GPIO_PIN_SET);
		} else {
			stepper.currentPos--;
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_14, GPIO_PIN_RESET);
		}
		osThreadFlagsSet(task_stepperHandle, TF_STEPPER_INT);

	}
}

/* USER CODE END Application */


