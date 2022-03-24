close all, clear all, clc

load('50ms_qos\lat_single_1_rl.mat');
load('50ms_qos\jit_single_1_rl.mat');
load('50ms_qos\tl_single_1_rl.mat');
load('50ms_qos\t_single_1_rl.mat');
load('50ms\lat_single_1_bf.mat');
load('50ms\jit_single_1_bf.mat');
load('50ms\tl_single_1_bf.mat');
load('50ms\t_single_1_bf.mat');


figure
plot(t_single_1_rl,lat_single_1_bf,'-*',t_single_1_rl,lat_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 3])
figure
plot(t_single_1_rl,jit_single_1_bf,'-*',t_single_1_rl,jit_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 4.5])
figure
plot(t_single_1_rl,tl_single_1_bf,'-*',t_single_1_rl,tl_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 4])
    
figure
subplot(3,1,1)
plot(t_single_1_rl,lat_single_1_bf,'-*',t_single_1_rl,lat_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Latência','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Latência (ms)','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 3])
subplot(3,1,2)
plot(t_single_1_rl,jit_single_1_bf,'-*',t_single_1_rl,jit_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Jitter','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Jitter (ms)','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 4.5])
subplot(3,1,3)
plot(t_single_1_rl,tl_single_1_bf,'-*',t_single_1_rl,tl_single_1_rl,'-*', 'Linewidth', 2)
hold on
    grid on
    title('Perda de tópicos','FontSize',12)
    subtitle('Ping Pong Simples SingleThread | Frequência de Ping 20Hz')
    xlabel('Callback Busy-Loop (ms)','FontSize',10)
    ylabel('Perda de Tópicos','FontSize',10)
    legend('QoS Best-Effort','QoS Reliable','Location','northeast')
    axis([0 3.5 0 5])
    
%exportgraphics (gcf ,' di_1 .pdf ',' ContentType ','vector ');