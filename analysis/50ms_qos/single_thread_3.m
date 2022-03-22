% Single Thread 3 topic analysis

close all, clear all, clc

% 0.3 ms busy loop
p1_0_3_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\1\pingpong_latency_1.txt")/10e9; 
p1_0_3_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\2\pingpong_latency_1.txt")/10e9; 
p1_0_3_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\3\pingpong_latency_1.txt")/10e9; 
p1_0_3_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\4\pingpong_latency_1.txt")/10e9; 
p1_0_3_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\5\pingpong_latency_1.txt")/10e9; 
p1_0_3_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\6\pingpong_latency_1.txt")/10e9; 
p1_0_3_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\7\pingpong_latency_1.txt")/10e9; 
p1_0_3_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\8\pingpong_latency_1.txt")/10e9; 
p1_0_3_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\9\pingpong_latency_1.txt")/10e9; 
p1_0_3_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\10\pingpong_latency_1.txt")/10e9; 
p1_0_3_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\11\pingpong_latency_1.txt")/10e9; 
p1_0_3_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\12\pingpong_latency_1.txt")/10e9; 
p1_0_3_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\13\pingpong_latency_1.txt")/10e9; 
p1_0_3_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\14\pingpong_latency_1.txt")/10e9; 
p1_0_3_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\15\pingpong_latency_1.txt")/10e9; 
p1_0_3_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\16\pingpong_latency_1.txt")/10e9; 
p1_0_3_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\17\pingpong_latency_1.txt")/10e9; 
p1_0_3_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\18\pingpong_latency_1.txt")/10e9; 
p1_0_3_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\19\pingpong_latency_1.txt")/10e9; 
p1_0_3_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\20\pingpong_latency_1.txt")/10e9; 
p1_0_3_1_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\1\pingpong_latency_2.txt")/10e9; 
p1_0_3_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\2\pingpong_latency_2.txt")/10e9; 
p1_0_3_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\3\pingpong_latency_2.txt")/10e9; 
p1_0_3_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\4\pingpong_latency_2.txt")/10e9; 
p1_0_3_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\5\pingpong_latency_2.txt")/10e9; 
p1_0_3_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\6\pingpong_latency_2.txt")/10e9; 
p1_0_3_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\7\pingpong_latency_2.txt")/10e9; 
p1_0_3_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\8\pingpong_latency_2.txt")/10e9; 
p1_0_3_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\9\pingpong_latency_2.txt")/10e9; 
p1_0_3_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\10\pingpong_latency_2.txt")/10e9; 
p1_0_3_11_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\11\pingpong_latency_2.txt")/10e9; 
p1_0_3_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\12\pingpong_latency_2.txt")/10e9; 
p1_0_3_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\13\pingpong_latency_2.txt")/10e9; 
p1_0_3_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\14\pingpong_latency_2.txt")/10e9; 
p1_0_3_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\15\pingpong_latency_2.txt")/10e9; 
p1_0_3_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\16\pingpong_latency_2.txt")/10e9; 
p1_0_3_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\17\pingpong_latency_2.txt")/10e9; 
p1_0_3_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\18\pingpong_latency_2.txt")/10e9; 
p1_0_3_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\19\pingpong_latency_2.txt")/10e9; 
p1_0_3_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\20\pingpong_latency_2.txt")/10e9; 
p1_0_3_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\1\pingpong_latency_3.txt")/10e9; 
p1_0_3_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\2\pingpong_latency_3.txt")/10e9; 
p1_0_3_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\3\pingpong_latency_3.txt")/10e9; 
p1_0_3_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\4\pingpong_latency_3.txt")/10e9; 
p1_0_3_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\5\pingpong_latency_3.txt")/10e9; 
p1_0_3_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\6\pingpong_latency_3.txt")/10e9; 
p1_0_3_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\7\pingpong_latency_3.txt")/10e9; 
p1_0_3_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\8\pingpong_latency_3.txt")/10e9; 
p1_0_3_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\9\pingpong_latency_3.txt")/10e9; 
p1_0_3_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\10\pingpong_latency_3.txt")/10e9; 
p1_0_3_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\11\pingpong_latency_3.txt")/10e9; 
p1_0_3_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\12\pingpong_latency_3.txt")/10e9; 
p1_0_3_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\13\pingpong_latency_3.txt")/10e9; 
p1_0_3_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\14\pingpong_latency_3.txt")/10e9; 
p1_0_3_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\15\pingpong_latency_3.txt")/10e9; 
p1_0_3_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\16\pingpong_latency_3.txt")/10e9; 
p1_0_3_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\17\pingpong_latency_3.txt")/10e9; 
p1_0_3_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\18\pingpong_latency_3.txt")/10e9; 
p1_0_3_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\19\pingpong_latency_3.txt")/10e9; 
p1_0_3_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.3ms\20\pingpong_latency_3.txt")/10e9; 

latency_0_3_avg_1 = mean([mean(p1_0_3_1_1) mean(p1_0_3_2_1) mean(p1_0_3_3_1) mean(p1_0_3_4_1) mean(p1_0_3_5_1) mean(p1_0_3_6_1) mean(p1_0_3_7_1) mean(p1_0_3_8_1) mean(p1_0_3_9_1) mean(p1_0_3_10_1) mean(p1_0_3_11_1) mean(p1_0_3_12_1) mean(p1_0_3_13_1) mean(p1_0_3_14_1) mean(p1_0_3_15_1) mean(p1_0_3_16_1) mean(p1_0_3_17_1) mean(p1_0_3_18_1) mean(p1_0_3_19_1) mean(p1_0_3_20_1)])
latency_0_3_std_1 = std([mean(p1_0_3_1_1) mean(p1_0_3_2_1) mean(p1_0_3_3_1) mean(p1_0_3_4_1) mean(p1_0_3_5_1) mean(p1_0_3_6_1) mean(p1_0_3_7_1) mean(p1_0_3_8_1) mean(p1_0_3_9_1) mean(p1_0_3_10_1) mean(p1_0_3_11_1) mean(p1_0_3_12_1) mean(p1_0_3_13_1) mean(p1_0_3_14_1) mean(p1_0_3_15_1) mean(p1_0_3_16_1) mean(p1_0_3_17_1) mean(p1_0_3_18_1) mean(p1_0_3_19_1) mean(p1_0_3_20_1)])
tl_0_3_avg_1 = mean([200-size(p1_0_3_1_1,1) 200-size(p1_0_3_2_1,1) 200-size(p1_0_3_3_1,1) 200-size(p1_0_3_4_1,1) 200-size(p1_0_3_5_1,1) 200-size(p1_0_3_6_1,1) 200-size(p1_0_3_7_1,1) 200-size(p1_0_3_8_1,1) 200-size(p1_0_3_9_1,1) 200-size(p1_0_3_10_1,1) 200-size(p1_0_3_11_1,1) 200-size(p1_0_3_12_1,1) 200-size(p1_0_3_13_1,1) 200-size(p1_0_3_14_1,1) 200-size(p1_0_3_15_1,1) 200-size(p1_0_3_16_1,1) 200-size(p1_0_3_17_1,1) 200-size(p1_0_3_18_1,1) 200-size(p1_0_3_19_1,1) 200-size(p1_0_3_20_1,1)]) 
latency_0_3_avg_2 = mean([mean(p1_0_3_1_2) mean(p1_0_3_2_2) mean(p1_0_3_3_2) mean(p1_0_3_4_2) mean(p1_0_3_5_2) mean(p1_0_3_6_2) mean(p1_0_3_7_2) mean(p1_0_3_8_2) mean(p1_0_3_9_2) mean(p1_0_3_10_2) mean(p1_0_3_11_2) mean(p1_0_3_12_2) mean(p1_0_3_13_2) mean(p1_0_3_14_2) mean(p1_0_3_15_2) mean(p1_0_3_16_2) mean(p1_0_3_17_2) mean(p1_0_3_18_2) mean(p1_0_3_19_2) mean(p1_0_3_20_2)])
latency_0_3_std_2 = std([mean(p1_0_3_1_2) mean(p1_0_3_2_2) mean(p1_0_3_3_2) mean(p1_0_3_4_2) mean(p1_0_3_5_2) mean(p1_0_3_6_2) mean(p1_0_3_7_2) mean(p1_0_3_8_2) mean(p1_0_3_9_2) mean(p1_0_3_10_2) mean(p1_0_3_11_2) mean(p1_0_3_12_2) mean(p1_0_3_13_2) mean(p1_0_3_14_2) mean(p1_0_3_15_2) mean(p1_0_3_16_2) mean(p1_0_3_17_2) mean(p1_0_3_18_2) mean(p1_0_3_19_2) mean(p1_0_3_20_2)])
tl_0_3_avg_2 = mean([200-size(p1_0_3_1_2,1) 200-size(p1_0_3_2_2,1) 200-size(p1_0_3_3_2,1) 200-size(p1_0_3_4_2,1) 200-size(p1_0_3_5_2,1) 200-size(p1_0_3_6_2,1) 200-size(p1_0_3_7_2,1) 200-size(p1_0_3_8_2,1) 200-size(p1_0_3_9_2,1) 200-size(p1_0_3_10_2,1) 200-size(p1_0_3_11_2,1) 200-size(p1_0_3_12_2,1) 200-size(p1_0_3_13_2,1) 200-size(p1_0_3_14_2,1) 200-size(p1_0_3_15_2,1) 200-size(p1_0_3_16_2,1) 200-size(p1_0_3_17_2,1) 200-size(p1_0_3_18_2,1) 200-size(p1_0_3_19_2,1) 200-size(p1_0_3_20_2,1)]) 
latency_0_3_avg_3 = mean([mean(p1_0_3_3_3) mean(p1_0_3_2_3) mean(p1_0_3_3_3) mean(p1_0_3_4_3) mean(p1_0_3_5_3) mean(p1_0_3_6_3) mean(p1_0_3_7_3) mean(p1_0_3_8_3) mean(p1_0_3_9_3) mean(p1_0_3_10_3) mean(p1_0_3_11_3) mean(p1_0_3_12_3) mean(p1_0_3_13_3) mean(p1_0_3_14_3) mean(p1_0_3_15_3) mean(p1_0_3_16_3) mean(p1_0_3_17_3) mean(p1_0_3_18_3) mean(p1_0_3_19_3) mean(p1_0_3_20_3)])
latency_0_3_std_3 = std([mean(p1_0_3_3_3) mean(p1_0_3_2_3) mean(p1_0_3_3_3) mean(p1_0_3_4_3) mean(p1_0_3_5_3) mean(p1_0_3_6_3) mean(p1_0_3_7_3) mean(p1_0_3_8_3) mean(p1_0_3_9_3) mean(p1_0_3_10_3) mean(p1_0_3_11_3) mean(p1_0_3_12_3) mean(p1_0_3_13_3) mean(p1_0_3_14_3) mean(p1_0_3_15_3) mean(p1_0_3_16_3) mean(p1_0_3_17_3) mean(p1_0_3_18_3) mean(p1_0_3_19_3) mean(p1_0_3_20_3)])
tl_0_3_avg_3 = mean([200-size(p1_0_3_1_3,1) 200-size(p1_0_3_2_3,1) 200-size(p1_0_3_3_3,1) 200-size(p1_0_3_4_3,1) 200-size(p1_0_3_5_3,1) 200-size(p1_0_3_6_3,1) 200-size(p1_0_3_7_3,1) 200-size(p1_0_3_8_3,1) 200-size(p1_0_3_9_3,1) 200-size(p1_0_3_10_3,1) 200-size(p1_0_3_11_3,1) 200-size(p1_0_3_12_3,1) 200-size(p1_0_3_13_3,1) 200-size(p1_0_3_14_3,1) 200-size(p1_0_3_15_3,1) 200-size(p1_0_3_16_3,1) 200-size(p1_0_3_17_3,1) 200-size(p1_0_3_18_3,1) 200-size(p1_0_3_19_3,1) 200-size(p1_0_3_20_3,1)]) 

% 0.6 ms busy loop
p1_0_6_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\1\pingpong_latency_1.txt")/10e9; 
p1_0_6_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\2\pingpong_latency_1.txt")/10e9; 
p1_0_6_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\3\pingpong_latency_1.txt")/10e9; 
p1_0_6_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\4\pingpong_latency_1.txt")/10e9; 
p1_0_6_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\5\pingpong_latency_1.txt")/10e9; 
p1_0_6_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\6\pingpong_latency_1.txt")/10e9; 
p1_0_6_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\7\pingpong_latency_1.txt")/10e9; 
p1_0_6_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\8\pingpong_latency_1.txt")/10e9; 
p1_0_6_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\9\pingpong_latency_1.txt")/10e9; 
p1_0_6_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\10\pingpong_latency_1.txt")/10e9; 
p1_0_6_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\11\pingpong_latency_1.txt")/10e9; 
p1_0_6_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\12\pingpong_latency_1.txt")/10e9; 
p1_0_6_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\13\pingpong_latency_1.txt")/10e9; 
p1_0_6_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\14\pingpong_latency_1.txt")/10e9; 
p1_0_6_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\15\pingpong_latency_1.txt")/10e9; 
p1_0_6_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\16\pingpong_latency_1.txt")/10e9; 
p1_0_6_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\17\pingpong_latency_1.txt")/10e9; 
p1_0_6_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\18\pingpong_latency_1.txt")/10e9; 
p1_0_6_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\19\pingpong_latency_1.txt")/10e9; 
p1_0_6_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\20\pingpong_latency_1.txt")/10e9; 
p1_0_6_1_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\1\pingpong_latency_2.txt")/10e9; 
p1_0_6_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\2\pingpong_latency_2.txt")/10e9; 
p1_0_6_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\3\pingpong_latency_2.txt")/10e9; 
p1_0_6_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\4\pingpong_latency_2.txt")/10e9; 
p1_0_6_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\5\pingpong_latency_2.txt")/10e9; 
p1_0_6_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\6\pingpong_latency_2.txt")/10e9; 
p1_0_6_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\7\pingpong_latency_2.txt")/10e9; 
p1_0_6_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\8\pingpong_latency_2.txt")/10e9; 
p1_0_6_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\9\pingpong_latency_2.txt")/10e9; 
p1_0_6_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\10\pingpong_latency_2.txt")/10e9; 
p1_0_6_11_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\11\pingpong_latency_2.txt")/10e9; 
p1_0_6_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\12\pingpong_latency_2.txt")/10e9; 
p1_0_6_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\13\pingpong_latency_2.txt")/10e9; 
p1_0_6_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\14\pingpong_latency_2.txt")/10e9; 
p1_0_6_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\15\pingpong_latency_2.txt")/10e9; 
p1_0_6_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\16\pingpong_latency_2.txt")/10e9; 
p1_0_6_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\17\pingpong_latency_2.txt")/10e9; 
p1_0_6_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\18\pingpong_latency_2.txt")/10e9; 
p1_0_6_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\19\pingpong_latency_2.txt")/10e9; 
p1_0_6_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\20\pingpong_latency_2.txt")/10e9; 
p1_0_6_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\1\pingpong_latency_3.txt")/10e9; 
p1_0_6_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\2\pingpong_latency_3.txt")/10e9; 
p1_0_6_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\3\pingpong_latency_3.txt")/10e9; 
p1_0_6_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\4\pingpong_latency_3.txt")/10e9; 
p1_0_6_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\5\pingpong_latency_3.txt")/10e9; 
p1_0_6_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\6\pingpong_latency_3.txt")/10e9; 
p1_0_6_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\7\pingpong_latency_3.txt")/10e9; 
p1_0_6_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\8\pingpong_latency_3.txt")/10e9; 
p1_0_6_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\9\pingpong_latency_3.txt")/10e9; 
p1_0_6_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\10\pingpong_latency_3.txt")/10e9; 
p1_0_6_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\11\pingpong_latency_3.txt")/10e9; 
p1_0_6_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\12\pingpong_latency_3.txt")/10e9; 
p1_0_6_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\13\pingpong_latency_3.txt")/10e9; 
p1_0_6_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\14\pingpong_latency_3.txt")/10e9; 
p1_0_6_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\15\pingpong_latency_3.txt")/10e9; 
p1_0_6_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\16\pingpong_latency_3.txt")/10e9; 
p1_0_6_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\17\pingpong_latency_3.txt")/10e9; 
p1_0_6_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\18\pingpong_latency_3.txt")/10e9; 
p1_0_6_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\19\pingpong_latency_3.txt")/10e9; 
p1_0_6_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.6ms\20\pingpong_latency_3.txt")/10e9; 

