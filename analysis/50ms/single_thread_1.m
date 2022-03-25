% Single Thread 1 topic analysis

close all, clear all, clc

% 0.3 ms busy loop
p1_0_3_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\1\pingpong_latency.txt")/10e9; 
p1_0_3_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\2\pingpong_latency.txt")/10e9; 
p1_0_3_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\3\pingpong_latency.txt")/10e9; 
p1_0_3_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\4\pingpong_latency.txt")/10e9; 
p1_0_3_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\5\pingpong_latency.txt")/10e9; 
p1_0_3_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\6\pingpong_latency.txt")/10e9; 
p1_0_3_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\7\pingpong_latency.txt")/10e9; 
p1_0_3_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\8\pingpong_latency.txt")/10e9; 
p1_0_3_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\9\pingpong_latency.txt")/10e9; 
p1_0_3_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\10\pingpong_latency.txt")/10e9; 
p1_0_3_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\11\pingpong_latency.txt")/10e9; 
p1_0_3_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\12\pingpong_latency.txt")/10e9; 
p1_0_3_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\13\pingpong_latency.txt")/10e9; 
p1_0_3_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\14\pingpong_latency.txt")/10e9; 
p1_0_3_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\15\pingpong_latency.txt")/10e9; 
p1_0_3_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\16\pingpong_latency.txt")/10e9; 
p1_0_3_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\17\pingpong_latency.txt")/10e9; 
p1_0_3_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\18\pingpong_latency.txt")/10e9; 
p1_0_3_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\19\pingpong_latency.txt")/10e9; 
p1_0_3_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.3ms\20\pingpong_latency.txt")/10e9; 

latency_0_3_avg = mean([mean(p1_0_3_1) mean(p1_0_3_2) mean(p1_0_3_3) mean(p1_0_3_4) mean(p1_0_3_5) mean(p1_0_3_6) mean(p1_0_3_7) mean(p1_0_3_8) mean(p1_0_3_9) mean(p1_0_3_10) mean(p1_0_3_11) mean(p1_0_3_12) mean(p1_0_3_13) mean(p1_0_3_14) mean(p1_0_3_15) mean(p1_0_3_16) mean(p1_0_3_17) mean(p1_0_3_18) mean(p1_0_3_19) mean(p1_0_3_20)])
latency_0_3_std = std([mean(p1_0_3_1) mean(p1_0_3_2) mean(p1_0_3_3) mean(p1_0_3_4) mean(p1_0_3_5) mean(p1_0_3_6) mean(p1_0_3_7) mean(p1_0_3_8) mean(p1_0_3_9) mean(p1_0_3_10) mean(p1_0_3_11) mean(p1_0_3_12) mean(p1_0_3_13) mean(p1_0_3_14) mean(p1_0_3_15) mean(p1_0_3_16) mean(p1_0_3_17) mean(p1_0_3_18) mean(p1_0_3_19) mean(p1_0_3_20)])
tl_0_3_avg = mean([200-size(p1_0_3_1,1) 200-size(p1_0_3_2,1) 200-size(p1_0_3_3,1) 200-size(p1_0_3_4,1) 200-size(p1_0_3_5,1) 200-size(p1_0_3_6,1) 200-size(p1_0_3_7,1) 200-size(p1_0_3_8,1) 200-size(p1_0_3_9,1) 200-size(p1_0_3_10,1) 200-size(p1_0_3_11,1) 200-size(p1_0_3_12,1) 200-size(p1_0_3_13,1) 200-size(p1_0_3_14,1) 200-size(p1_0_3_15,1) 200-size(p1_0_3_16,1) 200-size(p1_0_3_17,1) 200-size(p1_0_3_18,1) 200-size(p1_0_3_19,1) 200-size(p1_0_3_20,1)]) 
stem([mean(p1_0_3_1) mean(p1_0_3_2) mean(p1_0_3_3) mean(p1_0_3_4) mean(p1_0_3_5) mean(p1_0_3_6) mean(p1_0_3_7) mean(p1_0_3_8) mean(p1_0_3_9) mean(p1_0_3_10) mean(p1_0_3_11) mean(p1_0_3_12) mean(p1_0_3_13) mean(p1_0_3_14) mean(p1_0_3_15) mean(p1_0_3_16) mean(p1_0_3_17) mean(p1_0_3_18) mean(p1_0_3_19) mean(p1_0_3_20)])

% 0.6 ms busy loop
p1_0_6_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\1\pingpong_latency.txt")/10e9; 
p1_0_6_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\2\pingpong_latency.txt")/10e9; 
p1_0_6_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\3\pingpong_latency.txt")/10e9; 
p1_0_6_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\4\pingpong_latency.txt")/10e9; 
p1_0_6_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\5\pingpong_latency.txt")/10e9; 
p1_0_6_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\6\pingpong_latency.txt")/10e9; 
p1_0_6_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\7\pingpong_latency.txt")/10e9; 
p1_0_6_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\8\pingpong_latency.txt")/10e9; 
p1_0_6_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\9\pingpong_latency.txt")/10e9; 
p1_0_6_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\10\pingpong_latency.txt")/10e9; 
p1_0_6_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\11\pingpong_latency.txt")/10e9; 
p1_0_6_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\12\pingpong_latency.txt")/10e9; 
p1_0_6_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\13\pingpong_latency.txt")/10e9; 
p1_0_6_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\14\pingpong_latency.txt")/10e9; 
p1_0_6_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\15\pingpong_latency.txt")/10e9; 
p1_0_6_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\16\pingpong_latency.txt")/10e9; 
p1_0_6_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\17\pingpong_latency.txt")/10e9; 
p1_0_6_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\18\pingpong_latency.txt")/10e9; 
p1_0_6_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\19\pingpong_latency.txt")/10e9; 
p1_0_6_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.6ms\20\pingpong_latency.txt")/10e9; 

