function [outputArg] = DoubleFactorial(input)

% input guard
if(input == 0)
    outputArg = 1;
elseif(input == -1)
    outputArg = 1;
elseif(input == -3)
    outputArg = -1;
else
    % algorithm
    if(rem(input,2) == 1)
        outputArg = prod([1:2:input]);
    else
        outputArg = prod([2:2:input]);
    end
end
end

