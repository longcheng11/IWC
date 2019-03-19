function [fobj,fobj1,fobj2,fobj3] = fitness(X);

global N;
global M;
global En;
global Sn;
global Cn;
global Et;
global St;
global Ct;
global P;

global MAX1;
global MAX2;
global MAX3;

%contraints
X1 = zeros(N,M);
for i = 1:N
    for j = 1:M
         X1(i,j) = X(M*(i-1)+j);
    end
end

X2 = zeros(N,M);
for i = 1:N
    tmps1   = X1(i,:);
    [V,I]   = max(tmps1);
    X2(i,I) = 1;    
end


%convert X to matrix A
aij = zeros(N,M);
for i = 1:N
    for j = 1:M
        if X2(i,j) > 0
           aij(i,j) = 1;
        else
           aij(i,j) = 0; 
        end
    end
end


alpha1 = 1/3;
alpha2 = 1/3;
alpha3 = 1/3;

fobj1 = 0;
for i = 1:N
    for j = 1:M
        fobj1 = fobj1 + aij(i,j)*P*Et(i)/En(j)*Ct(i)/Cn(j);
    end
end 
fobj1 = fobj1/MAX1/N;

fobj2 = 0;
for i = 1:N
    for j = 1:M
        fobj2 = fobj2 + aij(i,j)*Et(i)/En(j);
    end
end 
fobj2 = fobj2/MAX2/N;

fobj3 = 0;
for i = 1:N
    for j = 1:M
        fobj3 = fobj3 + aij(i,j)*St(i)/Sn(j);
    end
end 
fobj3 = fobj3/MAX3/N;


fobj   = alpha1*fobj1 + alpha2*fobj2 + alpha3*fobj3;

 
