clc;
%clear;
close all;
warning off;

global M;
global N;
global MAX1;
global MAX2;
global MAX3;


c1           = 1.2;
c2           = 1.2;
Num          = 50;  
Iters        = 100;   
D            = M*N; 
woa_idx      = zeros(1,D);
woa_get      = inf; 
PSmin        = 10;
PSmax        = Num+1;
ps           = Num;
alpha        = 0.25;

for i=1:Num
    for j=1:D
        xwoa(i,j)=randn; 
    end
end 

flag1 = 0;
flag2 = 0;

for t=1:Iters
    [N,t]
    for i=1:Num       
        [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(xwoa(i,:));
        Fitout                        = pa(i);
  
        if Fitout < woa_get  
            woa_get = Fitout; 
            woa_idx = xwoa(i,:);
            Pbests  = i;
        end
    end
  
    a=(1-t./(20*Iters))+(1-t./Iters)/(1-20*t./Iters); 
    C2 =-1+t*((-1)/Iters);
    
    if t > 3
       if flag1 == 0 | flag2 == 0 
          xwoa;
          woa_idx;
          ninc = 0;
          ps   = ps + ninc;
       end
      
       if flag2 == 2   
          ninc = round(ps^2*(PSmax - ps)/PSmax^2); 
          %S1
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist);
          Sidx1   = II(1:end-1);
          
          %S2
          xmin = -1;
          xmax =  1;
          Nd   = max(round(ninc/2),1);
        
          p    = 2;
          Prime= primes(10000);
          xx   = 1;
         
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
         
          Sidx = unique([Sidx1,Sidx2,Sidx3]);
         
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist,'descend');
          for jj = 1:ninc
              indxx= randperm(length(Sidx));
              xwoa(II(jj),:) = alpha^0.5*xwoa(Sidx(indxx(1)),:) + (1-alpha^0.5)*xwoa(Sidx(indxx(2)),:);
          end
          ps   = ps + ninc;
       end
       
       
       if flag1 == 1 | flag2 == 1   
          ninc = round(ps^2*(PSmax - ps)/PSmax^2); 
          R    = woa_idx;
          for jj = 1:Num-1
              dist(jj) = norm(woa_idx-xwoa(jj,:)); 
          end
          [VV,II] = sort(dist,'descend');
          
          xwoa(II(1:ninc),:) = 0;
          ps   = ps - ninc;
       end
    end
  
    for i=1:Num
        rng(i);
        r          = rand();
        A_vector   = 2*a*r-a;  
        C_vector   = 2*r;        
        l          =C2*rand + 1;  
        rand_flag  = rand();   
        
            if rand_flag<0.5   
               if abs(A_vector)>=1
                  RLidx    = floor(Num*rand()+1);
                  X_rand   = xwoa(RLidx,:);
                  D_vector_= abs(C_vector*X_rand(1:D)-xwoa(i,1:D));
                  xwoa(i,1:D)= X_rand(1:D)-A_vector*D_vector_;   
               else
                  D_vector = abs(C_vector*woa_idx(1:D)-xwoa(i,1:D));
                  xwoa(i,1:D)= woa_idx(1:D)-A_vector*D_vector;
               end
            else
                distLeader = abs(woa_idx(1:D)-xwoa(i,1:D));
                xwoa(i,1:D)  = distLeader*exp(l).*cos(l.*2*pi)+woa_idx(1:D);
            end
        end

    woa_idx2{t} = woa_idx;    
    if t > 2
       if sum(woa_idx2{t} == woa_idx2{t-1}) < D & sum(woa_idx2{t-1} == woa_idx2{t-2}) < D & ps > PSmin
          flag1 = 1;
       else
          flag1 = 0;
       end
       if sum(woa_idx2{t} == woa_idx2{t-1}) < D & ps == PSmax
          flag2 = 1;
       elseif sum(woa_idx2{t} == woa_idx2{t-1}) == D & ps < PSmax
          flag2 = 2;   
       else
          flag2 = 0; 
       end       
    end   
    
    [pb,pb1,pb2,pb3]  = fitness(woa_idx);
    Pbest0(t) =   pb;
    Pbest1(t) = N*MAX1*pb1;
    Pbest2(t) = N*MAX2*pb2;
    Pbest3(t) = N*MAX3*pb3;
end
  

if N == 1000
   save R4_1000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 2000
   save R4_2000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 3000
   save R4_3000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 4000
   save R4_4000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 5000
   save R4_5000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 6000
   save R4_6000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 7000
   save R4_7000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 8000
   save R4_8000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 9000
   save R4_9000.mat Pbest0 Pbest1 Pbest2 Pbest3
end
if N == 10000
   save R4_10000.mat Pbest0 Pbest1 Pbest2 Pbest3
end






