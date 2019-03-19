clc;
clear;
close all;
warning off;
addpath 'func\'

global N;
Ns = 1000:1000:10000;
	
for i = 1:length(Ns)
%N = Ns(i);  
%cloudcal_parameter;
%run('ACO\main.m');
%run('PSO\main.m');
%run('WOA\main.m');
%run('IWC\main.m');
end


N = 1000:1000:10000;

Pbest0_1 = [];
Pbest1_1 = [];
Pbest2_1 = [];
Pbest3_1 = [];

load ACO\R1_1000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_2000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_3000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_4000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_5000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_6000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_7000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_8000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_9000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_10000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];

Pbest0_2 = [];
Pbest1_2 = [];
Pbest2_2 = [];
Pbest3_2 = [];

load PSO\R2_1000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_2000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_3000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_4000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_5000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_6000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_7000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_8000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)];
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_9000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_10000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];

Pbest0_3 = [];
Pbest1_3 = [];
Pbest2_3 = [];
Pbest3_3 = [];

load WOA\R3_1000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_2000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_3000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_4000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_5000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_6000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_7000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_8000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_9000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_10000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];

Pbest0_4 = [];
Pbest1_4 = [];
Pbest2_4 = [];
Pbest3_4 = [];

load IWC\R4_1000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_2000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_3000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_4000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_5000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_6000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_7000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_8000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_9000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_10000.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];


figure;
plot(N,Pbest0_1,':bs','LineWidth',1.5);
hold on
plot(N,Pbest0_2,'-.r+','LineWidth',1.5);
hold on
plot(N,Pbest0_3,'-k^','LineWidth',1.5);
hold on
plot(N,Pbest0_4,'--mo','LineWidth',1.5);
hold on
set(gca,'FontSize',18);
legend('ACO','PSO','WOA','IWC','Location', 'Best');
grid on
xlabel('Number of Tasks');
ylabel('Total cost (normalized)');

figure;
plot(N,Pbest1_1,':bs','LineWidth',1.5);
hold on
plot(N,Pbest1_2,'-.r+','LineWidth',1.5);
hold on
plot(N,Pbest1_3,'-k^','LineWidth',1.5);
hold on
plot(N,Pbest1_4,'--mo','LineWidth',1.5);
hold on
set(gca,'FontSize',18);
legend('ACO','PSO','WOA','IWC','Location', 'Best');
xlabel('Number of Tasks');
ylabel('Price Cost');
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.0f'))
grid on

figure;
plot(N,Pbest2_1,':bs','LineWidth',1.5);
hold on
plot(N,Pbest2_2,'-.r+','LineWidth',1.5);
hold on
plot(N,Pbest2_3,'-k^','LineWidth',1.5);
hold on
plot(N,Pbest2_4,'--mo','LineWidth',1.5);
hold on
set(gca,'FontSize',18);
legend('ACO','PSO','WOA','IWC','Location', 'Best');
ylabel('Time Cost');
xlabel('Number of Tasks');
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.0f'))
grid on

figure;
plot(N,Pbest3_1,':bs','LineWidth',1.5);
hold on
plot(N,Pbest3_2,'-.r+','LineWidth',1.5);
hold on
plot(N,Pbest3_3,'-k^','LineWidth',1.5);
hold on
plot(N,Pbest3_4,'--mo','LineWidth',1.5);
hold on
set(gca,'FontSize',18);
legend('ACO','PSO','WOA','IWC','Location', 'Best');
ylabel('Load Cost');
grid on
xlabel('Number of Tasks');
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.0f'))