latency_0_6_avg = mean([mean(p1_0_6_1) mean(p1_0_6_2) mean(p1_0_6_3) mean(p1_0_6_4) mean(p1_0_6_5) mean(p1_0_6_6) mean(p1_0_6_7) mean(p1_0_6_8) mean(p1_0_6_9) mean(p1_0_6_10) mean(p1_0_6_11) mean(p1_0_6_12) mean(p1_0_6_13) mean(p1_0_6_14) mean(p1_0_6_15) mean(p1_0_6_16) mean(p1_0_6_17) mean(p1_0_6_18) mean(p1_0_6_19) mean(p1_0_6_20)])
latency_0_6_std = std([mean(p1_0_6_1) mean(p1_0_6_2) mean(p1_0_6_3) mean(p1_0_6_4) mean(p1_0_6_5) mean(p1_0_6_6) mean(p1_0_6_7) mean(p1_0_6_8) mean(p1_0_6_9) mean(p1_0_6_10) mean(p1_0_6_11) mean(p1_0_6_12) mean(p1_0_6_13) mean(p1_0_6_14) mean(p1_0_6_15) mean(p1_0_6_16) mean(p1_0_6_17) mean(p1_0_6_18) mean(p1_0_6_19) mean(p1_0_6_20)])
tl_0_6_avg = mean([200-size(p1_0_6_1,1) 200-size(p1_0_6_2,1) 200-size(p1_0_6_3,1) 200-size(p1_0_6_4,1) 200-size(p1_0_6_5,1) 200-size(p1_0_6_6,1) 200-size(p1_0_6_7,1) 200-size(p1_0_6_8,1) 200-size(p1_0_6_9,1) 200-size(p1_0_6_10,1) 200-size(p1_0_6_11,1) 200-size(p1_0_6_12,1) 200-size(p1_0_6_13,1) 200-size(p1_0_6_14,1) 200-size(p1_0_6_15,1) 200-size(p1_0_6_16,1) 200-size(p1_0_6_17,1) 200-size(p1_0_6_18,1) 200-size(p1_0_6_19,1) 200-size(p1_0_6_20,1)]) 
stem([mean(p1_0_6_1) mean(p1_0_6_2) mean(p1_0_6_3) mean(p1_0_6_4) mean(p1_0_6_5) mean(p1_0_6_6) mean(p1_0_6_7) mean(p1_0_6_8) mean(p1_0_6_9) mean(p1_0_6_10) mean(p1_0_6_11) mean(p1_0_6_12) mean(p1_0_6_13) mean(p1_0_6_14) mean(p1_0_6_15) mean(p1_0_6_16) mean(p1_0_6_17) mean(p1_0_6_18) mean(p1_0_6_19) mean(p1_0_6_20)])

% 0.9 ms busy loop
p1_0_9_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\1\pingpong_latency.txt")/10e9; 
p1_0_9_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\2\pingpong_latency.txt")/10e9; 
p1_0_9_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\3\pingpong_latency.txt")/10e9; 
p1_0_9_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\4\pingpong_latency.txt")/10e9; 
p1_0_9_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\5\pingpong_latency.txt")/10e9; 
p1_0_9_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\6\pingpong_latency.txt")/10e9; 
p1_0_9_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\7\pingpong_latency.txt")/10e9; 
p1_0_9_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\8\pingpong_latency.txt")/10e9; 
p1_0_9_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\9\pingpong_latency.txt")/10e9; 
p1_0_9_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\10\pingpong_latency.txt")/10e9; 
p1_0_9_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\11\pingpong_latency.txt")/10e9; 
p1_0_9_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\12\pingpong_latency.txt")/10e9; 
p1_0_9_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\13\pingpong_latency.txt")/10e9; 
p1_0_9_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\14\pingpong_latency.txt")/10e9; 
p1_0_9_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\15\pingpong_latency.txt")/10e9; 
p1_0_9_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\16\pingpong_latency.txt")/10e9; 
p1_0_9_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\17\pingpong_latency.txt")/10e9; 
p1_0_9_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\18\pingpong_latency.txt")/10e9; 
p1_0_9_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\19\pingpong_latency.txt")/10e9; 
p1_0_9_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\0.9ms\20\pingpong_latency.txt")/10e9; 