latency_0_6_avg_1 = mean([mean(p1_0_6_1_1) mean(p1_0_6_2_1) mean(p1_0_6_3_1) mean(p1_0_6_4_1) mean(p1_0_6_5_1) mean(p1_0_6_6_1) mean(p1_0_6_7_1) mean(p1_0_6_8_1) mean(p1_0_6_9_1) mean(p1_0_6_10_1) mean(p1_0_6_11_1) mean(p1_0_6_12_1) mean(p1_0_6_13_1) mean(p1_0_6_14_1) mean(p1_0_6_15_1) mean(p1_0_6_16_1) mean(p1_0_6_17_1) mean(p1_0_6_18_1) mean(p1_0_6_19_1) mean(p1_0_6_20_1)])
latency_0_6_std_1 = std([mean(p1_0_6_1_1) mean(p1_0_6_2_1) mean(p1_0_6_3_1) mean(p1_0_6_4_1) mean(p1_0_6_5_1) mean(p1_0_6_6_1) mean(p1_0_6_7_1) mean(p1_0_6_8_1) mean(p1_0_6_9_1) mean(p1_0_6_10_1) mean(p1_0_6_11_1) mean(p1_0_6_12_1) mean(p1_0_6_13_1) mean(p1_0_6_14_1) mean(p1_0_6_15_1) mean(p1_0_6_16_1) mean(p1_0_6_17_1) mean(p1_0_6_18_1) mean(p1_0_6_19_1) mean(p1_0_6_20_1)])
tl_0_6_avg_1 = mean([200-size(p1_0_6_1_1,1) 200-size(p1_0_6_2_1,1) 200-size(p1_0_6_3_1,1) 200-size(p1_0_6_4_1,1) 200-size(p1_0_6_5_1,1) 200-size(p1_0_6_6_1,1) 200-size(p1_0_6_7_1,1) 200-size(p1_0_6_8_1,1) 200-size(p1_0_6_9_1,1) 200-size(p1_0_6_10_1,1) 200-size(p1_0_6_11_1,1) 200-size(p1_0_6_12_1,1) 200-size(p1_0_6_13_1,1) 200-size(p1_0_6_14_1,1) 200-size(p1_0_6_15_1,1) 200-size(p1_0_6_16_1,1) 200-size(p1_0_6_17_1,1) 200-size(p1_0_6_18_1,1) 200-size(p1_0_6_19_1,1) 200-size(p1_0_6_20_1,1)]) 
latency_0_6_avg_2 = mean([mean(p1_0_6_1_2) mean(p1_0_6_2_2) mean(p1_0_6_3_2) mean(p1_0_6_4_2) mean(p1_0_6_5_2) mean(p1_0_6_6_2) mean(p1_0_6_7_2) mean(p1_0_6_8_2) mean(p1_0_6_9_2) mean(p1_0_6_10_2) mean(p1_0_6_11_2) mean(p1_0_6_12_2) mean(p1_0_6_13_2) mean(p1_0_6_14_2) mean(p1_0_6_15_2) mean(p1_0_6_16_2) mean(p1_0_6_17_2) mean(p1_0_6_18_2) mean(p1_0_6_19_2) mean(p1_0_6_20_2)])
latency_0_6_std_2 = std([mean(p1_0_6_1_2) mean(p1_0_6_2_2) mean(p1_0_6_3_2) mean(p1_0_6_4_2) mean(p1_0_6_5_2) mean(p1_0_6_6_2) mean(p1_0_6_7_2) mean(p1_0_6_8_2) mean(p1_0_6_9_2) mean(p1_0_6_10_2) mean(p1_0_6_11_2) mean(p1_0_6_12_2) mean(p1_0_6_13_2) mean(p1_0_6_14_2) mean(p1_0_6_15_2) mean(p1_0_6_16_2) mean(p1_0_6_17_2) mean(p1_0_6_18_2) mean(p1_0_6_19_2) mean(p1_0_6_20_2)])
tl_0_6_avg_2 = mean([200-size(p1_0_6_1_2,1) 200-size(p1_0_6_2_2,1) 200-size(p1_0_6_3_2,1) 200-size(p1_0_6_4_2,1) 200-size(p1_0_6_5_2,1) 200-size(p1_0_6_6_2,1) 200-size(p1_0_6_7_2,1) 200-size(p1_0_6_8_2,1) 200-size(p1_0_6_9_2,1) 200-size(p1_0_6_10_2,1) 200-size(p1_0_6_11_2,1) 200-size(p1_0_6_12_2,1) 200-size(p1_0_6_13_2,1) 200-size(p1_0_6_14_2,1) 200-size(p1_0_6_15_2,1) 200-size(p1_0_6_16_2,1) 200-size(p1_0_6_17_2,1) 200-size(p1_0_6_18_2,1) 200-size(p1_0_6_19_2,1) 200-size(p1_0_6_20_2,1)]) 
latency_0_6_avg_3 = mean([mean(p1_0_6_3_3) mean(p1_0_6_2_3) mean(p1_0_6_3_3) mean(p1_0_6_4_3) mean(p1_0_6_5_3) mean(p1_0_6_6_3) mean(p1_0_6_7_3) mean(p1_0_6_8_3) mean(p1_0_6_9_3) mean(p1_0_6_10_3) mean(p1_0_6_11_3) mean(p1_0_6_12_3) mean(p1_0_6_13_3) mean(p1_0_6_14_3) mean(p1_0_6_15_3) mean(p1_0_6_16_3) mean(p1_0_6_17_3) mean(p1_0_6_18_3) mean(p1_0_6_19_3) mean(p1_0_6_20_3)])
latency_0_6_std_3 = std([mean(p1_0_6_3_3) mean(p1_0_6_2_3) mean(p1_0_6_3_3) mean(p1_0_6_4_3) mean(p1_0_6_5_3) mean(p1_0_6_6_3) mean(p1_0_6_7_3) mean(p1_0_6_8_3) mean(p1_0_6_9_3) mean(p1_0_6_10_3) mean(p1_0_6_11_3) mean(p1_0_6_12_3) mean(p1_0_6_13_3) mean(p1_0_6_14_3) mean(p1_0_6_15_3) mean(p1_0_6_16_3) mean(p1_0_6_17_3) mean(p1_0_6_18_3) mean(p1_0_6_19_3) mean(p1_0_6_20_3)])
tl_0_6_avg_3 = mean([200-size(p1_0_6_1_3,1) 200-size(p1_0_6_2_3,1) 200-size(p1_0_6_3_3,1) 200-size(p1_0_6_4_3,1) 200-size(p1_0_6_5_3,1) 200-size(p1_0_6_6_3,1) 200-size(p1_0_6_7_3,1) 200-size(p1_0_6_8_3,1) 200-size(p1_0_6_9_3,1) 200-size(p1_0_6_10_3,1) 200-size(p1_0_6_11_3,1) 200-size(p1_0_6_12_3,1) 200-size(p1_0_6_13_3,1) 200-size(p1_0_6_14_3,1) 200-size(p1_0_6_15_3,1) 200-size(p1_0_6_16_3,1) 200-size(p1_0_6_17_3,1) 200-size(p1_0_6_18_3,1) 200-size(p1_0_6_19_3,1) 200-size(p1_0_6_20_3,1)]) 

% 0.9ms busy loop
p1_0_9_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\1\pingpong_latency_1.txt")/10e9; 
p1_0_9_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\2\pingpong_latency_1.txt")/10e9; 
p1_0_9_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\3\pingpong_latency_1.txt")/10e9; 
p1_0_9_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\4\pingpong_latency_1.txt")/10e9; 
p1_0_9_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\5\pingpong_latency_1.txt")/10e9; 
p1_0_9_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\6\pingpong_latency_1.txt")/10e9; 
p1_0_9_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\7\pingpong_latency_1.txt")/10e9; 
p1_0_9_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\8\pingpong_latency_1.txt")/10e9; 
p1_0_9_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\9\pingpong_latency_1.txt")/10e9; 
p1_0_9_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\10\pingpong_latency_1.txt")/10e9; 
p1_0_9_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\11\pingpong_latency_1.txt")/10e9; 
p1_0_9_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\12\pingpong_latency_1.txt")/10e9; 
p1_0_9_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\13\pingpong_latency_1.txt")/10e9; 
p1_0_9_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\14\pingpong_latency_1.txt")/10e9; 
p1_0_9_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\15\pingpong_latency_1.txt")/10e9; 
p1_0_9_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\16\pingpong_latency_1.txt")/10e9; 
p1_0_9_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\17\pingpong_latency_1.txt")/10e9; 
p1_0_9_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\18\pingpong_latency_1.txt")/10e9; 
p1_0_9_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\19\pingpong_latency_1.txt")/10e9; 
p1_0_9_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\20\pingpong_latency_1.txt")/10e9; 
p1_0_9_1_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\1\pingpong_latency_2.txt")/10e9; 
p1_0_9_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\2\pingpong_latency_2.txt")/10e9; 
p1_0_9_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\3\pingpong_latency_2.txt")/10e9; 
p1_0_9_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\4\pingpong_latency_2.txt")/10e9; 
p1_0_9_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\5\pingpong_latency_2.txt")/10e9; 
p1_0_9_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\6\pingpong_latency_2.txt")/10e9; 
p1_0_9_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\7\pingpong_latency_2.txt")/10e9; 
p1_0_9_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\8\pingpong_latency_2.txt")/10e9; 
p1_0_9_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\9\pingpong_latency_2.txt")/10e9; 
p1_0_9_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\10\pingpong_latency_2.txt")/10e9; 
p1_0_9_11_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\11\pingpong_latency_2.txt")/10e9; 
p1_0_9_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\12\pingpong_latency_2.txt")/10e9; 
p1_0_9_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\13\pingpong_latency_2.txt")/10e9; 
p1_0_9_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\14\pingpong_latency_2.txt")/10e9; 
p1_0_9_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\15\pingpong_latency_2.txt")/10e9; 
p1_0_9_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\16\pingpong_latency_2.txt")/10e9; 
p1_0_9_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\17\pingpong_latency_2.txt")/10e9; 
p1_0_9_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\18\pingpong_latency_2.txt")/10e9; 
p1_0_9_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\19\pingpong_latency_2.txt")/10e9; 
p1_0_9_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\20\pingpong_latency_2.txt")/10e9; 
p1_0_9_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\1\pingpong_latency_3.txt")/10e9; 
p1_0_9_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\2\pingpong_latency_3.txt")/10e9; 
p1_0_9_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\3\pingpong_latency_3.txt")/10e9; 
p1_0_9_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\4\pingpong_latency_3.txt")/10e9; 
p1_0_9_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\5\pingpong_latency_3.txt")/10e9; 
p1_0_9_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\6\pingpong_latency_3.txt")/10e9; 
p1_0_9_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\7\pingpong_latency_3.txt")/10e9; 
p1_0_9_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\8\pingpong_latency_3.txt")/10e9; 
p1_0_9_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\9\pingpong_latency_3.txt")/10e9; 
p1_0_9_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\10\pingpong_latency_3.txt")/10e9; 
p1_0_9_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\11\pingpong_latency_3.txt")/10e9; 
p1_0_9_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\12\pingpong_latency_3.txt")/10e9; 
p1_0_9_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\13\pingpong_latency_3.txt")/10e9; 
p1_0_9_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\14\pingpong_latency_3.txt")/10e9; 
p1_0_9_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\15\pingpong_latency_3.txt")/10e9; 
p1_0_9_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\16\pingpong_latency_3.txt")/10e9; 
p1_0_9_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\17\pingpong_latency_3.txt")/10e9; 
p1_0_9_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\18\pingpong_latency_3.txt")/10e9; 
p1_0_9_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\19\pingpong_latency_3.txt")/10e9; 
p1_0_9_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\0.9ms\20\pingpong_latency_3.txt")/10e9; 

