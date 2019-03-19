clc;
clear;
close all;
warning off;
addpath 'func\'

%cloud computing parameters
cloudcal_parameter;

c1    = 1.8;         %acceleration 1
c2    = 1.8;         %acceleration 2
w     = 0.9;         %interia weight
D     = M*N;            %search space       
%initialize individuals (position and velocity)
for i=1:Num
    for j=1:D
        x(i,j)=randn;  %position
        v(i,j)=randn;  %velocity
    end
end

%intial fitness£¬initialize Pi and Pg
for i=1:Num
    [p(i),p1(i),p2(i),p3(i)]  = fitness(x(i,:));
    y(i,:)= x(i,:);
end
%global optimum
pg = x(1,:);             

for i=2:Num
    [pa(i),pa1(i),pa2(i),pa3(i)]  = fitness(x(i,:));
    [pb(i),pb1(i),pb2(i),pb3(i)]  = fitness(pg);
    
    if pa(i) < pb(i)
       pg=x(i,:);
    end
end

for t=1:Iters
    t
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
    Pbest(t)  = pb(i);
    Pbest1(t) = pb1(i);
    Pbest2(t) = pb2(i);
    Pbest3(t) = pb3(i);
end


%output scheduling results
[aij,fobj,fobj1,fobj2,fobj3] = fitness_results(pg);

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
 

save R2.mat Pbest Pbest1 Pbest2 Pbest3 aij fobj fobj1 fobj2 fobj3 SE SS SC