latency_0_9_avg = mean([mean(p1_0_9_1) mean(p1_0_9_2) mean(p1_0_9_3) mean(p1_0_9_4) mean(p1_0_9_5) mean(p1_0_9_6) mean(p1_0_9_7) mean(p1_0_9_8) mean(p1_0_9_9) mean(p1_0_9_10) mean(p1_0_9_11) mean(p1_0_9_12) mean(p1_0_9_13) mean(p1_0_9_14) mean(p1_0_9_15) mean(p1_0_9_16) mean(p1_0_9_17) mean(p1_0_9_18) mean(p1_0_9_19) mean(p1_0_9_20)])
latency_0_9_std = std([mean(p1_0_9_1) mean(p1_0_9_2) mean(p1_0_9_3) mean(p1_0_9_4) mean(p1_0_9_5) mean(p1_0_9_6) mean(p1_0_9_7) mean(p1_0_9_8) mean(p1_0_9_9) mean(p1_0_9_10) mean(p1_0_9_11) mean(p1_0_9_12) mean(p1_0_9_13) mean(p1_0_9_14) mean(p1_0_9_15) mean(p1_0_9_16) mean(p1_0_9_17) mean(p1_0_9_18) mean(p1_0_9_19) mean(p1_0_9_20)])
tl_0_9_avg = mean([200-size(p1_0_9_1,1) 200-size(p1_0_9_2,1) 200-size(p1_0_9_3,1) 200-size(p1_0_9_4,1) 200-size(p1_0_9_5,1) 200-size(p1_0_9_6,1) 200-size(p1_0_9_7,1) 200-size(p1_0_9_8,1) 200-size(p1_0_9_9,1) 200-size(p1_0_9_10,1) 200-size(p1_0_9_11,1) 200-size(p1_0_9_12,1) 200-size(p1_0_9_13,1) 200-size(p1_0_9_14,1) 200-size(p1_0_9_15,1) 200-size(p1_0_9_16,1) 200-size(p1_0_9_17,1) 200-size(p1_0_9_18,1) 200-size(p1_0_9_19,1) 200-size(p1_0_9_20,1)]) 
stem([mean(p1_0_9_1) mean(p1_0_9_2) mean(p1_0_9_3) mean(p1_0_9_4) mean(p1_0_9_5) mean(p1_0_9_6) mean(p1_0_9_7) mean(p1_0_9_8) mean(p1_0_9_9) mean(p1_0_9_10) mean(p1_0_9_11) mean(p1_0_9_12) mean(p1_0_9_13) mean(p1_0_9_14) mean(p1_0_9_15) mean(p1_0_9_16) mean(p1_0_9_17) mean(p1_0_9_18) mean(p1_0_9_19) mean(p1_0_9_20)])

% 1.2 ms busy loop
p1_1_2_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\1\pingpong_latency.txt")/10e9; 
p1_1_2_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\2\pingpong_latency.txt")/10e9; 
p1_1_2_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\3\pingpong_latency.txt")/10e9; 
p1_1_2_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\4\pingpong_latency.txt")/10e9; 
p1_1_2_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\5\pingpong_latency.txt")/10e9; 
p1_1_2_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\6\pingpong_latency.txt")/10e9; 
p1_1_2_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\7\pingpong_latency.txt")/10e9; 
p1_1_2_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\8\pingpong_latency.txt")/10e9; 
p1_1_2_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\9\pingpong_latency.txt")/10e9; 
p1_1_2_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\10\pingpong_latency.txt")/10e9; 
p1_1_2_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\11\pingpong_latency.txt")/10e9; 
p1_1_2_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\12\pingpong_latency.txt")/10e9; 
p1_1_2_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\13\pingpong_latency.txt")/10e9; 
p1_1_2_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\14\pingpong_latency.txt")/10e9; 
p1_1_2_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\15\pingpong_latency.txt")/10e9; 
p1_1_2_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\16\pingpong_latency.txt")/10e9; 
p1_1_2_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\17\pingpong_latency.txt")/10e9; 
p1_1_2_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\18\pingpong_latency.txt")/10e9; 
p1_1_2_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\19\pingpong_latency.txt")/10e9; 
p1_1_2_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.2ms\20\pingpong_latency.txt")/10e9; 

latency_1_2_avg = mean([mean(p1_1_2_1) mean(p1_1_2_2) mean(p1_1_2_3) mean(p1_1_2_4) mean(p1_1_2_5) mean(p1_1_2_6) mean(p1_1_2_7) mean(p1_1_2_8) mean(p1_1_2_9) mean(p1_1_2_10) mean(p1_1_2_11) mean(p1_1_2_12) mean(p1_1_2_13) mean(p1_1_2_14) mean(p1_1_2_15) mean(p1_1_2_16) mean(p1_1_2_17) mean(p1_1_2_18) mean(p1_1_2_19) mean(p1_1_2_20)])
latency_1_2_std = std([mean(p1_1_2_1) mean(p1_1_2_2) mean(p1_1_2_3) mean(p1_1_2_4) mean(p1_1_2_5) mean(p1_1_2_6) mean(p1_1_2_7) mean(p1_1_2_8) mean(p1_1_2_9) mean(p1_1_2_10) mean(p1_1_2_11) mean(p1_1_2_12) mean(p1_1_2_13) mean(p1_1_2_14) mean(p1_1_2_15) mean(p1_1_2_16) mean(p1_1_2_17) mean(p1_1_2_18) mean(p1_1_2_19) mean(p1_1_2_20)])
tl_1_2_avg = mean([200-size(p1_1_2_1,1) 200-size(p1_1_2_2,1) 200-size(p1_1_2_3,1) 200-size(p1_1_2_4,1) 200-size(p1_1_2_5,1) 200-size(p1_1_2_6,1) 200-size(p1_1_2_7,1) 200-size(p1_1_2_8,1) 200-size(p1_1_2_9,1) 200-size(p1_1_2_10,1) 200-size(p1_1_2_11,1) 200-size(p1_1_2_12,1) 200-size(p1_1_2_13,1) 200-size(p1_1_2_14,1) 200-size(p1_1_2_15,1) 200-size(p1_1_2_16,1) 200-size(p1_1_2_17,1) 200-size(p1_1_2_18,1) 200-size(p1_1_2_19,1) 200-size(p1_1_2_20,1)]) 
stem([mean(p1_1_2_1) mean(p1_1_2_2) mean(p1_1_2_3) mean(p1_1_2_4) mean(p1_1_2_5) mean(p1_1_2_6) mean(p1_1_2_7) mean(p1_1_2_8) mean(p1_1_2_9) mean(p1_1_2_10) mean(p1_1_2_11) mean(p1_1_2_12) mean(p1_1_2_13) mean(p1_1_2_14) mean(p1_1_2_15) mean(p1_1_2_16) mean(p1_1_2_17) mean(p1_1_2_18) mean(p1_1_2_19) mean(p1_1_2_20)])