latency_0_9_avg_1 = mean([mean(p1_0_9_1_1) mean(p1_0_9_2_1) mean(p1_0_9_3_1) mean(p1_0_9_4_1) mean(p1_0_9_5_1) mean(p1_0_9_6_1) mean(p1_0_9_7_1) mean(p1_0_9_8_1) mean(p1_0_9_9_1) mean(p1_0_9_10_1) mean(p1_0_9_11_1) mean(p1_0_9_12_1) mean(p1_0_9_13_1) mean(p1_0_9_14_1) mean(p1_0_9_15_1) mean(p1_0_9_16_1) mean(p1_0_9_17_1) mean(p1_0_9_18_1) mean(p1_0_9_19_1) mean(p1_0_9_20_1)])
latency_0_9_std_1 = std([mean(p1_0_9_1_1) mean(p1_0_9_2_1) mean(p1_0_9_3_1) mean(p1_0_9_4_1) mean(p1_0_9_5_1) mean(p1_0_9_6_1) mean(p1_0_9_7_1) mean(p1_0_9_8_1) mean(p1_0_9_9_1) mean(p1_0_9_10_1) mean(p1_0_9_11_1) mean(p1_0_9_12_1) mean(p1_0_9_13_1) mean(p1_0_9_14_1) mean(p1_0_9_15_1) mean(p1_0_9_16_1) mean(p1_0_9_17_1) mean(p1_0_9_18_1) mean(p1_0_9_19_1) mean(p1_0_9_20_1)])
tl_0_9_avg_1 = mean([200-size(p1_0_9_1_1,1) 200-size(p1_0_9_2_1,1) 200-size(p1_0_9_3_1,1) 200-size(p1_0_9_4_1,1) 200-size(p1_0_9_5_1,1) 200-size(p1_0_9_6_1,1) 200-size(p1_0_9_7_1,1) 200-size(p1_0_9_8_1,1) 200-size(p1_0_9_9_1,1) 200-size(p1_0_9_10_1,1) 200-size(p1_0_9_11_1,1) 200-size(p1_0_9_12_1,1) 200-size(p1_0_9_13_1,1) 200-size(p1_0_9_14_1,1) 200-size(p1_0_9_15_1,1) 200-size(p1_0_9_16_1,1) 200-size(p1_0_9_17_1,1) 200-size(p1_0_9_18_1,1) 200-size(p1_0_9_19_1,1) 200-size(p1_0_9_20_1,1)]) 
latency_0_9_avg_2 = mean([mean(p1_0_9_1_2) mean(p1_0_9_2_2) mean(p1_0_9_3_2) mean(p1_0_9_4_2) mean(p1_0_9_5_2) mean(p1_0_9_6_2) mean(p1_0_9_7_2) mean(p1_0_9_8_2) mean(p1_0_9_9_2) mean(p1_0_9_10_2) mean(p1_0_9_11_2) mean(p1_0_9_12_2) mean(p1_0_9_13_2) mean(p1_0_9_14_2) mean(p1_0_9_15_2) mean(p1_0_9_16_2) mean(p1_0_9_17_2) mean(p1_0_9_18_2) mean(p1_0_9_19_2) mean(p1_0_9_20_2)])
latency_0_9_std_2 = std([mean(p1_0_9_1_2) mean(p1_0_9_2_2) mean(p1_0_9_3_2) mean(p1_0_9_4_2) mean(p1_0_9_5_2) mean(p1_0_9_6_2) mean(p1_0_9_7_2) mean(p1_0_9_8_2) mean(p1_0_9_9_2) mean(p1_0_9_10_2) mean(p1_0_9_11_2) mean(p1_0_9_12_2) mean(p1_0_9_13_2) mean(p1_0_9_14_2) mean(p1_0_9_15_2) mean(p1_0_9_16_2) mean(p1_0_9_17_2) mean(p1_0_9_18_2) mean(p1_0_9_19_2) mean(p1_0_9_20_2)])
tl_0_9_avg_2 = mean([200-size(p1_0_9_1_2,1) 200-size(p1_0_9_2_2,1) 200-size(p1_0_9_3_2,1) 200-size(p1_0_9_4_2,1) 200-size(p1_0_9_5_2,1) 200-size(p1_0_9_6_2,1) 200-size(p1_0_9_7_2,1) 200-size(p1_0_9_8_2,1) 200-size(p1_0_9_9_2,1) 200-size(p1_0_9_10_2,1) 200-size(p1_0_9_11_2,1) 200-size(p1_0_9_12_2,1) 200-size(p1_0_9_13_2,1) 200-size(p1_0_9_14_2,1) 200-size(p1_0_9_15_2,1) 200-size(p1_0_9_16_2,1) 200-size(p1_0_9_17_2,1) 200-size(p1_0_9_18_2,1) 200-size(p1_0_9_19_2,1) 200-size(p1_0_9_20_2,1)]) 
latency_0_9_avg_3 = mean([mean(p1_0_9_3_3) mean(p1_0_9_2_3) mean(p1_0_9_3_3) mean(p1_0_9_4_3) mean(p1_0_9_5_3) mean(p1_0_9_6_3) mean(p1_0_9_7_3) mean(p1_0_9_8_3) mean(p1_0_9_9_3) mean(p1_0_9_10_3) mean(p1_0_9_11_3) mean(p1_0_9_12_3) mean(p1_0_9_13_3) mean(p1_0_9_14_3) mean(p1_0_9_15_3) mean(p1_0_9_16_3) mean(p1_0_9_17_3) mean(p1_0_9_18_3) mean(p1_0_9_19_3) mean(p1_0_9_20_3)])
latency_0_9_std_3 = std([mean(p1_0_9_3_3) mean(p1_0_9_2_3) mean(p1_0_9_3_3) mean(p1_0_9_4_3) mean(p1_0_9_5_3) mean(p1_0_9_6_3) mean(p1_0_9_7_3) mean(p1_0_9_8_3) mean(p1_0_9_9_3) mean(p1_0_9_10_3) mean(p1_0_9_11_3) mean(p1_0_9_12_3) mean(p1_0_9_13_3) mean(p1_0_9_14_3) mean(p1_0_9_15_3) mean(p1_0_9_16_3) mean(p1_0_9_17_3) mean(p1_0_9_18_3) mean(p1_0_9_19_3) mean(p1_0_9_20_3)])
tl_0_9_avg_3 = mean([200-size(p1_0_9_1_3,1) 200-size(p1_0_9_2_3,1) 200-size(p1_0_9_3_3,1) 200-size(p1_0_9_4_3,1) 200-size(p1_0_9_5_3,1) 200-size(p1_0_9_6_3,1) 200-size(p1_0_9_7_3,1) 200-size(p1_0_9_8_3,1) 200-size(p1_0_9_9_3,1) 200-size(p1_0_9_10_3,1) 200-size(p1_0_9_11_3,1) 200-size(p1_0_9_12_3,1) 200-size(p1_0_9_13_3,1) 200-size(p1_0_9_14_3,1) 200-size(p1_0_9_15_3,1) 200-size(p1_0_9_16_3,1) 200-size(p1_0_9_17_3,1) 200-size(p1_0_9_18_3,1) 200-size(p1_0_9_19_3,1) 200-size(p1_0_9_20_3,1)]) 

% 1.2 ms busy loop
p1_1_2_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\1\pingpong_latency_1.txt")/10e9; 
p1_1_2_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\2\pingpong_latency_1.txt")/10e9; 
p1_1_2_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\3\pingpong_latency_1.txt")/10e9; 
p1_1_2_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\4\pingpong_latency_1.txt")/10e9; 
p1_1_2_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\5\pingpong_latency_1.txt")/10e9; 
p1_1_2_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\6\pingpong_latency_1.txt")/10e9; 
p1_1_2_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\7\pingpong_latency_1.txt")/10e9; 
p1_1_2_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\8\pingpong_latency_1.txt")/10e9; 
p1_1_2_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\9\pingpong_latency_1.txt")/10e9; 
p1_1_2_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\10\pingpong_latency_1.txt")/10e9; 
p1_1_2_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\11\pingpong_latency_1.txt")/10e9; 
p1_1_2_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\12\pingpong_latency_1.txt")/10e9; 
p1_1_2_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\13\pingpong_latency_1.txt")/10e9; 
p1_1_2_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\14\pingpong_latency_1.txt")/10e9; 
p1_1_2_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\15\pingpong_latency_1.txt")/10e9; 
p1_1_2_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\16\pingpong_latency_1.txt")/10e9; 
p1_1_2_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\17\pingpong_latency_1.txt")/10e9; 
p1_1_2_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\18\pingpong_latency_1.txt")/10e9; 
p1_1_2_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\19\pingpong_latency_1.txt")/10e9; 
p1_1_2_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\20\pingpong_latency_1.txt")/10e9; 
p1_1_2_1_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\1\pingpong_latency_2.txt")/10e9; 
p1_1_2_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\2\pingpong_latency_2.txt")/10e9; 
p1_1_2_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\3\pingpong_latency_2.txt")/10e9; 
p1_1_2_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\4\pingpong_latency_2.txt")/10e9; 
p1_1_2_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\5\pingpong_latency_2.txt")/10e9; 
p1_1_2_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\6\pingpong_latency_2.txt")/10e9; 
p1_1_2_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\7\pingpong_latency_2.txt")/10e9; 
p1_1_2_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\8\pingpong_latency_2.txt")/10e9; 
p1_1_2_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\9\pingpong_latency_2.txt")/10e9; 
p1_1_2_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\10\pingpong_latency_2.txt")/10e9; 
p1_1_2_11_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\11\pingpong_latency_2.txt")/10e9; 
p1_1_2_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\12\pingpong_latency_2.txt")/10e9; 
p1_1_2_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\13\pingpong_latency_2.txt")/10e9; 
p1_1_2_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\14\pingpong_latency_2.txt")/10e9; 
p1_1_2_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\15\pingpong_latency_2.txt")/10e9; 
p1_1_2_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\16\pingpong_latency_2.txt")/10e9; 
p1_1_2_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\17\pingpong_latency_2.txt")/10e9; 
p1_1_2_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\18\pingpong_latency_2.txt")/10e9; 
p1_1_2_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\19\pingpong_latency_2.txt")/10e9; 
p1_1_2_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\20\pingpong_latency_2.txt")/10e9; 
p1_1_2_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\1\pingpong_latency_3.txt")/10e9; 
p1_1_2_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\2\pingpong_latency_3.txt")/10e9; 
p1_1_2_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\3\pingpong_latency_3.txt")/10e9; 
p1_1_2_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\4\pingpong_latency_3.txt")/10e9; 
p1_1_2_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\5\pingpong_latency_3.txt")/10e9; 
p1_1_2_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\6\pingpong_latency_3.txt")/10e9; 
p1_1_2_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\7\pingpong_latency_3.txt")/10e9; 
p1_1_2_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\8\pingpong_latency_3.txt")/10e9; 
p1_1_2_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\9\pingpong_latency_3.txt")/10e9; 
p1_1_2_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\10\pingpong_latency_3.txt")/10e9; 
p1_1_2_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\11\pingpong_latency_3.txt")/10e9; 
p1_1_2_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\12\pingpong_latency_3.txt")/10e9; 
p1_1_2_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\13\pingpong_latency_3.txt")/10e9; 
p1_1_2_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\14\pingpong_latency_3.txt")/10e9; 
p1_1_2_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\15\pingpong_latency_3.txt")/10e9; 
p1_1_2_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\16\pingpong_latency_3.txt")/10e9; 
p1_1_2_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\17\pingpong_latency_3.txt")/10e9; 
p1_1_2_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\18\pingpong_latency_3.txt")/10e9; 
p1_1_2_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\19\pingpong_latency_3.txt")/10e9; 
p1_1_2_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.2ms\20\pingpong_latency_3.txt")/10e9; 

latency_1_2_avg_1 = mean([mean(p1_1_2_1_1) mean(p1_1_2_2_1) mean(p1_1_2_3_1) mean(p1_1_2_4_1) mean(p1_1_2_5_1) mean(p1_1_2_6_1) mean(p1_1_2_7_1) mean(p1_1_2_8_1) mean(p1_1_2_9_1) mean(p1_1_2_10_1) mean(p1_1_2_11_1) mean(p1_1_2_12_1) mean(p1_1_2_13_1) mean(p1_1_2_14_1) mean(p1_1_2_15_1) mean(p1_1_2_16_1) mean(p1_1_2_17_1) mean(p1_1_2_18_1) mean(p1_1_2_19_1) mean(p1_1_2_20_1)])
latency_1_2_std_1 = std([mean(p1_1_2_1_1) mean(p1_1_2_2_1) mean(p1_1_2_3_1) mean(p1_1_2_4_1) mean(p1_1_2_5_1) mean(p1_1_2_6_1) mean(p1_1_2_7_1) mean(p1_1_2_8_1) mean(p1_1_2_9_1) mean(p1_1_2_10_1) mean(p1_1_2_11_1) mean(p1_1_2_12_1) mean(p1_1_2_13_1) mean(p1_1_2_14_1) mean(p1_1_2_15_1) mean(p1_1_2_16_1) mean(p1_1_2_17_1) mean(p1_1_2_18_1) mean(p1_1_2_19_1) mean(p1_1_2_20_1)])
tl_1_2_avg_1 = mean([200-size(p1_1_2_1_1,1) 200-size(p1_1_2_2_1,1) 200-size(p1_1_2_3_1,1) 200-size(p1_1_2_4_1,1) 200-size(p1_1_2_5_1,1) 200-size(p1_1_2_6_1,1) 200-size(p1_1_2_7_1,1) 200-size(p1_1_2_8_1,1) 200-size(p1_1_2_9_1,1) 200-size(p1_1_2_10_1,1) 200-size(p1_1_2_11_1,1) 200-size(p1_1_2_12_1,1) 200-size(p1_1_2_13_1,1) 200-size(p1_1_2_14_1,1) 200-size(p1_1_2_15_1,1) 200-size(p1_1_2_16_1,1) 200-size(p1_1_2_17_1,1) 200-size(p1_1_2_18_1,1) 200-size(p1_1_2_19_1,1) 200-size(p1_1_2_20_1,1)]) 
latency_1_2_avg_2 = mean([mean(p1_1_2_1_2) mean(p1_1_2_2_2) mean(p1_1_2_3_2) mean(p1_1_2_4_2) mean(p1_1_2_5_2) mean(p1_1_2_6_2) mean(p1_1_2_7_2) mean(p1_1_2_8_2) mean(p1_1_2_9_2) mean(p1_1_2_10_2) mean(p1_1_2_11_2) mean(p1_1_2_12_2) mean(p1_1_2_13_2) mean(p1_1_2_14_2) mean(p1_1_2_15_2) mean(p1_1_2_16_2) mean(p1_1_2_17_2) mean(p1_1_2_18_2) mean(p1_1_2_19_2) mean(p1_1_2_20_2)])
latency_1_2_std_2 = std([mean(p1_1_2_1_2) mean(p1_1_2_2_2) mean(p1_1_2_3_2) mean(p1_1_2_4_2) mean(p1_1_2_5_2) mean(p1_1_2_6_2) mean(p1_1_2_7_2) mean(p1_1_2_8_2) mean(p1_1_2_9_2) mean(p1_1_2_10_2) mean(p1_1_2_11_2) mean(p1_1_2_12_2) mean(p1_1_2_13_2) mean(p1_1_2_14_2) mean(p1_1_2_15_2) mean(p1_1_2_16_2) mean(p1_1_2_17_2) mean(p1_1_2_18_2) mean(p1_1_2_19_2) mean(p1_1_2_20_2)])
tl_1_2_avg_2 = mean([200-size(p1_1_2_1_2,1) 200-size(p1_1_2_2_2,1) 200-size(p1_1_2_3_2,1) 200-size(p1_1_2_4_2,1) 200-size(p1_1_2_5_2,1) 200-size(p1_1_2_6_2,1) 200-size(p1_1_2_7_2,1) 200-size(p1_1_2_8_2,1) 200-size(p1_1_2_9_2,1) 200-size(p1_1_2_10_2,1) 200-size(p1_1_2_11_2,1) 200-size(p1_1_2_12_2,1) 200-size(p1_1_2_13_2,1) 200-size(p1_1_2_14_2,1) 200-size(p1_1_2_15_2,1) 200-size(p1_1_2_16_2,1) 200-size(p1_1_2_17_2,1) 200-size(p1_1_2_18_2,1) 200-size(p1_1_2_19_2,1) 200-size(p1_1_2_20_2,1)]) 
latency_1_2_avg_3 = mean([mean(p1_1_2_3_3) mean(p1_1_2_2_3) mean(p1_1_2_3_3) mean(p1_1_2_4_3) mean(p1_1_2_5_3) mean(p1_1_2_6_3) mean(p1_1_2_7_3) mean(p1_1_2_8_3) mean(p1_1_2_9_3) mean(p1_1_2_10_3) mean(p1_1_2_11_3) mean(p1_1_2_12_3) mean(p1_1_2_13_3) mean(p1_1_2_14_3) mean(p1_1_2_15_3) mean(p1_1_2_16_3) mean(p1_1_2_17_3) mean(p1_1_2_18_3) mean(p1_1_2_19_3) mean(p1_1_2_20_3)])
latency_1_2_std_3 = std([mean(p1_1_2_3_3) mean(p1_1_2_2_3) mean(p1_1_2_3_3) mean(p1_1_2_4_3) mean(p1_1_2_5_3) mean(p1_1_2_6_3) mean(p1_1_2_7_3) mean(p1_1_2_8_3) mean(p1_1_2_9_3) mean(p1_1_2_10_3) mean(p1_1_2_11_3) mean(p1_1_2_12_3) mean(p1_1_2_13_3) mean(p1_1_2_14_3) mean(p1_1_2_15_3) mean(p1_1_2_16_3) mean(p1_1_2_17_3) mean(p1_1_2_18_3) mean(p1_1_2_19_3) mean(p1_1_2_20_3)])
tl_1_2_avg_3 = mean([200-size(p1_1_2_1_3,1) 200-size(p1_1_2_2_3,1) 200-size(p1_1_2_3_3,1) 200-size(p1_1_2_4_3,1) 200-size(p1_1_2_5_3,1) 200-size(p1_1_2_6_3,1) 200-size(p1_1_2_7_3,1) 200-size(p1_1_2_8_3,1) 200-size(p1_1_2_9_3,1) 200-size(p1_1_2_10_3,1) 200-size(p1_1_2_11_3,1) 200-size(p1_1_2_12_3,1) 200-size(p1_1_2_13_3,1) 200-size(p1_1_2_14_3,1) 200-size(p1_1_2_15_3,1) 200-size(p1_1_2_16_3,1) 200-size(p1_1_2_17_3,1) 200-size(p1_1_2_18_3,1) 200-size(p1_1_2_19_3,1) 200-size(p1_1_2_20_3,1)]) 

