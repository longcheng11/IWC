clc;
clear;
close all;
warning off;
addpath 'func\'

%cloud computing parameters
cloudcal_parameter;

Ant   = M*N; 
Rou   = 0.7;   
P0    = 0.3;   

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
    t
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
        Tau(i)=(1-Rou)*Tau(i)+pb(i);  %update information 
    end 
    
    Pbest(t)  = pa(i);
    Pbest1(t) = pa1(i);
    Pbest2(t) = pa2(i);
    Pbest3(t) = pa3(i);
end 


%output scheduling results
[aij,fobj,fobj1,fobj2,fobj3] = fitness_results(temp1);

for i = 1:M
    tmps = aij(:,i);
    indx = find(tmps==1);
    SE(i)= sum(Et(indx))/En(i);
end

for i = 1:M
    tmps = aij(:,i);
    indx = find(tmps==1);
    SS(i)= sum(St(indx))/Sn(i);
end

for i = 1:M
    tmps = aij(:,i);
    indx = find(tmps==1);
    SC(i)= sum(Ct(indx))/Cn(i);
end
 

save R1.mat Pbest Pbest1 Pbest2 Pbest3 aij fobj fobj1 fobj2 fobj3 SE SS SC







