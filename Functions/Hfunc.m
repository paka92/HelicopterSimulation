function [OutputArg] = Hfunc(m,n)
% H Function
if(n < m)
    OutputArg = 0.0;
elseif((n < 0) || ( m < 0))
   OutputArg = 0.0;
else
%Algortihm
    f1 = DoubleFactorial(n + m - 1);
    f2 = DoubleFactorial(n - m - 1);
    f3 = DoubleFactorial(n + m);
    f4 = DoubleFactorial(n - m);
    OutputArg = (f1 * f2)/(f3 * f4);
end
end

