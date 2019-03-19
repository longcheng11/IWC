rng(1);

global N;
global M;
global En;
global Sn;
global Cn;
global Et;
global St;
global Ct;
global P;
global Iters;
global Num;

global MAX1;
global MAX2;
global MAX3;

%number of tasks
N =100;
%number of resource node
M = 40;	
%number of iterations
Iters=100;
%number of search agent
Num=50;

En = floor(200+300*rand(1,M));
Sn = floor(100+400*rand(1,M));
Cn = floor(100+150*rand(1,M));

Et = 10+40*rand(1,N);
St = 50+50*rand(1,N);
Ct = 20+30*rand(1,N);

% price unit
P  = 8;

%max values
for i = 1:N
    for j = 1:M
        dat1(i,j)= P*Et(i)/En(j)*Ct(i)/Cn(j);
        dat2(i,j)=   Et(i)/En(j);
        dat3(i,j)=   St(i)/Sn(j);
    end
end 
MAX1 = max(max(dat1));
MAX2 = max(max(dat2));
MAX3 = max(max(dat3));




