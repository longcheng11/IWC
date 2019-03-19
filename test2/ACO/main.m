clc;
%clear;
close all;
warning off;

global M;
global N;
global MAX1;
global MAX2;
global MAX3;

Ant   = M*N; 
Num   = 50;  
Rou   = 0.7; 
P0    = 0.3; 
Iters = 100; 

%intial position
for i=1:Num
    for j=1:Ant
        x(i,j)=randn;  %intial position
    end
end
 
for i=1:Num 
    [p(i),p1(i),p2(i),p3(i)] = fitness(x(i,:));
    Tau(i)                   = p(i);                 
end 
 
for t = 1:Iters 
    [N,t]
    lamda=1/t; 
    %learning
    [Tau_Best(t),BestIndex]=max(Tau);
    %transfer proability
    for i=1:Num 
        Ps(i)=(Tau(BestIndex)-Tau(i))/Tau(BestIndex);  
    end 
    
    for i=1:Num 
        rng(i);
        if Ps(i)<P0  %local search 
            temp1=x(i,:)+randn(1,Ant)*lamda;       
        else  %global search 
            temp1=x(i,:)+randn(1,Ant); 
        end 
        [pa(i),pa1(i),pa2(i),pa3(i)] = fitness(temp1);
        [pb(i),pb1(i),pb2(i),pb3(i)] = fitness(x(i,:));
        
        %%% 
        if pa(i)<pb(i)  %check ant moves or not 
            x(i,:)=temp1; 
        end 
    end 
    for i=1:Num 
        [pb(i),pb1(i),pb2(i),pb3(i)] = fitness(x(i,:));
        Tau(i)=(1-Rou)*Tau(i)+pb(i);  %%update  
    end 
    
    Pbest0(t) = pa(i);
    Pbest1(t) = N*MAX1*pa1(i);
    Pbest2(t) = N*MAX2*pa2(i);
    Pbest3(t) = N*MAX3*pa3(i);
end

%save results
if N == 100
   save R1_100.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 200
   save R1_200.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 300
   save R1_300.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 400
   save R1_400.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 500
   save R1_500.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 600
   save R1_600.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 700
   save R1_700.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 800
   save R1_800.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 900
   save R1_900.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 1000
   save R1_1000.mat Pbest0 Pbest1 Pbest2 Pbest3
end






