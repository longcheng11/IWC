clc;
clear;
close all;
warning off;
addpath 'func\'

%cloud computing parameters
cloudcal_parameter;

c1           = 1.2;
c2           = 1.2;
D            = M*N; 
woa_idx      = zeros(1,D);
woa_get      = inf; 
PSmin        = 10;
PSmax        = Num+1;
ps           = Num;
alpha        = 0.25;

%initialize individuals
for i=1:Num
    for j=1:D
        xwoa(i,j)=randn; 
    end
end 

flag1 = 0;
flag2 = 0;

for t=1:Iters
    t    
    for i=1:Num
        %update objective function
        [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(xwoa(i,:));
        Fitout                        = pa(i);
        %update
        if Fitout < woa_get  
            woa_get = Fitout; 
            woa_idx = xwoa(i,:);
            Pbests  = i;
        end
    end

    C2 =-1+t*((-1)/Iters);
    a=(1-t./(20*Iters))+(1-t./Iters)/(1-20*t./Iters); 
    W=1;
    
    if t > 3
       if flag1 == 0 | flag2 == 0%
          xwoa;
          woa_idx;
          ninc = 0;
          ps   = ps + ninc;
       end
       %increase operator
       if flag2 == 2   
          ninc = round(ps*(PSmax - ps)^2/PSmax^2); 
          %increase
          %S1
          %computing distance
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist);
          Sidx1   = II(1:end-1);
          
          %S2
          xmin = -1;
          xmax =  1;
          Nd   = max(round(ninc/2),1);%if ninc=1£¬Nd=1
          %generate a prime number
          p    = 2;
          Prime= primes(10000);
          xx   = 1;
          %get the minimal prime number
          while (p-3)/2 < Nd
             xx = xx+1;
             p  = Prime(xx);
          end
          for jj = 1:Nd
              ri(jj) = 2*cos(2*pi*jj/p);
          end
          lab2 = [];
          for jj = 1:Nd
              if ri(jj)>= xmin & ri(jj)<= xmax
                 lab2 = [lab2,jj]; 
              end
          end          
          Sidx2 = lab2;
          %S3
          Ud = c1*xmax;
          Ld = c2*xmin;
          R  = rand;
          if R<0.5
             dR = (Ud-Ld)*(2*R^2 + Ld/(Ud-Ld)); 
          else
             dR = (Ud-Ld)*(1-2*(R-1)^2 + Ld/(Ud-Ld));  
          end
          woa_idx  = woa_idx + dR;
          Sidx3    = Pbests;
          %new individual to replace the worst one
          % randomly choose x1 and x2 from S
          Sidx = unique([Sidx1,Sidx2,Sidx3]);
          %compute distance
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist,'descend');
          for jj = 1:ninc
              indxx= randperm(length(Sidx));%randomly selected from S
              xwoa(II(jj),:) = alpha^0.5*xwoa(Sidx(indxx(1)),:) + (1-alpha^0.5)*xwoa(Sidx(indxx(2)),:);
          end
          ps   = ps + ninc;
       end
       
       %delete operator
       if flag1 == 1 | flag2 == 1   
          ninc = round(ps^2*(PSmax - ps)/PSmax^2); 
          %delete the worst class
          %generate reference point R
          R    = woa_idx;
          %compute distance
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist,'descend');
          %delete ninc, replace by 0
          xwoa(II(1:ninc),:) = 0;
          ps   = ps - ninc;
       end
    end
    
    %position update
    for i=1:Num
        A_vector   = 2*a*rand()-a;  
        C_vector   = 2*rand();          
        l          = C2*rand + 1;   
        rand_flag  = rand();   
        
        if rand_flag<0.5   
           if abs(A_vector)>=1
             
              RLidx    = floor(Num*rand()+1);
              X_rand   = xwoa(RLidx,:);
              D_vector_= abs(C_vector*X_rand(1:D)-xwoa(i,1:D)); 
              xwoa(i,1:D)= X_rand(1:D)-A_vector*D_vector_;    
              
           else
              D_vector = abs(C_vector*W*woa_idx(1:D)-xwoa(i,1:D)); 
              xwoa(i,1:D)=  W* woa_idx(1:D)-A_vector*D_vector;%2    
           end
        else
            distLeader = abs(W*woa_idx(1:D)-xwoa(i,1:D));
            xwoa(i,1:D)  =distLeader*exp(l).*cos(l.*2*pi)+ W*woa_idx(1:D);
        end
    end
    %check whether update
    woa_idx2{t} = woa_idx;    
    if t > 2
       if sum(woa_idx2{t} == woa_idx2{t-1}) < D & sum(woa_idx2{t-1} == woa_idx2{t-2}) < D & ps > PSmin %update continuously in 2G
          flag1 = 1;%delete
       else
          flag1 = 0;
       end
       if sum(woa_idx2{t} == woa_idx2{t-1}) < D & ps == PSmax %update continuously in 2G
          flag2 = 1;%delete
       elseif sum(woa_idx2{t} == woa_idx2{t-1}) == D & ps < PSmax %not update
          flag2 = 2;%increase 
       else
          flag2 = 0;
       end       
    end
    
       
    [pb,pb1,pb2,pb3]  = fitness(woa_idx);
    Pbest(t)  = pb;
    Pbest1(t) = pb1;
    Pbest2(t) = pb2;
    Pbest3(t) = pb3;
end
  

%output scheduling results
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
 

save R4.mat Pbest Pbest1 Pbest2 Pbest3 aij fobj fobj1 fobj2 fobj3 SE SS SC







