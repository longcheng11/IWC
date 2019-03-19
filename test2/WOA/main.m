clc;
%clear;
close all;
warning off;

global M;
global N;
global MAX1;
global MAX2;
global MAX3;

Num         = 50;  
Iters        = 100; 
D            = M*N;
woa_idx      = zeros(1,D);
woa_get      = inf; 

for i=1:Num
    for j=1:D
        xwoa(i,j)=randn; 
    end
end 

for t=1:Iters
    [N,t]
    for i=1:Num
        
        [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(xwoa(i,:));
        Fitout                        = pa(i);
        
        if Fitout < woa_get  
            woa_get = Fitout; 
            woa_idx = xwoa(i,:);
        end
    end

    c1 = 2-t*((2)/Iters); 
    c2 =-1+t*((-1)/Iters);

    for i=1:Num
        rng(i);
        r1         = rand();
        r2         = rand();
        K1         = 2*c1*r1-c1;  
        K2         = 2*r2;             
        l          =c2*rand + 1;  
        rand_flag  = rand();   

            if rand_flag<0.5   
               if abs(K1)>=1
                  RLidx    = floor(Num*rand()+1);
                  X_rand   = xwoa(RLidx, :);
                  D_X_rand = abs(K2*X_rand(1:D)-xwoa(i,1:D)); 
                  xwoa(i,1:D)= X_rand(1:D)-K1*D_X_rand;     
               else
                  D_Leader = abs(K2*woa_idx(1:D)-xwoa(i,1:D)); 
                  xwoa(i,1:D)= woa_idx(1:D)-K1*D_Leader;    
               end
            else
                distLeader = abs(woa_idx(1:D)-xwoa(i,1:D));
                xwoa(i,1:D)  = distLeader*exp(l).*cos(l.*2*pi)+woa_idx(1:D);
            end
    end
    [pb,pb1,pb2,pb3]  = fitness(woa_idx);
    Pbest0(t) = pb;
    Pbest1(t) = N*MAX1*pb1;
    Pbest2(t) = N*MAX2*pb2;
    Pbest3(t) = N*MAX3*pb3;
end

if N == 100
   save R3_100.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 200
   save R3_200.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 300
   save R3_300.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 400
   save R3_400.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 500
   save R3_500.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 600
   save R3_600.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 700
   save R3_700.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 800
   save R3_800.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 900
   save R3_900.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 1000
   save R3_1000.mat Pbest0 Pbest1 Pbest2 Pbest3
end