% 1.5 ms busy loop
p1_1_5_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\1\pingpong_latency.txt")/10e9; 
p1_1_5_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\2\pingpong_latency.txt")/10e9; 
p1_1_5_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\3\pingpong_latency.txt")/10e9; 
p1_1_5_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\4\pingpong_latency.txt")/10e9; 
p1_1_5_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\5\pingpong_latency.txt")/10e9; 
p1_1_5_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\6\pingpong_latency.txt")/10e9; 
p1_1_5_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\7\pingpong_latency.txt")/10e9; 
p1_1_5_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\8\pingpong_latency.txt")/10e9; 
p1_1_5_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\9\pingpong_latency.txt")/10e9; 
p1_1_5_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\10\pingpong_latency.txt")/10e9; 
p1_1_5_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\11\pingpong_latency.txt")/10e9; 
p1_1_5_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\12\pingpong_latency.txt")/10e9; 
p1_1_5_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\13\pingpong_latency.txt")/10e9; 
p1_1_5_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\14\pingpong_latency.txt")/10e9; 
p1_1_5_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\15\pingpong_latency.txt")/10e9; 
p1_1_5_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\16\pingpong_latency.txt")/10e9; 
p1_1_5_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\17\pingpong_latency.txt")/10e9; 
p1_1_5_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\18\pingpong_latency.txt")/10e9; 
p1_1_5_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\19\pingpong_latency.txt")/10e9; 
p1_1_5_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.5ms\20\pingpong_latency.txt")/10e9; 

latency_1_5_avg = mean([mean(p1_1_5_1) mean(p1_1_5_2) mean(p1_1_5_3) mean(p1_1_5_4) mean(p1_1_5_5) mean(p1_1_5_6) mean(p1_1_5_7) mean(p1_1_5_8) mean(p1_1_5_9) mean(p1_1_5_10) mean(p1_1_5_11) mean(p1_1_5_12) mean(p1_1_5_13) mean(p1_1_5_14) mean(p1_1_5_15) mean(p1_1_5_16) mean(p1_1_5_17) mean(p1_1_5_18) mean(p1_1_5_19) mean(p1_1_5_20)])
latency_1_5_std = std([mean(p1_1_5_1) mean(p1_1_5_2) mean(p1_1_5_3) mean(p1_1_5_4) mean(p1_1_5_5) mean(p1_1_5_6) mean(p1_1_5_7) mean(p1_1_5_8) mean(p1_1_5_9) mean(p1_1_5_10) mean(p1_1_5_11) mean(p1_1_5_12) mean(p1_1_5_13) mean(p1_1_5_14) mean(p1_1_5_15) mean(p1_1_5_16) mean(p1_1_5_17) mean(p1_1_5_18) mean(p1_1_5_19) mean(p1_1_5_20)])
tl_1_5_avg = mean([200-size(p1_1_5_1,1) 200-size(p1_1_5_2,1) 200-size(p1_1_5_3,1) 200-size(p1_1_5_4,1) 200-size(p1_1_5_5,1) 200-size(p1_1_5_6,1) 200-size(p1_1_5_7,1) 200-size(p1_1_5_8,1) 200-size(p1_1_5_9,1) 200-size(p1_1_5_10,1) 200-size(p1_1_5_11,1) 200-size(p1_1_5_12,1) 200-size(p1_1_5_13,1) 200-size(p1_1_5_14,1) 200-size(p1_1_5_15,1) 200-size(p1_1_5_16,1) 200-size(p1_1_5_17,1) 200-size(p1_1_5_18,1) 200-size(p1_1_5_19,1) 200-size(p1_1_5_20,1)]) 
stem([mean(p1_1_5_1) mean(p1_1_5_2) mean(p1_1_5_3) mean(p1_1_5_4) mean(p1_1_5_5) mean(p1_1_5_6) mean(p1_1_5_7) mean(p1_1_5_8) mean(p1_1_5_9) mean(p1_1_5_10) mean(p1_1_5_11) mean(p1_1_5_12) mean(p1_1_5_13) mean(p1_1_5_14) mean(p1_1_5_15) mean(p1_1_5_16) mean(p1_1_5_17) mean(p1_1_5_18) mean(p1_1_5_19) mean(p1_1_5_20)])