% 1.5 ms busy loop
p1_1_5_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\1\pingpong_latency_1.txt")/10e9; 
p1_1_5_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\2\pingpong_latency_1.txt")/10e9; 
p1_1_5_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\3\pingpong_latency_1.txt")/10e9; 
p1_1_5_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\4\pingpong_latency_1.txt")/10e9; 
p1_1_5_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\5\pingpong_latency_1.txt")/10e9; 
p1_1_5_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\6\pingpong_latency_1.txt")/10e9; 
p1_1_5_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\7\pingpong_latency_1.txt")/10e9; 
p1_1_5_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\8\pingpong_latency_1.txt")/10e9; 
p1_1_5_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\9\pingpong_latency_1.txt")/10e9; 
p1_1_5_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\10\pingpong_latency_1.txt")/10e9; 
p1_1_5_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\11\pingpong_latency_1.txt")/10e9; 
p1_1_5_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\12\pingpong_latency_1.txt")/10e9; 
p1_1_5_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\13\pingpong_latency_1.txt")/10e9; 
p1_1_5_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\14\pingpong_latency_1.txt")/10e9; 
p1_1_5_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\15\pingpong_latency_1.txt")/10e9; 
p1_1_5_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\16\pingpong_latency_1.txt")/10e9; 
p1_1_5_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\17\pingpong_latency_1.txt")/10e9; 
p1_1_5_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\18\pingpong_latency_1.txt")/10e9; 
p1_1_5_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\19\pingpong_latency_1.txt")/10e9; 
p1_1_5_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\20\pingpong_latency_1.txt")/10e9; 
p1_1_5_1_5 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\1\pingpong_latency_2.txt")/10e9; 
p1_1_5_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\2\pingpong_latency_2.txt")/10e9; 
p1_1_5_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\3\pingpong_latency_2.txt")/10e9; 
p1_1_5_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\4\pingpong_latency_2.txt")/10e9; 
p1_1_5_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\5\pingpong_latency_2.txt")/10e9; 
p1_1_5_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\6\pingpong_latency_2.txt")/10e9; 
p1_1_5_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\7\pingpong_latency_2.txt")/10e9; 
p1_1_5_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\8\pingpong_latency_2.txt")/10e9; 
p1_1_5_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\9\pingpong_latency_2.txt")/10e9; 
p1_1_5_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\10\pingpong_latency_2.txt")/10e9; 
p1_1_5_11_5 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\11\pingpong_latency_2.txt")/10e9; 
p1_1_5_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\12\pingpong_latency_2.txt")/10e9; 
p1_1_5_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\13\pingpong_latency_2.txt")/10e9; 
p1_1_5_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\14\pingpong_latency_2.txt")/10e9; 
p1_1_5_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\15\pingpong_latency_2.txt")/10e9; 
p1_1_5_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\16\pingpong_latency_2.txt")/10e9; 
p1_1_5_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\17\pingpong_latency_2.txt")/10e9; 
p1_1_5_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\18\pingpong_latency_2.txt")/10e9; 
p1_1_5_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\19\pingpong_latency_2.txt")/10e9; 
p1_1_5_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\20\pingpong_latency_2.txt")/10e9; 
p1_1_5_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\1\pingpong_latency_3.txt")/10e9; 
p1_1_5_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\2\pingpong_latency_3.txt")/10e9; 
p1_1_5_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\3\pingpong_latency_3.txt")/10e9; 
p1_1_5_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\4\pingpong_latency_3.txt")/10e9; 
p1_1_5_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\5\pingpong_latency_3.txt")/10e9; 
p1_1_5_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\6\pingpong_latency_3.txt")/10e9; 
p1_1_5_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\7\pingpong_latency_3.txt")/10e9; 
p1_1_5_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\8\pingpong_latency_3.txt")/10e9; 
p1_1_5_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\9\pingpong_latency_3.txt")/10e9; 
p1_1_5_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\10\pingpong_latency_3.txt")/10e9; 
p1_1_5_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\11\pingpong_latency_3.txt")/10e9; 
p1_1_5_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\12\pingpong_latency_3.txt")/10e9; 
p1_1_5_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\13\pingpong_latency_3.txt")/10e9; 
p1_1_5_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\14\pingpong_latency_3.txt")/10e9; 
p1_1_5_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\15\pingpong_latency_3.txt")/10e9; 
p1_1_5_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\16\pingpong_latency_3.txt")/10e9; 
p1_1_5_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\17\pingpong_latency_3.txt")/10e9; 
p1_1_5_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\18\pingpong_latency_3.txt")/10e9; 
p1_1_5_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\19\pingpong_latency_3.txt")/10e9; 
p1_1_5_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.5ms\20\pingpong_latency_3.txt")/10e9; 

latency_1_5_avg_1 = mean([mean(p1_1_5_1_1) mean(p1_1_5_2_1) mean(p1_1_5_3_1) mean(p1_1_5_4_1) mean(p1_1_5_5_1) mean(p1_1_5_6_1) mean(p1_1_5_7_1) mean(p1_1_5_8_1) mean(p1_1_5_9_1) mean(p1_1_5_10_1) mean(p1_1_5_11_1) mean(p1_1_5_12_1) mean(p1_1_5_13_1) mean(p1_1_5_14_1) mean(p1_1_5_15_1) mean(p1_1_5_16_1) mean(p1_1_5_17_1) mean(p1_1_5_18_1) mean(p1_1_5_19_1) mean(p1_1_5_20_1)])
latency_1_5_std_1 = std([mean(p1_1_5_1_1) mean(p1_1_5_2_1) mean(p1_1_5_3_1) mean(p1_1_5_4_1) mean(p1_1_5_5_1) mean(p1_1_5_6_1) mean(p1_1_5_7_1) mean(p1_1_5_8_1) mean(p1_1_5_9_1) mean(p1_1_5_10_1) mean(p1_1_5_11_1) mean(p1_1_5_12_1) mean(p1_1_5_13_1) mean(p1_1_5_14_1) mean(p1_1_5_15_1) mean(p1_1_5_16_1) mean(p1_1_5_17_1) mean(p1_1_5_18_1) mean(p1_1_5_19_1) mean(p1_1_5_20_1)])
tl_1_5_avg_1 = mean([200-size(p1_1_5_1_1,1) 200-size(p1_1_5_2_1,1) 200-size(p1_1_5_3_1,1) 200-size(p1_1_5_4_1,1) 200-size(p1_1_5_5_1,1) 200-size(p1_1_5_6_1,1) 200-size(p1_1_5_7_1,1) 200-size(p1_1_5_8_1,1) 200-size(p1_1_5_9_1,1) 200-size(p1_1_5_10_1,1) 200-size(p1_1_5_11_1,1) 200-size(p1_1_5_12_1,1) 200-size(p1_1_5_13_1,1) 200-size(p1_1_5_14_1,1) 200-size(p1_1_5_15_1,1) 200-size(p1_1_5_16_1,1) 200-size(p1_1_5_17_1,1) 200-size(p1_1_5_18_1,1) 200-size(p1_1_5_19_1,1) 200-size(p1_1_5_20_1,1)]) 
latency_1_5_avg_2 = mean([mean(p1_1_5_1_5) mean(p1_1_5_2_2) mean(p1_1_5_3_2) mean(p1_1_5_4_2) mean(p1_1_5_5_2) mean(p1_1_5_6_2) mean(p1_1_5_7_2) mean(p1_1_5_8_2) mean(p1_1_5_9_2) mean(p1_1_5_10_2) mean(p1_1_5_11_5) mean(p1_1_5_12_2) mean(p1_1_5_13_2) mean(p1_1_5_14_2) mean(p1_1_5_15_2) mean(p1_1_5_16_2) mean(p1_1_5_17_2) mean(p1_1_5_18_2) mean(p1_1_5_19_2) mean(p1_1_5_20_2)])
latency_1_5_std_2 = std([mean(p1_1_5_1_5) mean(p1_1_5_2_2) mean(p1_1_5_3_2) mean(p1_1_5_4_2) mean(p1_1_5_5_2) mean(p1_1_5_6_2) mean(p1_1_5_7_2) mean(p1_1_5_8_2) mean(p1_1_5_9_2) mean(p1_1_5_10_2) mean(p1_1_5_11_5) mean(p1_1_5_12_2) mean(p1_1_5_13_2) mean(p1_1_5_14_2) mean(p1_1_5_15_2) mean(p1_1_5_16_2) mean(p1_1_5_17_2) mean(p1_1_5_18_2) mean(p1_1_5_19_2) mean(p1_1_5_20_2)])
tl_1_5_avg_2 = mean([200-size(p1_1_5_1_5,1) 200-size(p1_1_5_2_2,1) 200-size(p1_1_5_3_2,1) 200-size(p1_1_5_4_2,1) 200-size(p1_1_5_5_2,1) 200-size(p1_1_5_6_2,1) 200-size(p1_1_5_7_2,1) 200-size(p1_1_5_8_2,1) 200-size(p1_1_5_9_2,1) 200-size(p1_1_5_10_2,1) 200-size(p1_1_5_11_5,1) 200-size(p1_1_5_12_2,1) 200-size(p1_1_5_13_2,1) 200-size(p1_1_5_14_2,1) 200-size(p1_1_5_15_2,1) 200-size(p1_1_5_16_2,1) 200-size(p1_1_5_17_2,1) 200-size(p1_1_5_18_2,1) 200-size(p1_1_5_19_2,1) 200-size(p1_1_5_20_2,1)]) 
latency_1_5_avg_3 = mean([mean(p1_1_5_3_3) mean(p1_1_5_2_3) mean(p1_1_5_3_3) mean(p1_1_5_4_3) mean(p1_1_5_5_3) mean(p1_1_5_6_3) mean(p1_1_5_7_3) mean(p1_1_5_8_3) mean(p1_1_5_9_3) mean(p1_1_5_10_3) mean(p1_1_5_11_3) mean(p1_1_5_12_3) mean(p1_1_5_13_3) mean(p1_1_5_14_3) mean(p1_1_5_15_3) mean(p1_1_5_16_3) mean(p1_1_5_17_3) mean(p1_1_5_18_3) mean(p1_1_5_19_3) mean(p1_1_5_20_3)])
latency_1_5_std_3 = std([mean(p1_1_5_3_3) mean(p1_1_5_2_3) mean(p1_1_5_3_3) mean(p1_1_5_4_3) mean(p1_1_5_5_3) mean(p1_1_5_6_3) mean(p1_1_5_7_3) mean(p1_1_5_8_3) mean(p1_1_5_9_3) mean(p1_1_5_10_3) mean(p1_1_5_11_3) mean(p1_1_5_12_3) mean(p1_1_5_13_3) mean(p1_1_5_14_3) mean(p1_1_5_15_3) mean(p1_1_5_16_3) mean(p1_1_5_17_3) mean(p1_1_5_18_3) mean(p1_1_5_19_3) mean(p1_1_5_20_3)])
tl_1_5_avg_3 = mean([200-size(p1_1_5_1_3,1) 200-size(p1_1_5_2_3,1) 200-size(p1_1_5_3_3,1) 200-size(p1_1_5_4_3,1) 200-size(p1_1_5_5_3,1) 200-size(p1_1_5_6_3,1) 200-size(p1_1_5_7_3,1) 200-size(p1_1_5_8_3,1) 200-size(p1_1_5_9_3,1) 200-size(p1_1_5_10_3,1) 200-size(p1_1_5_11_3,1) 200-size(p1_1_5_12_3,1) 200-size(p1_1_5_13_3,1) 200-size(p1_1_5_14_3,1) 200-size(p1_1_5_15_3,1) 200-size(p1_1_5_16_3,1) 200-size(p1_1_5_17_3,1) 200-size(p1_1_5_18_3,1) 200-size(p1_1_5_19_3,1) 200-size(p1_1_5_20_3,1)]) 

% 1.8 busy loop
p1_1_8_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\1\pingpong_latency_1.txt")/10e9; 
p1_1_8_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\2\pingpong_latency_1.txt")/10e9; 
p1_1_8_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\3\pingpong_latency_1.txt")/10e9; 
p1_1_8_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\4\pingpong_latency_1.txt")/10e9; 
p1_1_8_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\5\pingpong_latency_1.txt")/10e9; 
p1_1_8_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\6\pingpong_latency_1.txt")/10e9; 
p1_1_8_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\7\pingpong_latency_1.txt")/10e9; 
p1_1_8_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\8\pingpong_latency_1.txt")/10e9; 
p1_1_8_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\9\pingpong_latency_1.txt")/10e9; 
p1_1_8_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\10\pingpong_latency_1.txt")/10e9; 
p1_1_8_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\11\pingpong_latency_1.txt")/10e9; 
p1_1_8_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\12\pingpong_latency_1.txt")/10e9; 
p1_1_8_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\13\pingpong_latency_1.txt")/10e9; 
p1_1_8_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\14\pingpong_latency_1.txt")/10e9; 
p1_1_8_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\15\pingpong_latency_1.txt")/10e9; 
p1_1_8_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\16\pingpong_latency_1.txt")/10e9; 
p1_1_8_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\17\pingpong_latency_1.txt")/10e9; 
p1_1_8_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\18\pingpong_latency_1.txt")/10e9; 
p1_1_8_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\19\pingpong_latency_1.txt")/10e9; 
p1_1_8_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\20\pingpong_latency_1.txt")/10e9; 
p1_1_8_1_8 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\1\pingpong_latency_2.txt")/10e9; 
p1_1_8_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\2\pingpong_latency_2.txt")/10e9; 
p1_1_8_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\3\pingpong_latency_2.txt")/10e9; 
p1_1_8_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\4\pingpong_latency_2.txt")/10e9; 
p1_1_8_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\5\pingpong_latency_2.txt")/10e9; 
p1_1_8_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\6\pingpong_latency_2.txt")/10e9; 
p1_1_8_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\7\pingpong_latency_2.txt")/10e9; 
p1_1_8_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\8\pingpong_latency_2.txt")/10e9; 
p1_1_8_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\9\pingpong_latency_2.txt")/10e9; 
p1_1_8_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\10\pingpong_latency_2.txt")/10e9; 
p1_1_8_11_8 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\11\pingpong_latency_2.txt")/10e9; 
p1_1_8_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\12\pingpong_latency_2.txt")/10e9; 
p1_1_8_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\13\pingpong_latency_2.txt")/10e9; 
p1_1_8_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\14\pingpong_latency_2.txt")/10e9; 
p1_1_8_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\15\pingpong_latency_2.txt")/10e9; 
p1_1_8_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\16\pingpong_latency_2.txt")/10e9; 
p1_1_8_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\17\pingpong_latency_2.txt")/10e9; 
p1_1_8_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\18\pingpong_latency_2.txt")/10e9; 
p1_1_8_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\19\pingpong_latency_2.txt")/10e9; 
p1_1_8_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\20\pingpong_latency_2.txt")/10e9; 
p1_1_8_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\1\pingpong_latency_3.txt")/10e9; 
p1_1_8_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\2\pingpong_latency_3.txt")/10e9; 
p1_1_8_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\3\pingpong_latency_3.txt")/10e9; 
p1_1_8_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\4\pingpong_latency_3.txt")/10e9; 
p1_1_8_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\5\pingpong_latency_3.txt")/10e9; 
p1_1_8_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\6\pingpong_latency_3.txt")/10e9; 
p1_1_8_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\7\pingpong_latency_3.txt")/10e9; 
p1_1_8_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\8\pingpong_latency_3.txt")/10e9; 
p1_1_8_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\9\pingpong_latency_3.txt")/10e9; 
p1_1_8_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\10\pingpong_latency_3.txt")/10e9; 
p1_1_8_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\11\pingpong_latency_3.txt")/10e9; 
p1_1_8_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\12\pingpong_latency_3.txt")/10e9; 
p1_1_8_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\13\pingpong_latency_3.txt")/10e9; 
p1_1_8_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\14\pingpong_latency_3.txt")/10e9; 
p1_1_8_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\15\pingpong_latency_3.txt")/10e9; 
p1_1_8_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\16\pingpong_latency_3.txt")/10e9; 
p1_1_8_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\17\pingpong_latency_3.txt")/10e9; 
p1_1_8_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\18\pingpong_latency_3.txt")/10e9; 
p1_1_8_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\19\pingpong_latency_3.txt")/10e9; 
p1_1_8_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\1.8ms\20\pingpong_latency_3.txt")/10e9; 

