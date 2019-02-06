function [outputArg] = MFunc(m,r,n,j)
% M Function
if((m == r) && (n == j))
    outputArg = (2.0 / pi) * Hfunc(m,n);
else
    outputArg = 0.0;
end
end

