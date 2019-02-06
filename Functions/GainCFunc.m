function [outputArg] = GainCFunc(r,m,j,n,skew)
%GainCFunc
if(r ~= 0)
    outputArg = (skew^abs(m-r) + (-1)^min(r,m) * skew^abs(m+r)) * ...
                GamaFunc(r,m,j,n);
else
    outputArg = 0.0;
end
end

