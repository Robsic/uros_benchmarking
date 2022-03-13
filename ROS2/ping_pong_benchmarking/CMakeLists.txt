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

add_executable(
  ping
  src/ping.cpp
  src/ping_node.cpp
)

target_include_directories(ping PUBLIC include)
ament_target_dependencies(ping rclcpp std_msgs)

add_executable(
  pong_test
  src/pong_test_node.cpp
)

target_include_directories(pong_test PUBLIC include)
ament_target_dependencies(pong_test rclcpp std_msgs)

install(TARGETS ping pong_test
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
