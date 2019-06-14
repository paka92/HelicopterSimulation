function [y0] = interpol(x0,x1, y1, x2, y2)
% Function Interpol calculates y0 at x0

if(x1 < x2)
    xMax = x2;
    xMin = x1;
else
    xMax = x1;
    xMin = x2;
end

u = x0;
if(x0 <= xMin)
    u = xMin;
elseif(x0 >= xMax)
    u = xMax;
end
%Actual Interpolation
y0 = y1 + (u - x1)*((y2-y1)/(x2-x1));


end

