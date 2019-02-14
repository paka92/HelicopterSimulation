function [OutputArg] = Hfunc(r,j)
% H Function
if(j < r)
    OutputArg = 0.0;
elseif((j < 0) || ( r < 0))
   OutputArg = 0.0;
else
%Algortihm
    f1 = DoubleFactorial(j + r - 1);
    f2 = DoubleFactorial(j - r - 1);
    f3 = DoubleFactorial(j + r);
    f4 = DoubleFactorial(j - r);
    OutputArg = (f1 * f2)/(f3 * f4);
end
end