latency_1_8_avg_1 = mean([mean(p1_1_8_1_1) mean(p1_1_8_2_1) mean(p1_1_8_3_1) mean(p1_1_8_4_1) mean(p1_1_8_5_1) mean(p1_1_8_6_1) mean(p1_1_8_7_1) mean(p1_1_8_8_1) mean(p1_1_8_9_1) mean(p1_1_8_10_1) mean(p1_1_8_11_1) mean(p1_1_8_12_1) mean(p1_1_8_13_1) mean(p1_1_8_14_1) mean(p1_1_8_15_1) mean(p1_1_8_16_1) mean(p1_1_8_17_1) mean(p1_1_8_18_1) mean(p1_1_8_19_1) mean(p1_1_8_20_1)])
latency_1_8_std_1 = std([mean(p1_1_8_1_1) mean(p1_1_8_2_1) mean(p1_1_8_3_1) mean(p1_1_8_4_1) mean(p1_1_8_5_1) mean(p1_1_8_6_1) mean(p1_1_8_7_1) mean(p1_1_8_8_1) mean(p1_1_8_9_1) mean(p1_1_8_10_1) mean(p1_1_8_11_1) mean(p1_1_8_12_1) mean(p1_1_8_13_1) mean(p1_1_8_14_1) mean(p1_1_8_15_1) mean(p1_1_8_16_1) mean(p1_1_8_17_1) mean(p1_1_8_18_1) mean(p1_1_8_19_1) mean(p1_1_8_20_1)])
tl_1_8_avg_1 = mean([200-size(p1_1_8_1_1,1) 200-size(p1_1_8_2_1,1) 200-size(p1_1_8_3_1,1) 200-size(p1_1_8_4_1,1) 200-size(p1_1_8_5_1,1) 200-size(p1_1_8_6_1,1) 200-size(p1_1_8_7_1,1) 200-size(p1_1_8_8_1,1) 200-size(p1_1_8_9_1,1) 200-size(p1_1_8_10_1,1) 200-size(p1_1_8_11_1,1) 200-size(p1_1_8_12_1,1) 200-size(p1_1_8_13_1,1) 200-size(p1_1_8_14_1,1) 200-size(p1_1_8_15_1,1) 200-size(p1_1_8_16_1,1) 200-size(p1_1_8_17_1,1) 200-size(p1_1_8_18_1,1) 200-size(p1_1_8_19_1,1) 200-size(p1_1_8_20_1,1)]) 
latency_1_8_avg_2 = mean([mean(p1_1_8_1_8) mean(p1_1_8_2_2) mean(p1_1_8_3_2) mean(p1_1_8_4_2) mean(p1_1_8_5_2) mean(p1_1_8_6_2) mean(p1_1_8_7_2) mean(p1_1_8_8_2) mean(p1_1_8_9_2) mean(p1_1_8_10_2) mean(p1_1_8_11_8) mean(p1_1_8_12_2) mean(p1_1_8_13_2) mean(p1_1_8_14_2) mean(p1_1_8_15_2) mean(p1_1_8_16_2) mean(p1_1_8_17_2) mean(p1_1_8_18_2) mean(p1_1_8_19_2) mean(p1_1_8_20_2)])
latency_1_8_std_2 = std([mean(p1_1_8_1_8) mean(p1_1_8_2_2) mean(p1_1_8_3_2) mean(p1_1_8_4_2) mean(p1_1_8_5_2) mean(p1_1_8_6_2) mean(p1_1_8_7_2) mean(p1_1_8_8_2) mean(p1_1_8_9_2) mean(p1_1_8_10_2) mean(p1_1_8_11_8) mean(p1_1_8_12_2) mean(p1_1_8_13_2) mean(p1_1_8_14_2) mean(p1_1_8_15_2) mean(p1_1_8_16_2) mean(p1_1_8_17_2) mean(p1_1_8_18_2) mean(p1_1_8_19_2) mean(p1_1_8_20_2)])
tl_1_8_avg_2 = mean([200-size(p1_1_8_1_8,1) 200-size(p1_1_8_2_2,1) 200-size(p1_1_8_3_2,1) 200-size(p1_1_8_4_2,1) 200-size(p1_1_8_5_2,1) 200-size(p1_1_8_6_2,1) 200-size(p1_1_8_7_2,1) 200-size(p1_1_8_8_2,1) 200-size(p1_1_8_9_2,1) 200-size(p1_1_8_10_2,1) 200-size(p1_1_8_11_8,1) 200-size(p1_1_8_12_2,1) 200-size(p1_1_8_13_2,1) 200-size(p1_1_8_14_2,1) 200-size(p1_1_8_15_2,1) 200-size(p1_1_8_16_2,1) 200-size(p1_1_8_17_2,1) 200-size(p1_1_8_18_2,1) 200-size(p1_1_8_19_2,1) 200-size(p1_1_8_20_2,1)]) 
latency_1_8_avg_3 = mean([mean(p1_1_8_3_3) mean(p1_1_8_2_3) mean(p1_1_8_3_3) mean(p1_1_8_4_3) mean(p1_1_8_5_3) mean(p1_1_8_6_3) mean(p1_1_8_7_3) mean(p1_1_8_8_3) mean(p1_1_8_9_3) mean(p1_1_8_10_3) mean(p1_1_8_11_3) mean(p1_1_8_12_3) mean(p1_1_8_13_3) mean(p1_1_8_14_3) mean(p1_1_8_15_3) mean(p1_1_8_16_3) mean(p1_1_8_17_3) mean(p1_1_8_18_3) mean(p1_1_8_19_3) mean(p1_1_8_20_3)])
latency_1_8_std_3 = std([mean(p1_1_8_3_3) mean(p1_1_8_2_3) mean(p1_1_8_3_3) mean(p1_1_8_4_3) mean(p1_1_8_5_3) mean(p1_1_8_6_3) mean(p1_1_8_7_3) mean(p1_1_8_8_3) mean(p1_1_8_9_3) mean(p1_1_8_10_3) mean(p1_1_8_11_3) mean(p1_1_8_12_3) mean(p1_1_8_13_3) mean(p1_1_8_14_3) mean(p1_1_8_15_3) mean(p1_1_8_16_3) mean(p1_1_8_17_3) mean(p1_1_8_18_3) mean(p1_1_8_19_3) mean(p1_1_8_20_3)])
tl_1_8_avg_3 = mean([200-size(p1_1_8_1_3,1) 200-size(p1_1_8_2_3,1) 200-size(p1_1_8_3_3,1) 200-size(p1_1_8_4_3,1) 200-size(p1_1_8_5_3,1) 200-size(p1_1_8_6_3,1) 200-size(p1_1_8_7_3,1) 200-size(p1_1_8_8_3,1) 200-size(p1_1_8_9_3,1) 200-size(p1_1_8_10_3,1) 200-size(p1_1_8_11_3,1) 200-size(p1_1_8_12_3,1) 200-size(p1_1_8_13_3,1) 200-size(p1_1_8_14_3,1) 200-size(p1_1_8_15_3,1) 200-size(p1_1_8_16_3,1) 200-size(p1_1_8_17_3,1) 200-size(p1_1_8_18_3,1) 200-size(p1_1_8_19_3,1) 200-size(p1_1_8_20_3,1)]) 

% 2.1 busy loop

p1_2_1_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\1\pingpong_latency_1.txt")/10e9; 
p1_2_1_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\2\pingpong_latency_1.txt")/10e9; 
p1_2_1_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\3\pingpong_latency_1.txt")/10e9; 
p1_2_1_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\4\pingpong_latency_1.txt")/10e9; 
p1_2_1_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\5\pingpong_latency_1.txt")/10e9; 
p1_2_1_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\6\pingpong_latency_1.txt")/10e9; 
p1_2_1_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\7\pingpong_latency_1.txt")/10e9; 
p1_2_1_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\8\pingpong_latency_1.txt")/10e9; 
p1_2_1_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\9\pingpong_latency_1.txt")/10e9; 
p1_2_1_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\10\pingpong_latency_1.txt")/10e9; 
p1_2_1_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\11\pingpong_latency_1.txt")/10e9; 
p1_2_1_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\12\pingpong_latency_1.txt")/10e9; 
p1_2_1_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\13\pingpong_latency_1.txt")/10e9; 
p1_2_1_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\14\pingpong_latency_1.txt")/10e9; 
p1_2_1_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\15\pingpong_latency_1.txt")/10e9; 
p1_2_1_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\16\pingpong_latency_1.txt")/10e9; 
p1_2_1_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\17\pingpong_latency_1.txt")/10e9; 
p1_2_1_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\18\pingpong_latency_1.txt")/10e9; 
p1_2_1_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\19\pingpong_latency_1.txt")/10e9; 
p1_2_1_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\20\pingpong_latency_1.txt")/10e9; 
p1_2_1_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\1\pingpong_latency_2.txt")/10e9; 
p1_2_1_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\2\pingpong_latency_2.txt")/10e9; 
p1_2_1_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\3\pingpong_latency_2.txt")/10e9; 
p1_2_1_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\4\pingpong_latency_2.txt")/10e9; 
p1_2_1_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\5\pingpong_latency_2.txt")/10e9; 
p1_2_1_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\6\pingpong_latency_2.txt")/10e9; 
p1_2_1_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\7\pingpong_latency_2.txt")/10e9; 
p1_2_1_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\8\pingpong_latency_2.txt")/10e9; 
p1_2_1_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\9\pingpong_latency_2.txt")/10e9; 
p1_2_1_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\10\pingpong_latency_2.txt")/10e9; 
p1_2_1_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\11\pingpong_latency_2.txt")/10e9; 
p1_2_1_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\12\pingpong_latency_2.txt")/10e9; 
p1_2_1_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\13\pingpong_latency_2.txt")/10e9; 
p1_2_1_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\14\pingpong_latency_2.txt")/10e9; 
p1_2_1_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\15\pingpong_latency_2.txt")/10e9; 
p1_2_1_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\16\pingpong_latency_2.txt")/10e9; 
p1_2_1_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\17\pingpong_latency_2.txt")/10e9; 
p1_2_1_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\18\pingpong_latency_2.txt")/10e9; 
p1_2_1_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\19\pingpong_latency_2.txt")/10e9; 
p1_2_1_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\20\pingpong_latency_2.txt")/10e9; 
p1_2_1_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\1\pingpong_latency_3.txt")/10e9; 
p1_2_1_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\2\pingpong_latency_3.txt")/10e9; 
p1_2_1_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\3\pingpong_latency_3.txt")/10e9; 
p1_2_1_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\4\pingpong_latency_3.txt")/10e9; 
p1_2_1_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\5\pingpong_latency_3.txt")/10e9; 
p1_2_1_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\6\pingpong_latency_3.txt")/10e9; 
p1_2_1_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\7\pingpong_latency_3.txt")/10e9; 
p1_2_1_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\8\pingpong_latency_3.txt")/10e9; 
p1_2_1_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\9\pingpong_latency_3.txt")/10e9; 
p1_2_1_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\10\pingpong_latency_3.txt")/10e9; 
p1_2_1_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\11\pingpong_latency_3.txt")/10e9; 
p1_2_1_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\12\pingpong_latency_3.txt")/10e9; 
p1_2_1_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\13\pingpong_latency_3.txt")/10e9; 
p1_2_1_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\14\pingpong_latency_3.txt")/10e9; 
p1_2_1_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\15\pingpong_latency_3.txt")/10e9; 
p1_2_1_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\16\pingpong_latency_3.txt")/10e9; 
p1_2_1_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\17\pingpong_latency_3.txt")/10e9; 
p1_2_1_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\18\pingpong_latency_3.txt")/10e9; 
p1_2_1_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\19\pingpong_latency_3.txt")/10e9; 
p1_2_1_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.1ms\20\pingpong_latency_3.txt")/10e9; 

