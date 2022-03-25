close all, clear all, clc

load('hz\lat_single_3_1_rl.mat');
load('hz\lat_single_3_2_rl.mat');
load('hz\lat_single_3_3_rl.mat');
load('hz\jit_single_3_1_rl.mat');
load('hz\jit_single_3_2_rl.mat');
load('hz\jit_single_3_3_rl.mat');
load('hz\tl_single_3_1_rl.mat');
load('hz\tl_single_3_2_rl.mat');
load('hz\tl_single_3_3_rl.mat');
load('hz\t_single_3_rl.mat');
load('hz\lat_single_3_1_bf.mat');
load('hz\lat_single_3_2_bf.mat');
load('hz\lat_single_3_3_bf.mat');
load('hz\jit_single_3_1_bf.mat');
load('hz\jit_single_3_2_bf.mat');
load('hz\jit_single_3_3_bf.mat');
load('hz\tl_single_3_1_bf.mat');
load('hz\tl_single_3_2_bf.mat');
load('hz\tl_single_3_3_bf.mat');
load('hz\t_single_3_bf.mat');

figure
subplot(2,1,1)
bar(t_single_3_bf,[lat_single_3_1_bf; lat_single_3_2_bf; lat_single_3_3_bf])
hold on
    grid on
    title('Latência - QoS Best-Effort','FontSize',14)
    subtitle('Ping Pong Triplo SingleThread | Busy-loop de 0.3 ms','FontSize',12)
    xlabel('Frequência de Ping (Hz)','FontSize',14)
    ylabel('Latência (ms)','FontSize',14)
    legend('Topic 1', 'Topic 2', 'Topic 3','FontSize',12, 'Location', 'northwest')
    %axis([0 3.5 0 3])

subplot(2,1,2)
bar(t_single_3_bf,[tl_single_3_1_bf; tl_single_3_2_bf; tl_single_3_3_bf])
hold on
    grid on
    title('Perda de tópicos - QoS Best-Effort','FontSize',14)
    subtitle('Ping Pong Triplo SingleThread | 200 tópicos transmitidos','FontSize',12)
    xlabel('Frequência de Ping (Hz)','FontSize',14)
    ylabel('Perda de Tópicos','FontSize',14)
    legend('Topic 1', 'Topic 2', 'Topic 3','FontSize',12, 'Location', 'northwest')
    %axis([0 3.5 0 25])


figure
subplot(2,1,1)
bar(t_single_3_rl,[lat_single_3_1_rl; lat_single_3_2_rl; lat_single_3_3_rl])
hold on
    grid on
    title('Latência - QoS Reliable','FontSize',14)
    subtitle('Ping Pong Triplo SingleThread | Busy-loop de 0.3 ms','FontSize',12)
    xlabel('Frequência de Ping (Hz)','FontSize',14)
    ylabel('Latência (ms)','FontSize',14)
    legend('Topic 1', 'Topic 2', 'Topic 3','FontSize',12, 'Location', 'northwest')
    %axis([0 3.5 0 3])

subplot(2,1,2)
bar(t_single_3_rl,[tl_single_3_1_rl; tl_single_3_2_rl; tl_single_3_3_rl])
hold on
    grid on
    title('Perda de tópicos - QoS Reliable','FontSize',14)
    subtitle('Ping Pong Triplo SingleThread | Busy-loop de 0.3 ms','FontSize',12)
    xlabel('Frequência de Ping (Hz)','FontSize',14)
    ylabel('Perda de Tópicos','FontSize',14)
    legend('Topic 1', 'Topic 2', 'Topic 3','FontSize',12, 'Location', 'northwest')
    %axis([0 3.5 0 25])


