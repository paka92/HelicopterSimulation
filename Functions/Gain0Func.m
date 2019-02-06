function [outputArg] = Gain0Func(r,m,j,n,skew)
%Gain0Func
if(r == 0)
    outputArg = skew * GamaFunc(r,m,j,n);
else
    outputArg = 0.0;
end
end

