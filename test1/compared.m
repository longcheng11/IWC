clc;
clear;
close all;
warning off;
addpath 'func\'

%cloud computing parameters
cloudcal_parameter;

% % run each algorithm, results are stored in each folder.
%run('ACO.m');
%run('PSO.m');
%run('WOA.m');
%run('IWC.m');

load R1.mat
Pbest_1  = Pbest;
Pbest1_1 = Pbest1;
Pbest2_1 = Pbest2;
Pbest3_1 = Pbest3;
aij_1    = aij;
fobj_1   = fobj;
fobj1_1  = fobj1;
fobj2_1  = fobj2;
fobj3_1  = fobj3;
SE_1     = SE;
SS_1     = SS;
SC_1     = SC;
 
load R2.mat
Pbest_2  = Pbest;
Pbest1_2 = Pbest1;
Pbest2_2 = Pbest2;
Pbest3_2 = Pbest3;
aij_2    = aij;
fobj_2   = fobj;
fobj1_2  = fobj1;
fobj2_2  = fobj2;
fobj3_2  = fobj3;
SE_2     = SE;
SS_2     = SS;
SC_2     = SC;

load R3.mat
Pbest_3  = Pbest;
Pbest1_3 = Pbest1;
Pbest2_3 = Pbest2;
Pbest3_3 = Pbest3;
aij_3    = aij;
fobj_3   = fobj;
fobj1_3  = fobj1;
fobj2_3  = fobj2;
fobj3_3  = fobj3;
SE_3     = SE;
SS_3     = SS;
SC_3     = SC;

load R4.mat
Pbest_4  = Pbest;
Pbest1_4 = Pbest1;
Pbest2_4 = Pbest2;
Pbest3_4 = Pbest3;
aij_4    = aij;
fobj_4   = fobj;
fobj1_4  = fobj1;
fobj2_4  = fobj2;
fobj3_4  = fobj3;
SE_4     = SE;
SS_4     = SS;
SC_4     = SC;

N=1:4:100;
Pbest_1=Pbest_1(N);
Pbest_2=Pbest_2(N);
Pbest_3=Pbest_3(N);
Pbest_4=Pbest_4(N);

Pbest1_1=Pbest1_1(N);
Pbest1_2=Pbest1_2(N);
Pbest1_3=Pbest1_3(N);
Pbest1_4=Pbest1_4(N);

Pbest2_1=Pbest2_1(N);
Pbest2_2=Pbest2_2(N);
Pbest2_3=Pbest2_3(N);
Pbest2_4=Pbest2_4(N);

Pbest3_1=Pbest3_1(N);
Pbest3_2=Pbest3_2(N);
Pbest3_3=Pbest3_3(N);
Pbest3_4=Pbest3_4(N);

figure;
plot(N,Pbest_1,':bs','LineWidth',1.5);
hold on
plot(N,Pbest_2,'-.r+','LineWidth',1.5);
hold on
plot(N,Pbest_3,'-k^','LineWidth',1.5);
hold on
plot(N,Pbest_4,'--mo','LineWidth',1.5);
hold on
set(gca,'FontSize',18);
legend('ACO','PSO','WOA','IWC','Location', 'Best');
grid on
xlabel('Number of Iterations');
ylabel('Total cost');
%print('-depsc','1_tc.eps');
%saveas(gcf,'1_tc.eps')

%cost by number of iterations
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
grid on
xlabel('Number of Iterations');
ylabel('Price Cost');
% set(gca,'ytick',Pbest1_1)
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.2f'))

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
grid on
xlabel('Number of Iterations');
% set(gca,'ytick',Pbest2_1)
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.2f'))

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
xlabel('Number of Iterations');
% set(gca,'ytick',Pbest3_1)
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.2f'))
