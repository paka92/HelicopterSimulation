function [outputArg] = GainCSkewFunc(r,j,m,n,skew)
%GainCFunc
if(r ~= 0)
    outputArg = (skew^abs(m-r) + (-1)^min(r,m) * skew^abs(m+r));
else
    outputArg = skew^m;
end
end

