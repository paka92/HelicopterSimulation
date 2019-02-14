function[total] = CreateMatrixSymbolic(R,K)
% K is J in peters-he notation. K is preferred since J is a reserved
% variable.

syms Psi
total = 0;
[Phi,A,B] = addSymbolicMatrixFunc();
for r = 0:1:R
for k = (r+1):2:(K+1)
    
    total = total + Phi(r+1,k+1)*( (A(r+1,k+1) * cos(r*Psi)) + B(r+1,k+1) * sin(r*Psi) );   
    
end
end

end