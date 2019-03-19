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
N = 1000;
%number of resource node
M = 40;	
%number of iterations
Iters=200;
%number of search agent
Num=100;

%resource node properties
for i=1:M
	if(rand(1)>=.5)
	     En(i)= 1860;
	     Sn(i) = 2048;
	     Cn(i) = 400;
	else
	     En(i)= 2660;
	     Sn(i) = 4096;
	     Cn(i) = 500;
	 end    
end 

%task properties
Et = 400+600*rand(1,N);
St = 200+800*rand(1,N);
Ct = 25+25*rand(1,N);

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