latency_2_1_avg_1 = mean([mean(p1_2_1_1_1) mean(p1_2_1_2_1) mean(p1_2_1_3_1) mean(p1_2_1_4_1) mean(p1_2_1_5_1) mean(p1_2_1_6_1) mean(p1_2_1_7_1) mean(p1_2_1_8_1) mean(p1_2_1_9_1) mean(p1_2_1_10_1) mean(p1_2_1_11_1) mean(p1_2_1_12_1) mean(p1_2_1_13_1) mean(p1_2_1_14_1) mean(p1_2_1_15_1) mean(p1_2_1_16_1) mean(p1_2_1_17_1) mean(p1_2_1_18_1) mean(p1_2_1_19_1) mean(p1_2_1_20_1)])
latency_2_1_std_1 = std([mean(p1_2_1_1_1) mean(p1_2_1_2_1) mean(p1_2_1_3_1) mean(p1_2_1_4_1) mean(p1_2_1_5_1) mean(p1_2_1_6_1) mean(p1_2_1_7_1) mean(p1_2_1_8_1) mean(p1_2_1_9_1) mean(p1_2_1_10_1) mean(p1_2_1_11_1) mean(p1_2_1_12_1) mean(p1_2_1_13_1) mean(p1_2_1_14_1) mean(p1_2_1_15_1) mean(p1_2_1_16_1) mean(p1_2_1_17_1) mean(p1_2_1_18_1) mean(p1_2_1_19_1) mean(p1_2_1_20_1)])
tl_2_1_avg_1 = mean([200-size(p1_2_1_1_1,1) 200-size(p1_2_1_2_1,1) 200-size(p1_2_1_3_1,1) 200-size(p1_2_1_4_1,1) 200-size(p1_2_1_5_1,1) 200-size(p1_2_1_6_1,1) 200-size(p1_2_1_7_1,1) 200-size(p1_2_1_8_1,1) 200-size(p1_2_1_9_1,1) 200-size(p1_2_1_10_1,1) 200-size(p1_2_1_11_1,1) 200-size(p1_2_1_12_1,1) 200-size(p1_2_1_13_1,1) 200-size(p1_2_1_14_1,1) 200-size(p1_2_1_15_1,1) 200-size(p1_2_1_16_1,1) 200-size(p1_2_1_17_1,1) 200-size(p1_2_1_18_1,1) 200-size(p1_2_1_19_1,1) 200-size(p1_2_1_20_1,1)]) 
latency_2_1_avg_2 = mean([mean(p1_2_1_2_1) mean(p1_2_1_2_2) mean(p1_2_1_3_2) mean(p1_2_1_4_2) mean(p1_2_1_5_2) mean(p1_2_1_6_2) mean(p1_2_1_7_2) mean(p1_2_1_8_2) mean(p1_2_1_9_2) mean(p1_2_1_10_2) mean(p1_2_1_12_1) mean(p1_2_1_12_2) mean(p1_2_1_13_2) mean(p1_2_1_14_2) mean(p1_2_1_15_2) mean(p1_2_1_16_2) mean(p1_2_1_17_2) mean(p1_2_1_18_2) mean(p1_2_1_19_2) mean(p1_2_1_20_2)])
latency_2_1_std_2 = std([mean(p1_2_1_2_1) mean(p1_2_1_2_2) mean(p1_2_1_3_2) mean(p1_2_1_4_2) mean(p1_2_1_5_2) mean(p1_2_1_6_2) mean(p1_2_1_7_2) mean(p1_2_1_8_2) mean(p1_2_1_9_2) mean(p1_2_1_10_2) mean(p1_2_1_12_1) mean(p1_2_1_12_2) mean(p1_2_1_13_2) mean(p1_2_1_14_2) mean(p1_2_1_15_2) mean(p1_2_1_16_2) mean(p1_2_1_17_2) mean(p1_2_1_18_2) mean(p1_2_1_19_2) mean(p1_2_1_20_2)])
tl_2_1_avg_2 = mean([200-size(p1_2_1_2_1,1) 200-size(p1_2_1_2_2,1) 200-size(p1_2_1_3_2,1) 200-size(p1_2_1_4_2,1) 200-size(p1_2_1_5_2,1) 200-size(p1_2_1_6_2,1) 200-size(p1_2_1_7_2,1) 200-size(p1_2_1_8_2,1) 200-size(p1_2_1_9_2,1) 200-size(p1_2_1_10_2,1) 200-size(p1_2_1_12_1,1) 200-size(p1_2_1_12_2,1) 200-size(p1_2_1_13_2,1) 200-size(p1_2_1_14_2,1) 200-size(p1_2_1_15_2,1) 200-size(p1_2_1_16_2,1) 200-size(p1_2_1_17_2,1) 200-size(p1_2_1_18_2,1) 200-size(p1_2_1_19_2,1) 200-size(p1_2_1_20_2,1)]) 
latency_2_1_avg_3 = mean([mean(p1_2_1_3_3) mean(p1_2_1_2_3) mean(p1_2_1_3_3) mean(p1_2_1_4_3) mean(p1_2_1_5_3) mean(p1_2_1_6_3) mean(p1_2_1_7_3) mean(p1_2_1_8_3) mean(p1_2_1_9_3) mean(p1_2_1_10_3) mean(p1_2_1_11_3) mean(p1_2_1_12_3) mean(p1_2_1_13_3) mean(p1_2_1_14_3) mean(p1_2_1_15_3) mean(p1_2_1_16_3) mean(p1_2_1_17_3) mean(p1_2_1_18_3) mean(p1_2_1_19_3) mean(p1_2_1_20_3)])
latency_2_1_std_3 = std([mean(p1_2_1_3_3) mean(p1_2_1_2_3) mean(p1_2_1_3_3) mean(p1_2_1_4_3) mean(p1_2_1_5_3) mean(p1_2_1_6_3) mean(p1_2_1_7_3) mean(p1_2_1_8_3) mean(p1_2_1_9_3) mean(p1_2_1_10_3) mean(p1_2_1_11_3) mean(p1_2_1_12_3) mean(p1_2_1_13_3) mean(p1_2_1_14_3) mean(p1_2_1_15_3) mean(p1_2_1_16_3) mean(p1_2_1_17_3) mean(p1_2_1_18_3) mean(p1_2_1_19_3) mean(p1_2_1_20_3)])
tl_2_1_avg_3 = mean([200-size(p1_2_1_1_3,1) 200-size(p1_2_1_2_3,1) 200-size(p1_2_1_3_3,1) 200-size(p1_2_1_4_3,1) 200-size(p1_2_1_5_3,1) 200-size(p1_2_1_6_3,1) 200-size(p1_2_1_7_3,1) 200-size(p1_2_1_8_3,1) 200-size(p1_2_1_9_3,1) 200-size(p1_2_1_10_3,1) 200-size(p1_2_1_11_3,1) 200-size(p1_2_1_12_3,1) 200-size(p1_2_1_13_3,1) 200-size(p1_2_1_14_3,1) 200-size(p1_2_1_15_3,1) 200-size(p1_2_1_16_3,1) 200-size(p1_2_1_17_3,1) 200-size(p1_2_1_18_3,1) 200-size(p1_2_1_19_3,1) 200-size(p1_2_1_20_3,1)]) 

% 2.4 ms busy loop
p1_2_4_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\1\pingpong_latency_1.txt")/10e9; 
p1_2_4_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\2\pingpong_latency_1.txt")/10e9; 
p1_2_4_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\3\pingpong_latency_1.txt")/10e9; 
p1_2_4_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\4\pingpong_latency_1.txt")/10e9; 
p1_2_4_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\5\pingpong_latency_1.txt")/10e9; 
p1_2_4_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\6\pingpong_latency_1.txt")/10e9; 
p1_2_4_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\7\pingpong_latency_1.txt")/10e9; 
p1_2_4_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\8\pingpong_latency_1.txt")/10e9; 
p1_2_4_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\9\pingpong_latency_1.txt")/10e9; 
p1_2_4_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\10\pingpong_latency_1.txt")/10e9; 
p1_2_4_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\11\pingpong_latency_1.txt")/10e9; 
p1_2_4_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\12\pingpong_latency_1.txt")/10e9; 
p1_2_4_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\13\pingpong_latency_1.txt")/10e9; 
p1_2_4_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\14\pingpong_latency_1.txt")/10e9; 
p1_2_4_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\15\pingpong_latency_1.txt")/10e9; 
p1_2_4_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\16\pingpong_latency_1.txt")/10e9; 
p1_2_4_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\17\pingpong_latency_1.txt")/10e9; 
p1_2_4_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\18\pingpong_latency_1.txt")/10e9; 
p1_2_4_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\19\pingpong_latency_1.txt")/10e9; 
p1_2_4_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\20\pingpong_latency_1.txt")/10e9; 
p1_2_4_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\1\pingpong_latency_2.txt")/10e9; 
p1_2_4_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\2\pingpong_latency_2.txt")/10e9; 
p1_2_4_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\3\pingpong_latency_2.txt")/10e9; 
p1_2_4_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\4\pingpong_latency_2.txt")/10e9; 
p1_2_4_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\5\pingpong_latency_2.txt")/10e9; 
p1_2_4_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\6\pingpong_latency_2.txt")/10e9; 
p1_2_4_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\7\pingpong_latency_2.txt")/10e9; 
p1_2_4_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\8\pingpong_latency_2.txt")/10e9; 
p1_2_4_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\9\pingpong_latency_2.txt")/10e9; 
p1_2_4_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\10\pingpong_latency_2.txt")/10e9; 
p1_2_4_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\11\pingpong_latency_2.txt")/10e9; 
p1_2_4_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\12\pingpong_latency_2.txt")/10e9; 
p1_2_4_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\13\pingpong_latency_2.txt")/10e9; 
p1_2_4_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\14\pingpong_latency_2.txt")/10e9; 
p1_2_4_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\15\pingpong_latency_2.txt")/10e9; 
p1_2_4_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\16\pingpong_latency_2.txt")/10e9; 
p1_2_4_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\17\pingpong_latency_2.txt")/10e9; 
p1_2_4_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\18\pingpong_latency_2.txt")/10e9; 
p1_2_4_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\19\pingpong_latency_2.txt")/10e9; 
p1_2_4_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\20\pingpong_latency_2.txt")/10e9; 
p1_2_4_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\1\pingpong_latency_3.txt")/10e9; 
p1_2_4_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\2\pingpong_latency_3.txt")/10e9; 
p1_2_4_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\3\pingpong_latency_3.txt")/10e9; 
p1_2_4_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\4\pingpong_latency_3.txt")/10e9; 
p1_2_4_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\5\pingpong_latency_3.txt")/10e9; 
p1_2_4_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\6\pingpong_latency_3.txt")/10e9; 
p1_2_4_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\7\pingpong_latency_3.txt")/10e9; 
p1_2_4_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\8\pingpong_latency_3.txt")/10e9; 
p1_2_4_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\9\pingpong_latency_3.txt")/10e9; 
p1_2_4_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\10\pingpong_latency_3.txt")/10e9; 
p1_2_4_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\11\pingpong_latency_3.txt")/10e9; 
p1_2_4_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\12\pingpong_latency_3.txt")/10e9; 
p1_2_4_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\13\pingpong_latency_3.txt")/10e9; 
p1_2_4_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\14\pingpong_latency_3.txt")/10e9; 
p1_2_4_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\15\pingpong_latency_3.txt")/10e9; 
p1_2_4_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\16\pingpong_latency_3.txt")/10e9; 
p1_2_4_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\17\pingpong_latency_3.txt")/10e9; 
p1_2_4_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\18\pingpong_latency_3.txt")/10e9; 
p1_2_4_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\19\pingpong_latency_3.txt")/10e9; 
p1_2_4_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.4ms\20\pingpong_latency_3.txt")/10e9; 

latency_2_4_avg_1 = mean([mean(p1_2_4_1_1) mean(p1_2_4_2_1) mean(p1_2_4_3_1) mean(p1_2_4_4_1) mean(p1_2_4_5_1) mean(p1_2_4_6_1) mean(p1_2_4_7_1) mean(p1_2_4_8_1) mean(p1_2_4_9_1) mean(p1_2_4_10_1) mean(p1_2_4_11_1) mean(p1_2_4_12_1) mean(p1_2_4_13_1) mean(p1_2_4_14_1) mean(p1_2_4_15_1) mean(p1_2_4_16_1) mean(p1_2_4_17_1) mean(p1_2_4_18_1) mean(p1_2_4_19_1) mean(p1_2_4_20_1)])
latency_2_4_std_1 = std([mean(p1_2_4_1_1) mean(p1_2_4_2_1) mean(p1_2_4_3_1) mean(p1_2_4_4_1) mean(p1_2_4_5_1) mean(p1_2_4_6_1) mean(p1_2_4_7_1) mean(p1_2_4_8_1) mean(p1_2_4_9_1) mean(p1_2_4_10_1) mean(p1_2_4_11_1) mean(p1_2_4_12_1) mean(p1_2_4_13_1) mean(p1_2_4_14_1) mean(p1_2_4_15_1) mean(p1_2_4_16_1) mean(p1_2_4_17_1) mean(p1_2_4_18_1) mean(p1_2_4_19_1) mean(p1_2_4_20_1)])
tl_2_4_avg_1 = mean([200-size(p1_2_4_1_1,1) 200-size(p1_2_4_2_1,1) 200-size(p1_2_4_3_1,1) 200-size(p1_2_4_4_1,1) 200-size(p1_2_4_5_1,1) 200-size(p1_2_4_6_1,1) 200-size(p1_2_4_7_1,1) 200-size(p1_2_4_8_1,1) 200-size(p1_2_4_9_1,1) 200-size(p1_2_4_10_1,1) 200-size(p1_2_4_11_1,1) 200-size(p1_2_4_12_1,1) 200-size(p1_2_4_13_1,1) 200-size(p1_2_4_14_1,1) 200-size(p1_2_4_15_1,1) 200-size(p1_2_4_16_1,1) 200-size(p1_2_4_17_1,1) 200-size(p1_2_4_18_1,1) 200-size(p1_2_4_19_1,1) 200-size(p1_2_4_20_1,1)]) 
latency_2_4_avg_2 = mean([mean(p1_2_4_2_1) mean(p1_2_4_2_2) mean(p1_2_4_3_2) mean(p1_2_4_4_2) mean(p1_2_4_5_2) mean(p1_2_4_6_2) mean(p1_2_4_7_2) mean(p1_2_4_8_2) mean(p1_2_4_9_2) mean(p1_2_4_10_2) mean(p1_2_4_12_1) mean(p1_2_4_12_2) mean(p1_2_4_13_2) mean(p1_2_4_14_2) mean(p1_2_4_15_2) mean(p1_2_4_16_2) mean(p1_2_4_17_2) mean(p1_2_4_18_2) mean(p1_2_4_19_2) mean(p1_2_4_20_2)])
latency_2_4_std_2 = std([mean(p1_2_4_2_1) mean(p1_2_4_2_2) mean(p1_2_4_3_2) mean(p1_2_4_4_2) mean(p1_2_4_5_2) mean(p1_2_4_6_2) mean(p1_2_4_7_2) mean(p1_2_4_8_2) mean(p1_2_4_9_2) mean(p1_2_4_10_2) mean(p1_2_4_12_1) mean(p1_2_4_12_2) mean(p1_2_4_13_2) mean(p1_2_4_14_2) mean(p1_2_4_15_2) mean(p1_2_4_16_2) mean(p1_2_4_17_2) mean(p1_2_4_18_2) mean(p1_2_4_19_2) mean(p1_2_4_20_2)])
tl_2_4_avg_2 = mean([200-size(p1_2_4_2_1,1) 200-size(p1_2_4_2_2,1) 200-size(p1_2_4_3_2,1) 200-size(p1_2_4_4_2,1) 200-size(p1_2_4_5_2,1) 200-size(p1_2_4_6_2,1) 200-size(p1_2_4_7_2,1) 200-size(p1_2_4_8_2,1) 200-size(p1_2_4_9_2,1) 200-size(p1_2_4_10_2,1) 200-size(p1_2_4_12_1,1) 200-size(p1_2_4_12_2,1) 200-size(p1_2_4_13_2,1) 200-size(p1_2_4_14_2,1) 200-size(p1_2_4_15_2,1) 200-size(p1_2_4_16_2,1) 200-size(p1_2_4_17_2,1) 200-size(p1_2_4_18_2,1) 200-size(p1_2_4_19_2,1) 200-size(p1_2_4_20_2,1)]) 
latency_2_4_avg_3 = mean([mean(p1_2_4_3_3) mean(p1_2_4_2_3) mean(p1_2_4_3_3) mean(p1_2_4_4_3) mean(p1_2_4_5_3) mean(p1_2_4_6_3) mean(p1_2_4_7_3) mean(p1_2_4_8_3) mean(p1_2_4_9_3) mean(p1_2_4_10_3) mean(p1_2_4_11_3) mean(p1_2_4_12_3) mean(p1_2_4_13_3) mean(p1_2_4_14_3) mean(p1_2_4_15_3) mean(p1_2_4_16_3) mean(p1_2_4_17_3) mean(p1_2_4_18_3) mean(p1_2_4_19_3) mean(p1_2_4_20_3)])
latency_2_4_std_3 = std([mean(p1_2_4_3_3) mean(p1_2_4_2_3) mean(p1_2_4_3_3) mean(p1_2_4_4_3) mean(p1_2_4_5_3) mean(p1_2_4_6_3) mean(p1_2_4_7_3) mean(p1_2_4_8_3) mean(p1_2_4_9_3) mean(p1_2_4_10_3) mean(p1_2_4_11_3) mean(p1_2_4_12_3) mean(p1_2_4_13_3) mean(p1_2_4_14_3) mean(p1_2_4_15_3) mean(p1_2_4_16_3) mean(p1_2_4_17_3) mean(p1_2_4_18_3) mean(p1_2_4_19_3) mean(p1_2_4_20_3)])
tl_2_4_avg_3 = mean([200-size(p1_2_4_1_3,1) 200-size(p1_2_4_2_3,1) 200-size(p1_2_4_3_3,1) 200-size(p1_2_4_4_3,1) 200-size(p1_2_4_5_3,1) 200-size(p1_2_4_6_3,1) 200-size(p1_2_4_7_3,1) 200-size(p1_2_4_8_3,1) 200-size(p1_2_4_9_3,1) 200-size(p1_2_4_10_3,1) 200-size(p1_2_4_11_3,1) 200-size(p1_2_4_12_3,1) 200-size(p1_2_4_13_3,1) 200-size(p1_2_4_14_3,1) 200-size(p1_2_4_15_3,1) 200-size(p1_2_4_16_3,1) 200-size(p1_2_4_17_3,1) 200-size(p1_2_4_18_3,1) 200-size(p1_2_4_19_3,1) 200-size(p1_2_4_20_3,1)]) 

