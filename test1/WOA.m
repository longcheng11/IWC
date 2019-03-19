clc;
clear;
close all;
warning off;
addpath 'func\'

%cloud computing parameters
cloudcal_parameter;

D            = M*N; %search space
woa_idx      = zeros(1,D);
woa_get      = inf; 

%initialize individuals
for i=1:Num
    for j=1:D
        xwoa(i,j)=randn; 
    end
end 

for t=1:Iters
    t
    for i=1:Num
        %objective functions
        [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(xwoa(i,:));
        Fitout                        = pa(i);
        %update
        if Fitout < woa_get  
            woa_get = Fitout; 
            woa_idx = xwoa(i,:);
        end
    end
    c1 = 2-t*((2)/Iters); 
    c2 =-1+t*((-1)/Iters);
    %update position
    for i=1:Num
        r1         = rand();
        r2         = rand();
        K1         = 2*c1*r1-c1;  
        K2         = 2*r2;             
        l          = c2*rand + 1;  
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
    Pbest(t)  = pb;
    Pbest1(t) = pb1;
    Pbest2(t) = pb2;
    Pbest3(t) = pb3;
end


%output scheduling
[aij,fobj,fobj1,fobj2,fobj3] = fitness_results(woa_idx);

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
 

save R3.mat Pbest Pbest1 Pbest2 Pbest3 aij fobj fobj1 fobj2 fobj3 SE SS SC