% 1.8 ms busy loop
p1_1_8_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\1\pingpong_latency.txt")/10e9; 
p1_1_8_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\2\pingpong_latency.txt")/10e9; 
p1_1_8_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\3\pingpong_latency.txt")/10e9; 
p1_1_8_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\4\pingpong_latency.txt")/10e9; 
p1_1_8_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\5\pingpong_latency.txt")/10e9; 
p1_1_8_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\6\pingpong_latency.txt")/10e9; 
p1_1_8_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\7\pingpong_latency.txt")/10e9; 
p1_1_8_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\8\pingpong_latency.txt")/10e9; 
p1_1_8_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\9\pingpong_latency.txt")/10e9; 
p1_1_8_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\10\pingpong_latency.txt")/10e9; 
p1_1_8_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\11\pingpong_latency.txt")/10e9; 
p1_1_8_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\12\pingpong_latency.txt")/10e9; 
p1_1_8_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\13\pingpong_latency.txt")/10e9; 
p1_1_8_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\14\pingpong_latency.txt")/10e9; 
p1_1_8_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\15\pingpong_latency.txt")/10e9; 
p1_1_8_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\16\pingpong_latency.txt")/10e9; 
p1_1_8_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\17\pingpong_latency.txt")/10e9; 
p1_1_8_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\18\pingpong_latency.txt")/10e9; 
p1_1_8_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\19\pingpong_latency.txt")/10e9; 
p1_1_8_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\1.8ms\20\pingpong_latency.txt")/10e9; 

latency_1_8_avg = mean([mean(p1_1_8_1) mean(p1_1_8_2) mean(p1_1_8_3) mean(p1_1_8_4) mean(p1_1_8_5) mean(p1_1_8_6) mean(p1_1_8_7) mean(p1_1_8_8) mean(p1_1_8_9) mean(p1_1_8_10) mean(p1_1_8_11) mean(p1_1_8_12) mean(p1_1_8_13) mean(p1_1_8_14) mean(p1_1_8_15) mean(p1_1_8_16) mean(p1_1_8_17) mean(p1_1_8_18) mean(p1_1_8_19) mean(p1_1_8_20)])
latency_1_8_std = std([mean(p1_1_8_1) mean(p1_1_8_2) mean(p1_1_8_3) mean(p1_1_8_4) mean(p1_1_8_5) mean(p1_1_8_6) mean(p1_1_8_7) mean(p1_1_8_8) mean(p1_1_8_9) mean(p1_1_8_10) mean(p1_1_8_11) mean(p1_1_8_12) mean(p1_1_8_13) mean(p1_1_8_14) mean(p1_1_8_15) mean(p1_1_8_16) mean(p1_1_8_17) mean(p1_1_8_18) mean(p1_1_8_19) mean(p1_1_8_20)])
tl_1_8_avg = mean([200-size(p1_1_8_1,1) 200-size(p1_1_8_2,1) 200-size(p1_1_8_3,1) 200-size(p1_1_8_4,1) 200-size(p1_1_8_5,1) 200-size(p1_1_8_6,1) 200-size(p1_1_8_7,1) 200-size(p1_1_8_8,1) 200-size(p1_1_8_9,1) 200-size(p1_1_8_10,1) 200-size(p1_1_8_11,1) 200-size(p1_1_8_12,1) 200-size(p1_1_8_13,1) 200-size(p1_1_8_14,1) 200-size(p1_1_8_15,1) 200-size(p1_1_8_16,1) 200-size(p1_1_8_17,1) 200-size(p1_1_8_18,1) 200-size(p1_1_8_19,1) 200-size(p1_1_8_20,1)]) 
stem([mean(p1_1_8_1) mean(p1_1_8_2) mean(p1_1_8_3) mean(p1_1_8_4) mean(p1_1_8_5) mean(p1_1_8_6) mean(p1_1_8_7) mean(p1_1_8_8) mean(p1_1_8_9) mean(p1_1_8_10) mean(p1_1_8_11) mean(p1_1_8_12) mean(p1_1_8_13) mean(p1_1_8_14) mean(p1_1_8_15) mean(p1_1_8_16) mean(p1_1_8_17) mean(p1_1_8_18) mean(p1_1_8_19) mean(p1_1_8_20)])

% 2.1 ms busy loop
p1_2_1_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\1\pingpong_latency.txt")/10e9; 
p1_2_1_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\2\pingpong_latency.txt")/10e9; 
p1_2_1_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\3\pingpong_latency.txt")/10e9; 
p1_2_1_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\4\pingpong_latency.txt")/10e9; 
p1_2_1_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\5\pingpong_latency.txt")/10e9; 
p1_2_1_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\6\pingpong_latency.txt")/10e9; 
p1_2_1_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\7\pingpong_latency.txt")/10e9; 
p1_2_1_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\8\pingpong_latency.txt")/10e9; 
p1_2_1_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\9\pingpong_latency.txt")/10e9; 
p1_2_1_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\10\pingpong_latency.txt")/10e9; 
p1_2_1_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\11\pingpong_latency.txt")/10e9; 
p1_2_1_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\12\pingpong_latency.txt")/10e9; 
p1_2_1_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\13\pingpong_latency.txt")/10e9; 
p1_2_1_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\14\pingpong_latency.txt")/10e9; 
p1_2_1_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\15\pingpong_latency.txt")/10e9; 
p1_2_1_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\16\pingpong_latency.txt")/10e9; 
p1_2_1_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\17\pingpong_latency.txt")/10e9; 
p1_2_1_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\18\pingpong_latency.txt")/10e9; 
p1_2_1_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\19\pingpong_latency.txt")/10e9; 
p1_2_1_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.1ms\20\pingpong_latency.txt")/10e9; 

