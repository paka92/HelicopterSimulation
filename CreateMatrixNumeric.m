% Select r
R = 8;
% Select j as k, because j is a reserved variable
K = 8;
syms psi
total = 0;
[Phi,A,B] = addSymbolicMatrixFunc();

%indexing state subscripts
index = 1;
for r = 0:1:R
for k = (r+1):2:(K+1)

    states{index} = [r,k];
    index = index + 1;
    
end
end

for t=1:1:index-1
    disp(states{t}); 
end