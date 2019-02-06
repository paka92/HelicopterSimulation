function [outputArg] = RadialShapeFunc(r,j)
%RadialShapeFunction
multiplyingTerm = sqrt((2*j+1) * DoubleFactorial(r,j));
iterativeTerm = 0;

for q = r:2:j-1
    
    A = (r^(-q)) * ((-1)^((q-r)/2);
    A = A * DoubleFactorial(q+j) / ...
    (DoubleFactorial(q-r) * DoubleFactorial(q+r) * DoubleFactorial(j-q-1));
    iterativeTerm = iterativeTerm + A;

end

outputArg = multiplyingTerm * iterativeTerm;
