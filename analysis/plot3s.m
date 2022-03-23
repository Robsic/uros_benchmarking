close all, clear all, clc

load('50ms_qos\lat_single_3_1_rl.mat');
load('50ms_qos\lat_single_3_2_rl.mat');
load('50ms_qos\lat_single_3_3_rl.mat');
load('50ms_qos\jit_single_3_1_rl.mat');
load('50ms_qos\jit_single_3_2_rl.mat');
load('50ms_qos\jit_single_3_3_rl.mat');
load('50ms_qos\tl_single_3_1_rl.mat');
load('50ms_qos\tl_single_3_2_rl.mat');
load('50ms_qos\tl_single_3_3_rl.mat');
load('50ms_qos\t_single_3_rl.mat');
load('50ms\lat_single_3_1_bf.mat');
load('50ms\lat_single_3_2_bf.mat');
load('50ms\lat_single_3_3_bf.mat');
load('50ms\jit_single_3_1_bf.mat');
load('50ms\jit_single_3_2_bf.mat');
load('50ms\jit_single_3_3_bf.mat');
load('50ms\tl_single_3_1_bf.mat');
load('50ms\tl_single_3_2_bf.mat');
load('50ms\tl_single_3_3_bf.mat');
load('50ms\t_single_3_bf.mat');

figure
subplot(3,1,1)
plot(t_single_3_bf,lat_single_3_1_bf,'-*',t_single_3_bf,lat_single_3_2_bf,'-*',t_single_3_bf,lat_single_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência - Ping Pong Triplo SingleThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 3])

subplot(3,1,2)
plot(t_single_3_bf,jit_single_3_1_bf,'-*',t_single_3_bf,jit_single_3_2_bf,'-*',t_single_3_bf,jit_single_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter - Ping Pong Triplo SingleThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 3e-1])

subplot(3,1,3)
plot(t_single_3_bf,tl_single_3_1_bf,'-*',t_single_3_bf,tl_single_3_2_bf,'-*',t_single_3_bf,tl_single_3_3_bf,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos - Ping Pong Triplo SingleThread - QoS Best Effort | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 25])


figure
subplot(3,1,1)
plot(t_single_3_bf,lat_single_3_1_rl,'-*',t_single_3_rl,lat_single_3_2_rl,'-*',t_single_3_rl,lat_single_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência - Ping Pong Triplo SingleThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 11])
subplot(3,1,2)
plot(t_single_3_rl,jit_single_3_1_rl,'-*',t_single_3_rl,jit_single_3_2_rl,'-*',t_single_3_rl,jit_single_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter - Ping Pong Triplo SingleThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 1.8])
subplot(3,1,3)
plot(t_single_3_rl,tl_single_3_1_rl,'-*',t_single_3_rl,tl_single_3_2_rl,'-*',t_single_3_rl,tl_single_3_3_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos - Ping Pong Triplo SingleThread - QoS Reliable | Frequência de Ping 20Hz','FontSize',12)
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('Topic 1', 'Topic 2', 'Topic 3')
    axis([0 3.5 0 75])
