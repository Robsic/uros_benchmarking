cmake_minimum_required(VERSION 3.5)
project(ping_pong_benchmarking)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

# 1 Topic - Single Threaded Executor
add_executable(
  ping_1_single
  src/single_1_topic/ping.cpp
  src/single_1_topic/ping_node.cpp
)

target_include_directories(ping_1_single PUBLIC include)
ament_target_dependencies(ping_1_single rclcpp std_msgs)

add_executable(
  pong_test_1_single
  src/single_1_topic/pong_test_node.cpp
)

target_include_directories(pong_test_1_single PUBLIC include/single_1_topic)
ament_target_dependencies(pong_test_1_single rclcpp std_msgs)

# 3 Topic - Single Threaded Executor
add_executable(
  ping_3_single
  src/single_3_topic/ping.cpp
  src/single_3_topic/ping_node.cpp
)

target_include_directories(ping_3_single PUBLIC include)
ament_target_dependencies(ping_3_single rclcpp std_msgs)

add_executable(
  pong_test_3_single
  src/single_3_topic/pong_test_node.cpp
)

target_include_directories(pong_test_3_single PUBLIC include/single_3_topic)
ament_target_dependencies(pong_test_3_single rclcpp std_msgs)

# 3 Topic - Multi Threaded Executor
add_executable(
  ping_3_multi
  src/multi_3_topic/ping.cpp
  src/multi_3_topic/ping_node.cpp
)

target_include_directories(ping_3_multi PUBLIC include)
ament_target_dependencies(ping_3_multi rclcpp std_msgs)

add_executable(
  pong_test_3_multi
  src/multi_3_topic/pong_test_node.cpp
)

target_include_directories(pong_test_3_multi PUBLIC include/multi_3_topic)
ament_target_dependencies(pong_test_3_multi rclcpp std_msgs)

install(TARGETS ping_1_single pong_test_1_single ping_3_single pong_test_3_single ping_3_multi pong_test_3_multi
  DESTINATION lib/${PROJECT_NAME}
)

install(
  DIRECTORY include/
  DESTINATION include
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