% 2.7 ms busy loop
p1_2_7_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\1\pingpong_latency_1.txt")/10e9; 
p1_2_7_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\2\pingpong_latency_1.txt")/10e9; 
p1_2_7_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\3\pingpong_latency_1.txt")/10e9; 
p1_2_7_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\4\pingpong_latency_1.txt")/10e9; 
p1_2_7_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\5\pingpong_latency_1.txt")/10e9; 
p1_2_7_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\6\pingpong_latency_1.txt")/10e9; 
p1_2_7_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\7\pingpong_latency_1.txt")/10e9; 
p1_2_7_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\8\pingpong_latency_1.txt")/10e9; 
p1_2_7_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\9\pingpong_latency_1.txt")/10e9; 
p1_2_7_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\10\pingpong_latency_1.txt")/10e9; 
p1_2_7_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\11\pingpong_latency_1.txt")/10e9; 
p1_2_7_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\12\pingpong_latency_1.txt")/10e9; 
p1_2_7_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\13\pingpong_latency_1.txt")/10e9; 
p1_2_7_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\14\pingpong_latency_1.txt")/10e9; 
p1_2_7_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\15\pingpong_latency_1.txt")/10e9; 
p1_2_7_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\16\pingpong_latency_1.txt")/10e9; 
p1_2_7_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\17\pingpong_latency_1.txt")/10e9; 
p1_2_7_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\18\pingpong_latency_1.txt")/10e9; 
p1_2_7_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\19\pingpong_latency_1.txt")/10e9; 
p1_2_7_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\20\pingpong_latency_1.txt")/10e9; 
p1_2_7_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\1\pingpong_latency_2.txt")/10e9; 
p1_2_7_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\2\pingpong_latency_2.txt")/10e9; 
p1_2_7_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\3\pingpong_latency_2.txt")/10e9; 
p1_2_7_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\4\pingpong_latency_2.txt")/10e9; 
p1_2_7_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\5\pingpong_latency_2.txt")/10e9; 
p1_2_7_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\6\pingpong_latency_2.txt")/10e9; 
p1_2_7_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\7\pingpong_latency_2.txt")/10e9; 
p1_2_7_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\8\pingpong_latency_2.txt")/10e9; 
p1_2_7_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\9\pingpong_latency_2.txt")/10e9; 
p1_2_7_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\10\pingpong_latency_2.txt")/10e9; 
p1_2_7_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\11\pingpong_latency_2.txt")/10e9; 
p1_2_7_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\12\pingpong_latency_2.txt")/10e9; 
p1_2_7_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\13\pingpong_latency_2.txt")/10e9; 
p1_2_7_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\14\pingpong_latency_2.txt")/10e9; 
p1_2_7_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\15\pingpong_latency_2.txt")/10e9; 
p1_2_7_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\16\pingpong_latency_2.txt")/10e9; 
p1_2_7_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\17\pingpong_latency_2.txt")/10e9; 
p1_2_7_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\18\pingpong_latency_2.txt")/10e9; 
p1_2_7_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\19\pingpong_latency_2.txt")/10e9; 
p1_2_7_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\20\pingpong_latency_2.txt")/10e9; 
p1_2_7_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\1\pingpong_latency_3.txt")/10e9; 
p1_2_7_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\2\pingpong_latency_3.txt")/10e9; 
p1_2_7_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\3\pingpong_latency_3.txt")/10e9; 
p1_2_7_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\4\pingpong_latency_3.txt")/10e9; 
p1_2_7_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\5\pingpong_latency_3.txt")/10e9; 
p1_2_7_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\6\pingpong_latency_3.txt")/10e9; 
p1_2_7_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\7\pingpong_latency_3.txt")/10e9; 
p1_2_7_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\8\pingpong_latency_3.txt")/10e9; 
p1_2_7_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\9\pingpong_latency_3.txt")/10e9; 
p1_2_7_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\10\pingpong_latency_3.txt")/10e9; 
p1_2_7_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\11\pingpong_latency_3.txt")/10e9; 
p1_2_7_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\12\pingpong_latency_3.txt")/10e9; 
p1_2_7_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\13\pingpong_latency_3.txt")/10e9; 
p1_2_7_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\14\pingpong_latency_3.txt")/10e9; 
p1_2_7_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\15\pingpong_latency_3.txt")/10e9; 
p1_2_7_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\16\pingpong_latency_3.txt")/10e9; 
p1_2_7_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\17\pingpong_latency_3.txt")/10e9; 
p1_2_7_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\18\pingpong_latency_3.txt")/10e9; 
p1_2_7_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\19\pingpong_latency_3.txt")/10e9; 
p1_2_7_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\2.7ms\20\pingpong_latency_3.txt")/10e9; 

latency_2_7_avg_1 = mean([mean(p1_2_7_1_1) mean(p1_2_7_2_1) mean(p1_2_7_3_1) mean(p1_2_7_4_1) mean(p1_2_7_5_1) mean(p1_2_7_6_1) mean(p1_2_7_7_1) mean(p1_2_7_8_1) mean(p1_2_7_9_1) mean(p1_2_7_10_1) mean(p1_2_7_11_1) mean(p1_2_7_12_1) mean(p1_2_7_13_1) mean(p1_2_7_14_1) mean(p1_2_7_15_1) mean(p1_2_7_16_1) mean(p1_2_7_17_1) mean(p1_2_7_18_1) mean(p1_2_7_19_1) mean(p1_2_7_20_1)])
latency_2_7_std_1 = std([mean(p1_2_7_1_1) mean(p1_2_7_2_1) mean(p1_2_7_3_1) mean(p1_2_7_4_1) mean(p1_2_7_5_1) mean(p1_2_7_6_1) mean(p1_2_7_7_1) mean(p1_2_7_8_1) mean(p1_2_7_9_1) mean(p1_2_7_10_1) mean(p1_2_7_11_1) mean(p1_2_7_12_1) mean(p1_2_7_13_1) mean(p1_2_7_14_1) mean(p1_2_7_15_1) mean(p1_2_7_16_1) mean(p1_2_7_17_1) mean(p1_2_7_18_1) mean(p1_2_7_19_1) mean(p1_2_7_20_1)])
tl_2_7_avg_1 = mean([200-size(p1_2_7_1_1,1) 200-size(p1_2_7_2_1,1) 200-size(p1_2_7_3_1,1) 200-size(p1_2_7_4_1,1) 200-size(p1_2_7_5_1,1) 200-size(p1_2_7_6_1,1) 200-size(p1_2_7_7_1,1) 200-size(p1_2_7_8_1,1) 200-size(p1_2_7_9_1,1) 200-size(p1_2_7_10_1,1) 200-size(p1_2_7_11_1,1) 200-size(p1_2_7_12_1,1) 200-size(p1_2_7_13_1,1) 200-size(p1_2_7_14_1,1) 200-size(p1_2_7_15_1,1) 200-size(p1_2_7_16_1,1) 200-size(p1_2_7_17_1,1) 200-size(p1_2_7_18_1,1) 200-size(p1_2_7_19_1,1) 200-size(p1_2_7_20_1,1)]) 
latency_2_7_avg_2 = mean([mean(p1_2_7_2_1) mean(p1_2_7_2_2) mean(p1_2_7_3_2) mean(p1_2_7_4_2) mean(p1_2_7_5_2) mean(p1_2_7_6_2) mean(p1_2_7_7_2) mean(p1_2_7_8_2) mean(p1_2_7_9_2) mean(p1_2_7_10_2) mean(p1_2_7_12_1) mean(p1_2_7_12_2) mean(p1_2_7_13_2) mean(p1_2_7_14_2) mean(p1_2_7_15_2) mean(p1_2_7_16_2) mean(p1_2_7_17_2) mean(p1_2_7_18_2) mean(p1_2_7_19_2) mean(p1_2_7_20_2)])
latency_2_7_std_2 = std([mean(p1_2_7_2_1) mean(p1_2_7_2_2) mean(p1_2_7_3_2) mean(p1_2_7_4_2) mean(p1_2_7_5_2) mean(p1_2_7_6_2) mean(p1_2_7_7_2) mean(p1_2_7_8_2) mean(p1_2_7_9_2) mean(p1_2_7_10_2) mean(p1_2_7_12_1) mean(p1_2_7_12_2) mean(p1_2_7_13_2) mean(p1_2_7_14_2) mean(p1_2_7_15_2) mean(p1_2_7_16_2) mean(p1_2_7_17_2) mean(p1_2_7_18_2) mean(p1_2_7_19_2) mean(p1_2_7_20_2)])
tl_2_7_avg_2 = mean([200-size(p1_2_7_2_1,1) 200-size(p1_2_7_2_2,1) 200-size(p1_2_7_3_2,1) 200-size(p1_2_7_4_2,1) 200-size(p1_2_7_5_2,1) 200-size(p1_2_7_6_2,1) 200-size(p1_2_7_7_2,1) 200-size(p1_2_7_8_2,1) 200-size(p1_2_7_9_2,1) 200-size(p1_2_7_10_2,1) 200-size(p1_2_7_12_1,1) 200-size(p1_2_7_12_2,1) 200-size(p1_2_7_13_2,1) 200-size(p1_2_7_14_2,1) 200-size(p1_2_7_15_2,1) 200-size(p1_2_7_16_2,1) 200-size(p1_2_7_17_2,1) 200-size(p1_2_7_18_2,1) 200-size(p1_2_7_19_2,1) 200-size(p1_2_7_20_2,1)]) 
latency_2_7_avg_3 = mean([mean(p1_2_7_3_3) mean(p1_2_7_2_3) mean(p1_2_7_3_3) mean(p1_2_7_4_3) mean(p1_2_7_5_3) mean(p1_2_7_6_3) mean(p1_2_7_7_3) mean(p1_2_7_8_3) mean(p1_2_7_9_3) mean(p1_2_7_10_3) mean(p1_2_7_11_3) mean(p1_2_7_12_3) mean(p1_2_7_13_3) mean(p1_2_7_14_3) mean(p1_2_7_15_3) mean(p1_2_7_16_3) mean(p1_2_7_17_3) mean(p1_2_7_18_3) mean(p1_2_7_19_3) mean(p1_2_7_20_3)])
latency_2_7_std_3 = std([mean(p1_2_7_3_3) mean(p1_2_7_2_3) mean(p1_2_7_3_3) mean(p1_2_7_4_3) mean(p1_2_7_5_3) mean(p1_2_7_6_3) mean(p1_2_7_7_3) mean(p1_2_7_8_3) mean(p1_2_7_9_3) mean(p1_2_7_10_3) mean(p1_2_7_11_3) mean(p1_2_7_12_3) mean(p1_2_7_13_3) mean(p1_2_7_14_3) mean(p1_2_7_15_3) mean(p1_2_7_16_3) mean(p1_2_7_17_3) mean(p1_2_7_18_3) mean(p1_2_7_19_3) mean(p1_2_7_20_3)])
tl_2_7_avg_3 = mean([200-size(p1_2_7_1_3,1) 200-size(p1_2_7_2_3,1) 200-size(p1_2_7_3_3,1) 200-size(p1_2_7_4_3,1) 200-size(p1_2_7_5_3,1) 200-size(p1_2_7_6_3,1) 200-size(p1_2_7_7_3,1) 200-size(p1_2_7_8_3,1) 200-size(p1_2_7_9_3,1) 200-size(p1_2_7_10_3,1) 200-size(p1_2_7_11_3,1) 200-size(p1_2_7_12_3,1) 200-size(p1_2_7_13_3,1) 200-size(p1_2_7_14_3,1) 200-size(p1_2_7_15_3,1) 200-size(p1_2_7_16_3,1) 200-size(p1_2_7_17_3,1) 200-size(p1_2_7_18_3,1) 200-size(p1_2_7_19_3,1) 200-size(p1_2_7_20_3,1)]) 

