clc;
%clear;
close all;
warning off;

global M;
global N;
global MAX1;
global MAX2;
global MAX3;

c1    = 1.8;       
c2    = 1.8;        
w     = 0.9;         
Iters = 100;            
D     = M*N;            
Num   = 50;           

for i=1:Num
    for j=1:D
        x(i,j)=randn;  %position
        v(i,j)=randn;  %velocity
    end
end 

y=zeros(size(x));

for i=1:Num
    [p(i),p1(i),p2(i),p3(i)]  = fitness(x(i,:));
    y(i,:)= x(i,:);
end

pg = x(1,:);             

for i=2:Num
    [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(x(i,:));
    [pb(i),pb1(i),pb2(i),pb3(i)]  = fitness(pg);
    
    if pa(i) < pb(i)
       pg=x(i,:);
    end
end

for t=1:Iters
    [N,t]
    for i=1:Num
        rng(i);
        v(i,:) = w*v(i,:)+c1*rand*(y(i,:)-x(i,:))+c2*rand*(pg-x(i,:));
        x(i,:) = x(i,:)+v(i,:);
        
        [pa(i),pa1(i),pa2(i),pa3(i)] = fitness(x(i,:));
        if pa(i)<p(i)
           p(i)  = pa(i);
           y(i,:)= x(i,:);
        end
        [pb(i),pb1(i),pb2(i),pb3(i)] = fitness(pg);
        if p(i)<pb(i)
           pg=y(i,:);
        end
    end
    Pbest0(t) = pb(i);
    Pbest1(t) = N*MAX1*pb1(i);
    Pbest2(t) = N*MAX2*pb2(i);
    Pbest3(t) = N*MAX3*pb3(i);
end


if N == 100
   save R2_100.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 200
   save R2_200.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 300
   save R2_300.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 400
   save R2_400.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 500
   save R2_500.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 600
   save R2_600.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 700
   save R2_700.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 800
   save R2_800.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 900
   save R2_900.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 1000
   save R2_1000.mat Pbest0 Pbest1 Pbest2 Pbest3
end








