function [outputArg] = MFunc(r,j,m,n)
% M Function
if((m == r) && (n == j))
    outputArg = (2.0 / pi) * Hfunc(r,j);
else
    outputArg = 0.0;
end
end

