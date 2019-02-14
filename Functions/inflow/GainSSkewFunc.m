function [outputArg] = GainSSkewFunc(r,j,m,n,skew)
%GainSFunc
if(r ~= 0)
    outputArg = (skew^abs(m-r) - (-1)^min(r,m) * skew^abs(m+r));
else
    outputArg = 0.0;
end
end