latency_2_1_avg = mean([mean(p1_2_1_1) mean(p1_2_1_2) mean(p1_2_1_3) mean(p1_2_1_4) mean(p1_2_1_5) mean(p1_2_1_6) mean(p1_2_1_7) mean(p1_2_1_8) mean(p1_2_1_9) mean(p1_2_1_10) mean(p1_2_1_11) mean(p1_2_1_12) mean(p1_2_1_13) mean(p1_2_1_14) mean(p1_2_1_15) mean(p1_2_1_16) mean(p1_2_1_17) mean(p1_2_1_18) mean(p1_2_1_19) mean(p1_2_1_20)])
latency_2_1_std = std([mean(p1_2_1_1) mean(p1_2_1_2) mean(p1_2_1_3) mean(p1_2_1_4) mean(p1_2_1_5) mean(p1_2_1_6) mean(p1_2_1_7) mean(p1_2_1_8) mean(p1_2_1_9) mean(p1_2_1_10) mean(p1_2_1_11) mean(p1_2_1_12) mean(p1_2_1_13) mean(p1_2_1_14) mean(p1_2_1_15) mean(p1_2_1_16) mean(p1_2_1_17) mean(p1_2_1_18) mean(p1_2_1_19) mean(p1_2_1_20)])
tl_2_1_avg = mean([200-size(p1_2_1_1,1) 200-size(p1_2_1_2,1) 200-size(p1_2_1_3,1) 200-size(p1_2_1_4,1) 200-size(p1_2_1_5,1) 200-size(p1_2_1_6,1) 200-size(p1_2_1_7,1) 200-size(p1_2_1_8,1) 200-size(p1_2_1_9,1) 200-size(p1_2_1_10,1) 200-size(p1_2_1_11,1) 200-size(p1_2_1_12,1) 200-size(p1_2_1_13,1) 200-size(p1_2_1_14,1) 200-size(p1_2_1_15,1) 200-size(p1_2_1_16,1) 200-size(p1_2_1_17,1) 200-size(p1_2_1_18,1) 200-size(p1_2_1_19,1) 200-size(p1_2_1_20,1)]) 
stem([mean(p1_2_1_1) mean(p1_2_1_2) mean(p1_2_1_3) mean(p1_2_1_4) mean(p1_2_1_5) mean(p1_2_1_6) mean(p1_2_1_7) mean(p1_2_1_8) mean(p1_2_1_9) mean(p1_2_1_10) mean(p1_2_1_11) mean(p1_2_1_12) mean(p1_2_1_13) mean(p1_2_1_14) mean(p1_2_1_15) mean(p1_2_1_16) mean(p1_2_1_17) mean(p1_2_1_18) mean(p1_2_1_19) mean(p1_2_1_20)])

% 2.4 ms busy loop
p1_2_4_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\1\pingpong_latency.txt")/10e9; 
p1_2_4_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\2\pingpong_latency.txt")/10e9; 
p1_2_4_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\3\pingpong_latency.txt")/10e9; 
p1_2_4_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\4\pingpong_latency.txt")/10e9; 
p1_2_4_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\5\pingpong_latency.txt")/10e9; 
p1_2_4_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\6\pingpong_latency.txt")/10e9; 
p1_2_4_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\7\pingpong_latency.txt")/10e9; 
p1_2_4_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\8\pingpong_latency.txt")/10e9; 
p1_2_4_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\9\pingpong_latency.txt")/10e9; 
p1_2_4_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\10\pingpong_latency.txt")/10e9; 
p1_2_4_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\11\pingpong_latency.txt")/10e9; 
p1_2_4_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\12\pingpong_latency.txt")/10e9; 
p1_2_4_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\13\pingpong_latency.txt")/10e9; 
p1_2_4_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\14\pingpong_latency.txt")/10e9; 
p1_2_4_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\15\pingpong_latency.txt")/10e9; 
p1_2_4_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\16\pingpong_latency.txt")/10e9; 
p1_2_4_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\17\pingpong_latency.txt")/10e9; 
p1_2_4_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\18\pingpong_latency.txt")/10e9; 
p1_2_4_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\19\pingpong_latency.txt")/10e9; 
p1_2_4_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.4ms\20\pingpong_latency.txt")/10e9; 

