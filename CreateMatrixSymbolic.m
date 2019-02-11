% Select r
R = 3;
% Select j as k, because j is a reserved variable
K = 3;

syms psi
total = 0;
[Phi,A,B] = addSymbolicMatrixFunc();
for r = 0:1:R
for k = (r+1):2:(K+1)
    
    total = total + Phi(r+1,k+1)*( (A(r+1,k+1) * cos(r*psi)) + B(r+1,k+1) * sin(r*psi) );   
    
end
end
total