% 3 ms busy loop
p1_3_1_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\1\pingpong_latency_1.txt")/10e9; 
p1_3_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\2\pingpong_latency_1.txt")/10e9; 
p1_3_3_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\3\pingpong_latency_1.txt")/10e9; 
p1_3_4_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\4\pingpong_latency_1.txt")/10e9; 
p1_3_5_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\5\pingpong_latency_1.txt")/10e9; 
p1_3_6_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\6\pingpong_latency_1.txt")/10e9; 
p1_3_7_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\7\pingpong_latency_1.txt")/10e9; 
p1_3_8_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\8\pingpong_latency_1.txt")/10e9; 
p1_3_9_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\9\pingpong_latency_1.txt")/10e9; 
p1_3_10_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\10\pingpong_latency_1.txt")/10e9; 
p1_3_11_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\11\pingpong_latency_1.txt")/10e9; 
p1_3_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\12\pingpong_latency_1.txt")/10e9; 
p1_3_13_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\13\pingpong_latency_1.txt")/10e9; 
p1_3_14_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\14\pingpong_latency_1.txt")/10e9; 
p1_3_15_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\15\pingpong_latency_1.txt")/10e9; 
p1_3_16_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\16\pingpong_latency_1.txt")/10e9; 
p1_3_17_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\17\pingpong_latency_1.txt")/10e9; 
p1_3_18_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\18\pingpong_latency_1.txt")/10e9; 
p1_3_19_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\19\pingpong_latency_1.txt")/10e9; 
p1_3_20_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\20\pingpong_latency_1.txt")/10e9; 
p1_3_2_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\1\pingpong_latency_2.txt")/10e9; 
p1_3_2_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\2\pingpong_latency_2.txt")/10e9; 
p1_3_3_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\3\pingpong_latency_2.txt")/10e9; 
p1_3_4_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\4\pingpong_latency_2.txt")/10e9; 
p1_3_5_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\5\pingpong_latency_2.txt")/10e9; 
p1_3_6_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\6\pingpong_latency_2.txt")/10e9; 
p1_3_7_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\7\pingpong_latency_2.txt")/10e9; 
p1_3_8_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\8\pingpong_latency_2.txt")/10e9; 
p1_3_9_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\9\pingpong_latency_2.txt")/10e9; 
p1_3_10_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\10\pingpong_latency_2.txt")/10e9; 
p1_3_12_1 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\11\pingpong_latency_2.txt")/10e9; 
p1_3_12_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\12\pingpong_latency_2.txt")/10e9; 
p1_3_13_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\13\pingpong_latency_2.txt")/10e9; 
p1_3_14_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\14\pingpong_latency_2.txt")/10e9; 
p1_3_15_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\15\pingpong_latency_2.txt")/10e9; 
p1_3_16_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\16\pingpong_latency_2.txt")/10e9; 
p1_3_17_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\17\pingpong_latency_2.txt")/10e9; 
p1_3_18_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\18\pingpong_latency_2.txt")/10e9; 
p1_3_19_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\19\pingpong_latency_2.txt")/10e9; 
p1_3_20_2 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\20\pingpong_latency_2.txt")/10e9; 
p1_3_1_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\1\pingpong_latency_3.txt")/10e9; 
p1_3_2_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\2\pingpong_latency_3.txt")/10e9; 
p1_3_3_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\3\pingpong_latency_3.txt")/10e9; 
p1_3_4_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\4\pingpong_latency_3.txt")/10e9; 
p1_3_5_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\5\pingpong_latency_3.txt")/10e9; 
p1_3_6_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\6\pingpong_latency_3.txt")/10e9; 
p1_3_7_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\7\pingpong_latency_3.txt")/10e9; 
p1_3_8_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\8\pingpong_latency_3.txt")/10e9; 
p1_3_9_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\9\pingpong_latency_3.txt")/10e9; 
p1_3_10_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\10\pingpong_latency_3.txt")/10e9; 
p1_3_11_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\11\pingpong_latency_3.txt")/10e9; 
p1_3_12_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\12\pingpong_latency_3.txt")/10e9; 
p1_3_13_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\13\pingpong_latency_3.txt")/10e9; 
p1_3_14_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\14\pingpong_latency_3.txt")/10e9; 
p1_3_15_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\15\pingpong_latency_3.txt")/10e9; 
p1_3_16_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\16\pingpong_latency_3.txt")/10e9; 
p1_3_17_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\17\pingpong_latency_3.txt")/10e9; 
p1_3_18_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\18\pingpong_latency_3.txt")/10e9; 
p1_3_19_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\19\pingpong_latency_3.txt")/10e9; 
p1_3_20_3 = importdata("D:\Drive\01_RobSic\uros_benchmarking\ROS2\ping_pong_benchmarking\data\ensaios2\single_3_topic_reliable\3ms\20\pingpong_latency_3.txt")/10e9; 

latency_3_avg_1 = mean([mean(p1_3_1_1) mean(p1_3_2_1) mean(p1_3_3_1) mean(p1_3_4_1) mean(p1_3_5_1) mean(p1_3_6_1) mean(p1_3_7_1) mean(p1_3_8_1) mean(p1_3_9_1) mean(p1_3_10_1) mean(p1_3_11_1) mean(p1_3_12_1) mean(p1_3_13_1) mean(p1_3_14_1) mean(p1_3_15_1) mean(p1_3_16_1) mean(p1_3_17_1) mean(p1_3_18_1) mean(p1_3_19_1) mean(p1_3_20_1)])
latency_3_std_1 = std([mean(p1_3_1_1) mean(p1_3_2_1) mean(p1_3_3_1) mean(p1_3_4_1) mean(p1_3_5_1) mean(p1_3_6_1) mean(p1_3_7_1) mean(p1_3_8_1) mean(p1_3_9_1) mean(p1_3_10_1) mean(p1_3_11_1) mean(p1_3_12_1) mean(p1_3_13_1) mean(p1_3_14_1) mean(p1_3_15_1) mean(p1_3_16_1) mean(p1_3_17_1) mean(p1_3_18_1) mean(p1_3_19_1) mean(p1_3_20_1)])
tl_3_avg_1 = mean([200-size(p1_3_1_1,1) 200-size(p1_3_2_1,1) 200-size(p1_3_3_1,1) 200-size(p1_3_4_1,1) 200-size(p1_3_5_1,1) 200-size(p1_3_6_1,1) 200-size(p1_3_7_1,1) 200-size(p1_3_8_1,1) 200-size(p1_3_9_1,1) 200-size(p1_3_10_1,1) 200-size(p1_3_11_1,1) 200-size(p1_3_12_1,1) 200-size(p1_3_13_1,1) 200-size(p1_3_14_1,1) 200-size(p1_3_15_1,1) 200-size(p1_3_16_1,1) 200-size(p1_3_17_1,1) 200-size(p1_3_18_1,1) 200-size(p1_3_19_1,1) 200-size(p1_3_20_1,1)]) 
latency_3_avg_2 = mean([mean(p1_3_2_1) mean(p1_3_2_2) mean(p1_3_3_2) mean(p1_3_4_2) mean(p1_3_5_2) mean(p1_3_6_2) mean(p1_3_7_2) mean(p1_3_8_2) mean(p1_3_9_2) mean(p1_3_10_2) mean(p1_3_12_1) mean(p1_3_12_2) mean(p1_3_13_2) mean(p1_3_14_2) mean(p1_3_15_2) mean(p1_3_16_2) mean(p1_3_17_2) mean(p1_3_18_2) mean(p1_3_19_2) mean(p1_3_20_2)])
latency_3_std_2 = std([mean(p1_3_2_1) mean(p1_3_2_2) mean(p1_3_3_2) mean(p1_3_4_2) mean(p1_3_5_2) mean(p1_3_6_2) mean(p1_3_7_2) mean(p1_3_8_2) mean(p1_3_9_2) mean(p1_3_10_2) mean(p1_3_12_1) mean(p1_3_12_2) mean(p1_3_13_2) mean(p1_3_14_2) mean(p1_3_15_2) mean(p1_3_16_2) mean(p1_3_17_2) mean(p1_3_18_2) mean(p1_3_19_2) mean(p1_3_20_2)])
tl_3_avg_2 = mean([200-size(p1_3_2_1,1) 200-size(p1_3_2_2,1) 200-size(p1_3_3_2,1) 200-size(p1_3_4_2,1) 200-size(p1_3_5_2,1) 200-size(p1_3_6_2,1) 200-size(p1_3_7_2,1) 200-size(p1_3_8_2,1) 200-size(p1_3_9_2,1) 200-size(p1_3_10_2,1) 200-size(p1_3_12_1,1) 200-size(p1_3_12_2,1) 200-size(p1_3_13_2,1) 200-size(p1_3_14_2,1) 200-size(p1_3_15_2,1) 200-size(p1_3_16_2,1) 200-size(p1_3_17_2,1) 200-size(p1_3_18_2,1) 200-size(p1_3_19_2,1) 200-size(p1_3_20_2,1)]) 
latency_3_avg_3 = mean([mean(p1_3_3_3) mean(p1_3_2_3) mean(p1_3_3_3) mean(p1_3_4_3) mean(p1_3_5_3) mean(p1_3_6_3) mean(p1_3_7_3) mean(p1_3_8_3) mean(p1_3_9_3) mean(p1_3_10_3) mean(p1_3_11_3) mean(p1_3_12_3) mean(p1_3_13_3) mean(p1_3_14_3) mean(p1_3_15_3) mean(p1_3_16_3) mean(p1_3_17_3) mean(p1_3_18_3) mean(p1_3_19_3) mean(p1_3_20_3)])
latency_3_std_3 = std([mean(p1_3_3_3) mean(p1_3_2_3) mean(p1_3_3_3) mean(p1_3_4_3) mean(p1_3_5_3) mean(p1_3_6_3) mean(p1_3_7_3) mean(p1_3_8_3) mean(p1_3_9_3) mean(p1_3_10_3) mean(p1_3_11_3) mean(p1_3_12_3) mean(p1_3_13_3) mean(p1_3_14_3) mean(p1_3_15_3) mean(p1_3_16_3) mean(p1_3_17_3) mean(p1_3_18_3) mean(p1_3_19_3) mean(p1_3_20_3)])
tl_3_avg_3 = mean([200-size(p1_3_1_3,1) 200-size(p1_3_2_3,1) 200-size(p1_3_3_3,1) 200-size(p1_3_4_3,1) 200-size(p1_3_5_3,1) 200-size(p1_3_6_3,1) 200-size(p1_3_7_3,1) 200-size(p1_3_8_3,1) 200-size(p1_3_9_3,1) 200-size(p1_3_10_3,1) 200-size(p1_3_11_3,1) 200-size(p1_3_12_3,1) 200-size(p1_3_13_3,1) 200-size(p1_3_14_3,1) 200-size(p1_3_15_3,1) 200-size(p1_3_16_3,1) 200-size(p1_3_17_3,1) 200-size(p1_3_18_3,1) 200-size(p1_3_19_3,1) 200-size(p1_3_20_3,1)]) 

figure
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_1 latency_0_6_avg_1 latency_0_9_avg_1 latency_1_2_avg_1 latency_1_5_avg_1 latency_1_8_avg_1 latency_2_1_avg_1 latency_2_4_avg_1 latency_2_7_avg_1 latency_3_avg_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_2 latency_0_6_avg_2 latency_0_9_avg_2 latency_1_2_avg_2 latency_1_5_avg_2 latency_1_8_avg_2 latency_2_1_avg_2 latency_2_4_avg_2 latency_2_7_avg_2 latency_3_avg_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_3 latency_0_6_avg_3 latency_0_9_avg_3 latency_1_2_avg_3 latency_1_5_avg_3 latency_1_8_avg_3 latency_2_1_avg_3 latency_2_4_avg_3 latency_2_7_avg_3 latency_3_avg_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Latency')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Latency (s)')
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5e-3 0 12e-3])
figure
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_1 latency_0_6_std_1 latency_0_9_std_1 latency_1_2_std_1 latency_1_5_std_1 latency_1_8_std_1 latency_2_1_std_1 latency_2_4_std_1 latency_2_7_std_1 latency_3_std_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_2 latency_0_6_std_2 latency_0_9_std_2 latency_1_2_std_2 latency_1_5_std_2 latency_1_8_std_2 latency_2_1_std_2 latency_2_4_std_2 latency_2_7_std_2 latency_3_std_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_3 latency_0_6_std_3 latency_0_9_std_3 latency_1_2_std_3 latency_1_5_std_3 latency_1_8_std_3 latency_2_1_std_3 latency_2_4_std_3 latency_2_7_std_3 latency_3_std_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Jitter')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Jitter (s)')
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5e-3 0 2e-3])
figure
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_1 tl_0_6_avg_1 tl_0_9_avg_1 tl_1_2_avg_1 tl_1_5_avg_1 tl_1_8_avg_1 tl_2_1_avg_1 tl_2_4_avg_1 tl_2_7_avg_1 tl_3_avg_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_2 tl_0_6_avg_2 tl_0_9_avg_2 tl_1_2_avg_2 tl_1_5_avg_2 tl_1_8_avg_2 tl_2_1_avg_2 tl_2_4_avg_2 tl_2_7_avg_2 tl_3_avg_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_3 tl_0_6_avg_3 tl_0_9_avg_3 tl_1_2_avg_3 tl_1_5_avg_3 tl_1_8_avg_3 tl_2_1_avg_3 tl_2_4_avg_3 tl_2_7_avg_3 tl_3_avg_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Topic Loss')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Topic Loss')
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5e-3 0 80])

figure
subplot(3,1,1)
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_1 latency_0_6_avg_1 latency_0_9_avg_1 latency_1_2_avg_1 latency_1_5_avg_1 latency_1_8_avg_1 latency_2_1_avg_1 latency_2_4_avg_1 latency_2_7_avg_1 latency_3_avg_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_2 latency_0_6_avg_2 latency_0_9_avg_2 latency_1_2_avg_2 latency_1_5_avg_2 latency_1_8_avg_2 latency_2_1_avg_2 latency_2_4_avg_2 latency_2_7_avg_2 latency_3_avg_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_avg_3 latency_0_6_avg_3 latency_0_9_avg_3 latency_1_2_avg_3 latency_1_5_avg_3 latency_1_8_avg_3 latency_2_1_avg_3 latency_2_4_avg_3 latency_2_7_avg_3 latency_3_avg_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Latency')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Latency (s)')
    legend('Topic 1', 'Topic 2', 'Topic 3','Location','eastoutside')
    axis([0 3.5e-3 0 12e-3])

subplot(3,1,2)
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_1 latency_0_6_std_1 latency_0_9_std_1 latency_1_2_std_1 latency_1_5_std_1 latency_1_8_std_1 latency_2_1_std_1 latency_2_4_std_1 latency_2_7_std_1 latency_3_std_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_2 latency_0_6_std_2 latency_0_9_std_2 latency_1_2_std_2 latency_1_5_std_2 latency_1_8_std_2 latency_2_1_std_2 latency_2_4_std_2 latency_2_7_std_2 latency_3_std_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[latency_0_3_std_3 latency_0_6_std_3 latency_0_9_std_3 latency_1_2_std_3 latency_1_5_std_3 latency_1_8_std_3 latency_2_1_std_3 latency_2_4_std_3 latency_2_7_std_3 latency_3_std_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Jitter')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Jitter (s)')
    legend('Topic 1', 'Topic 2', 'Topic 3','Location','eastoutside')
    axis([0 3.5e-3 0 2e-3])

subplot(3,1,3)
plot([0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_1 tl_0_6_avg_1 tl_0_9_avg_1 tl_1_2_avg_1 tl_1_5_avg_1 tl_1_8_avg_1 tl_2_1_avg_1 tl_2_4_avg_1 tl_2_7_avg_1 tl_3_avg_1],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_2 tl_0_6_avg_2 tl_0_9_avg_2 tl_1_2_avg_2 tl_1_5_avg_2 tl_1_8_avg_2 tl_2_1_avg_2 tl_2_4_avg_2 tl_2_7_avg_2 tl_3_avg_2],[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3],[tl_0_3_avg_3 tl_0_6_avg_3 tl_0_9_avg_3 tl_1_2_avg_3 tl_1_5_avg_3 tl_1_8_avg_3 tl_2_1_avg_3 tl_2_4_avg_3 tl_2_7_avg_3 tl_3_avg_3],'-*', 'Linewidth', 2)
hold on
    grid on
    title('Single Thread - 3 topic - Topic Loss')
    xlabel('Callback Busy-Loop (s)')
    ylabel('Topic Loss')
    legend('Topic 1', 'Topic 2', 'Topic 3','Location','eastoutside')
    axis([0 3.5e-3 0 80])