latency_2_4_avg = mean([mean(p1_2_4_1) mean(p1_2_4_2) mean(p1_2_4_3) mean(p1_2_4_4) mean(p1_2_4_5) mean(p1_2_4_6) mean(p1_2_4_7) mean(p1_2_4_8) mean(p1_2_4_9) mean(p1_2_4_10) mean(p1_2_4_11) mean(p1_2_4_12) mean(p1_2_4_13) mean(p1_2_4_14) mean(p1_2_4_15) mean(p1_2_4_16) mean(p1_2_4_17) mean(p1_2_4_18) mean(p1_2_4_19) mean(p1_2_4_20)])
latency_2_4_std = std([mean(p1_2_4_1) mean(p1_2_4_2) mean(p1_2_4_3) mean(p1_2_4_4) mean(p1_2_4_5) mean(p1_2_4_6) mean(p1_2_4_7) mean(p1_2_4_8) mean(p1_2_4_9) mean(p1_2_4_10) mean(p1_2_4_11) mean(p1_2_4_12) mean(p1_2_4_13) mean(p1_2_4_14) mean(p1_2_4_15) mean(p1_2_4_16) mean(p1_2_4_17) mean(p1_2_4_18) mean(p1_2_4_19) mean(p1_2_4_20)])
tl_2_4_avg = mean([200-size(p1_2_4_1,1) 200-size(p1_2_4_2,1) 200-size(p1_2_4_3,1) 200-size(p1_2_4_4,1) 200-size(p1_2_4_5,1) 200-size(p1_2_4_6,1) 200-size(p1_2_4_7,1) 200-size(p1_2_4_8,1) 200-size(p1_2_4_9,1) 200-size(p1_2_4_10,1) 200-size(p1_2_4_11,1) 200-size(p1_2_4_12,1) 200-size(p1_2_4_13,1) 200-size(p1_2_4_14,1) 200-size(p1_2_4_15,1) 200-size(p1_2_4_16,1) 200-size(p1_2_4_17,1) 200-size(p1_2_4_18,1) 200-size(p1_2_4_19,1) 200-size(p1_2_4_20,1)]) 
stem([mean(p1_2_4_1) mean(p1_2_4_2) mean(p1_2_4_3) mean(p1_2_4_4) mean(p1_2_4_5) mean(p1_2_4_6) mean(p1_2_4_7) mean(p1_2_4_8) mean(p1_2_4_9) mean(p1_2_4_10) mean(p1_2_4_11) mean(p1_2_4_12) mean(p1_2_4_13) mean(p1_2_4_14) mean(p1_2_4_15) mean(p1_2_4_16) mean(p1_2_4_17) mean(p1_2_4_18) mean(p1_2_4_19) mean(p1_2_4_20)])

% 2.7 ms busy loop
p1_2_7_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\1\pingpong_latency.txt")/10e9; 
p1_2_7_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\2\pingpong_latency.txt")/10e9; 
p1_2_7_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\3\pingpong_latency.txt")/10e9; 
p1_2_7_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\4\pingpong_latency.txt")/10e9; 
p1_2_7_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\5\pingpong_latency.txt")/10e9; 
p1_2_7_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\6\pingpong_latency.txt")/10e9; 
p1_2_7_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\7\pingpong_latency.txt")/10e9; 
p1_2_7_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\8\pingpong_latency.txt")/10e9; 
p1_2_7_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\9\pingpong_latency.txt")/10e9; 
p1_2_7_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\10\pingpong_latency.txt")/10e9; 
p1_2_7_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\11\pingpong_latency.txt")/10e9; 
p1_2_7_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\12\pingpong_latency.txt")/10e9; 
p1_2_7_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\13\pingpong_latency.txt")/10e9; 
p1_2_7_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\14\pingpong_latency.txt")/10e9; 
p1_2_7_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\15\pingpong_latency.txt")/10e9; 
p1_2_7_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\16\pingpong_latency.txt")/10e9; 
p1_2_7_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\17\pingpong_latency.txt")/10e9; 
p1_2_7_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\18\pingpong_latency.txt")/10e9; 
p1_2_7_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\19\pingpong_latency.txt")/10e9; 
p1_2_7_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\2.7ms\20\pingpong_latency.txt")/10e9; 

latency_2_7_avg = mean([mean(p1_2_7_1) mean(p1_2_7_2) mean(p1_2_7_3) mean(p1_2_7_4) mean(p1_2_7_5) mean(p1_2_7_6) mean(p1_2_7_7) mean(p1_2_7_8) mean(p1_2_7_9) mean(p1_2_7_10) mean(p1_2_7_11) mean(p1_2_7_12) mean(p1_2_7_13) mean(p1_2_7_14) mean(p1_2_7_15) mean(p1_2_7_16) mean(p1_2_7_17) mean(p1_2_7_18) mean(p1_2_7_19) mean(p1_2_7_20)])
latency_2_7_std = std([mean(p1_2_7_1) mean(p1_2_7_2) mean(p1_2_7_3) mean(p1_2_7_4) mean(p1_2_7_5) mean(p1_2_7_6) mean(p1_2_7_7) mean(p1_2_7_8) mean(p1_2_7_9) mean(p1_2_7_10) mean(p1_2_7_11) mean(p1_2_7_12) mean(p1_2_7_13) mean(p1_2_7_14) mean(p1_2_7_15) mean(p1_2_7_16) mean(p1_2_7_17) mean(p1_2_7_18) mean(p1_2_7_19) mean(p1_2_7_20)])
tl_2_7_avg = mean([200-size(p1_2_7_1,1) 200-size(p1_2_7_2,1) 200-size(p1_2_7_3,1) 200-size(p1_2_7_4,1) 200-size(p1_2_7_5,1) 200-size(p1_2_7_6,1) 200-size(p1_2_7_7,1) 200-size(p1_2_7_8,1) 200-size(p1_2_7_9,1) 200-size(p1_2_7_10,1) 200-size(p1_2_7_11,1) 200-size(p1_2_7_12,1) 200-size(p1_2_7_13,1) 200-size(p1_2_7_14,1) 200-size(p1_2_7_15,1) 200-size(p1_2_7_16,1) 200-size(p1_2_7_17,1) 200-size(p1_2_7_18,1) 200-size(p1_2_7_19,1) 200-size(p1_2_7_20,1)]) 
stem([mean(p1_2_7_1) mean(p1_2_7_2) mean(p1_2_7_3) mean(p1_2_7_4) mean(p1_2_7_5) mean(p1_2_7_6) mean(p1_2_7_7) mean(p1_2_7_8) mean(p1_2_7_9) mean(p1_2_7_10) mean(p1_2_7_11) mean(p1_2_7_12) mean(p1_2_7_13) mean(p1_2_7_14) mean(p1_2_7_15) mean(p1_2_7_16) mean(p1_2_7_17) mean(p1_2_7_18) mean(p1_2_7_19) mean(p1_2_7_20)])

