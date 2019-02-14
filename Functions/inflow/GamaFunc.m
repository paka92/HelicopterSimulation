function [outputArg] = GamaFunc(r,j,m,n)
% Gama Function

% Condition (i)
if(rem(r+m,2) == 0)
    signOfEquation = (-1)^((n+j-2*r)/2);
    numerator = 2 * sqrt((2*n+1)*(2*j+1));
    denumerator1 = sqrt(Hfunc(m,n) * Hfunc(r,j));
    denumerator2 = (n+j) * (n+j+2) * ((n-j)^2 - 1);
    outputArg = signOfEquation * numerator / (denumerator1 * denumerator2);
elseif((rem(r+m,1) == 0) && abs(j-n)==1)
    signOfEquation = sign(r-m);
    numerator = pi / 2;
    denumerator1 = sqrt(Hfunc(m,n) * Hfunc(r,j));
    denumerator2 = sqrt((2*n+1)*(2*j+1));
    outputArg = signOfEquation * numerator / (denumerator1 * denumerator2);
else
    outputArg = 0.0;
end

end

