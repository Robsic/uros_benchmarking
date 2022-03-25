source /opt/ros/foxy/setup.bash

cd uros_ws

source install/local_setup.sh

ros2 run micro_ros_setup create_agent_ws.sh
ros2 run micro_ros_setup build_agent.sh
ros2 run micro_ros_agent micro_ros_agent serial -b 115200 --dev /dev/ttyS0