% 3 ms busy loop
p1_3_1 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\1\pingpong_latency.txt")/10e9; 
p1_3_2 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\2\pingpong_latency.txt")/10e9; 
p1_3_3 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\3\pingpong_latency.txt")/10e9; 
p1_3_4 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\4\pingpong_latency.txt")/10e9; 
p1_3_5 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\5\pingpong_latency.txt")/10e9; 
p1_3_6 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\6\pingpong_latency.txt")/10e9; 
p1_3_7 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\7\pingpong_latency.txt")/10e9; 
p1_3_8 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\8\pingpong_latency.txt")/10e9; 
p1_3_9 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\9\pingpong_latency.txt")/10e9; 
p1_3_10 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\10\pingpong_latency.txt")/10e9; 
p1_3_11 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\11\pingpong_latency.txt")/10e9; 
p1_3_12 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\12\pingpong_latency.txt")/10e9; 
p1_3_13 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\13\pingpong_latency.txt")/10e9; 
p1_3_14 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\14\pingpong_latency.txt")/10e9; 
p1_3_15 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\15\pingpong_latency.txt")/10e9; 
p1_3_16 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\16\pingpong_latency.txt")/10e9; 
p1_3_17 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\17\pingpong_latency.txt")/10e9; 
p1_3_18 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\18\pingpong_latency.txt")/10e9; 
p1_3_19 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\19\pingpong_latency.txt")/10e9; 
p1_3_20 = importdata("..\..\ROS2\ping_pong_benchmarking\data\ensaios2\single_1_topic\3ms\20\pingpong_latency.txt")/10e9; 

latency_3_avg = mean([mean(p1_3_1) mean(p1_3_2) mean(p1_3_3) mean(p1_3_4) mean(p1_3_5) mean(p1_3_6) mean(p1_3_7) mean(p1_3_8) mean(p1_3_9) mean(p1_3_10) mean(p1_3_11) mean(p1_3_12) mean(p1_3_13) mean(p1_3_14) mean(p1_3_15) mean(p1_3_16) mean(p1_3_17) mean(p1_3_18) mean(p1_3_19) mean(p1_3_20)])
latency_3_std = std([mean(p1_3_1) mean(p1_3_2) mean(p1_3_3) mean(p1_3_4) mean(p1_3_5) mean(p1_3_6) mean(p1_3_7) mean(p1_3_8) mean(p1_3_9) mean(p1_3_10) mean(p1_3_11) mean(p1_3_12) mean(p1_3_13) mean(p1_3_14) mean(p1_3_15) mean(p1_3_16) mean(p1_3_17) mean(p1_3_18) mean(p1_3_19) mean(p1_3_20)])
tl_3_avg = mean([200-size(p1_3_1,1) 200-size(p1_3_2,1) 200-size(p1_3_3,1) 200-size(p1_3_4,1) 200-size(p1_3_5,1) 200-size(p1_3_6,1) 200-size(p1_3_7,1) 200-size(p1_3_8,1) 200-size(p1_3_9,1) 200-size(p1_3_10,1) 200-size(p1_3_11,1) 200-size(p1_3_12,1) 200-size(p1_3_13,1) 200-size(p1_3_14,1) 200-size(p1_3_15,1) 200-size(p1_3_16,1) 200-size(p1_3_17,1) 200-size(p1_3_18,1) 200-size(p1_3_19,1) 200-size(p1_3_20,1)]) 
stem([mean(p1_3_1) mean(p1_3_2) mean(p1_3_3) mean(p1_3_4) mean(p1_3_5) mean(p1_3_6) mean(p1_3_7) mean(p1_3_8) mean(p1_3_9) mean(p1_3_10) mean(p1_3_11) mean(p1_3_12) mean(p1_3_13) mean(p1_3_14) mean(p1_3_15) mean(p1_3_16) mean(p1_3_17) mean(p1_3_18) mean(p1_3_19) mean(p1_3_20)])

lat_single_1_bf = [latency_0_3_avg latency_0_6_avg latency_0_9_avg latency_1_2_avg latency_1_5_avg latency_1_8_avg latency_2_1_avg latency_2_4_avg latency_2_7_avg latency_3_avg].*1e3;
jit_single_1_bf = [latency_0_3_std latency_0_6_std latency_0_9_std latency_1_2_std latency_1_5_std latency_1_8_std latency_2_1_std latency_2_4_std latency_2_7_std latency_3_std].*1e3;
tl_single_1_bf = [tl_0_3_avg tl_0_6_avg tl_0_9_avg tl_1_2_avg tl_1_5_avg tl_1_8_avg tl_2_1_avg tl_2_4_avg tl_2_7_avg tl_3_avg];
t_single_1_bf =[0.3e-3 0.6e-3 0.9e-3 1.2e-3 1.5e-3 1.8e-3 2.1e-3 2.4e-3 2.7e-3 3e-3]*1e3;

save('lat_single_1_bf.mat','lat_single_1_bf');
save('jit_single_1_bf.mat','jit_single_1_bf');
save('tl_single_1_bf.mat','tl_single_1_bf');
save('t_single_1_bf.mat','t_single_1_bf');



