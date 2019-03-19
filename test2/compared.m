clc;
clear;
close all;
warning off;
addpath 'func\'

global N;
Ns = 100:100:1000;
	
for i = 1:length(Ns)
N = Ns(i);  
cloudcal_parameter;
%run('ACO\main.m');
%run('PSO\main.m');
%run('WOA\main.m');
%run('IWC\main.m');
end


N = 100:100:1000;

Pbest0_1 = [];
Pbest1_1 = [];
Pbest2_1 = [];
Pbest3_1 = [];

load ACO\R1_100.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_200.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_300.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_400.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_500.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_600.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_700.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_800.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_900.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];
load ACO\R1_1000.mat
Pbest0_1 = [Pbest0_1,Pbest0(end)]; 
Pbest1_1 = [Pbest1_1,Pbest1(end)];
Pbest2_1 = [Pbest2_1,Pbest2(end)];
Pbest3_1 = [Pbest3_1,Pbest3(end)];

Pbest0_2 = [];
Pbest1_2 = [];
Pbest2_2 = [];
Pbest3_2 = [];

load PSO\R2_100.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_200.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_300.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_400.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_500.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_600.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_700.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_800.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)];
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_900.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];
load PSO\R2_1000.mat
Pbest0_2 = [Pbest0_2,Pbest0(end)]; 
Pbest1_2 = [Pbest1_2,Pbest1(end)];
Pbest2_2 = [Pbest2_2,Pbest2(end)];
Pbest3_2 = [Pbest3_2,Pbest3(end)];

Pbest0_3 = [];
Pbest1_3 = [];
Pbest2_3 = [];
Pbest3_3 = [];

load WOA\R3_100.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_200.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_300.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_400.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_500.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_600.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_700.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_800.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_900.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];
load WOA\R3_1000.mat
Pbest0_3 = [Pbest0_3,Pbest0(end)];
Pbest1_3 = [Pbest1_3,Pbest1(end)];
Pbest2_3 = [Pbest2_3,Pbest2(end)];
Pbest3_3 = [Pbest3_3,Pbest3(end)];

Pbest0_4 = [];
Pbest1_4 = [];
Pbest2_4 = [];
Pbest3_4 = [];

load IWC\R4_100.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_200.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_300.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_400.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_500.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_600.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_700.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_800.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_900.mat
Pbest0_4 = [Pbest0_4,Pbest0(end)];
Pbest1_4 = [Pbest1_4,Pbest1(end)];
Pbest2_4 = [Pbest2_4,Pbest2(end)];
Pbest3_4 = [Pbest3_4,Pbest3(end)];
load IWC\R4_1000.mat
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
