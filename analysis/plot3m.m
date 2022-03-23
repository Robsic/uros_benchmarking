close all, clear all, clc

load('50ms_qos\lat_multi_3_1_rl.mat');
load('50ms_qos\lat_multi_3_2_rl.mat');
load('50ms_qos\lat_multi_3_3_rl.mat');
load('50ms_qos\jit_multi_3_1_rl.mat');
load('50ms_qos\jit_multi_3_2_rl.mat');
load('50ms_qos\jit_multi_3_3_rl.mat');
load('50ms_qos\tl_multi_3_1_rl.mat');
load('50ms_qos\tl_multi_3_2_rl.mat');
load('50ms_qos\tl_multi_3_3_rl.mat');
load('50ms_qos\t_multi_3_rl.mat');
load('50ms\lat_multi_3_1_bf.mat');
load('50ms\lat_multi_3_2_bf.mat');
load('50ms\lat_multi_3_3_bf.mat');
load('50ms\jit_multi_3_1_bf.mat');
load('50ms\jit_multi_3_2_bf.mat');
load('50ms\jit_multi_3_3_bf.mat');
load('50ms\tl_multi_3_1_bf.mat');
load('50ms\tl_multi_3_2_bf.mat');
load('50ms\tl_multi_3_3_bf.mat');
load('50ms\t_multi_3_bf.mat');

figure
subplot(3,1,1)
plot(t_multi_3_bf,lat_multi_3_1_bf,'-*',t_multi_3_bf,lat_multi_3_2_bf,'-*',t_multi_3_bf,lat_multi_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência - Ping Pong Triplo MultiThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 3])

subplot(3,1,2)
plot(t_multi_3_bf,jit_multi_3_1_bf,'-*',t_multi_3_bf,jit_multi_3_2_bf,'-*',t_multi_3_bf,jit_multi_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter - Ping Pong Triplo MultiThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 4e-1])

subplot(3,1,3)
plot(t_multi_3_bf,tl_multi_3_1_bf,'-*',t_multi_3_bf,tl_multi_3_2_bf,'-*',t_multi_3_bf,tl_multi_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos - Ping Pong Triplo MultiThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 25])


figure
subplot(3,1,1)
plot(t_multi_3_bf,lat_multi_3_1_rl,'-*',t_multi_3_rl,lat_multi_3_2_rl,'-*',t_multi_3_rl,lat_multi_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência - Ping Pong Triplo MultiThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 2.5])
subplot(3,1,2)
plot(t_multi_3_rl,jit_multi_3_1_rl,'-*',t_multi_3_rl,jit_multi_3_2_rl,'-*',t_multi_3_rl,jit_multi_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter - Ping Pong Triplo MultiThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 0.5])
subplot(3,1,3)
plot(t_multi_3_rl,tl_multi_3_1_rl,'-*',t_multi_3_rl,tl_multi_3_2_rl,'-*',t_multi_3_rl,tl_multi_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos - Ping Pong Triplo MultiThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 25])