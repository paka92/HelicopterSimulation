function [outputValue] = lookup2d(LeftInput,TopInput,LeftBreakpoints,TopBreakpoints,T)
%INTERPOL2D Summary of this function goes here
%   Detailed explanation goes here
sizeLeft = length(LeftBreakpoints);
sizeTop  = length(TopBreakpoints);

%Find Left and Top Index 
[~,LeftIndex] = histc(LeftInput,LeftBreakpoints);
[~,TopIndex]  = histc(TopInput, TopBreakpoints);

%Left Exceedslimit
if(LeftInput <= LeftBreakpoints(1))
   LeftIndex = 1;
elseif(LeftInput >= LeftBreakpoints(sizeLeft))
   LeftIndex = sizeLeft - 1;
end


%Top Exceedslimit
if(TopInput <= TopBreakpoints(1))
   TopIndex = 1;
elseif(TopInput >= TopBreakpoints(sizeTop))
   TopIndex = sizeTop - 1;
end


% Find the corner values.
y1 = T(LeftIndex,TopIndex);
y2 = T(LeftIndex,TopIndex + 1);
y3 = T(LeftIndex + 1, TopIndex);
y4 = T(LeftIndex + 1, TopIndex + 1);

%Find corresponding corner positions
x1 = TopBreakpoints(TopIndex);
x2 = TopBreakpoints(TopIndex + 1);
x3 = LeftBreakpoints(LeftIndex);
x4 = LeftBreakpoints(LeftIndex + 1);

%Interpolate
x12 = interpol(TopInput, x1,y1,x2,y2);
x34 = interpol(TopInput, x1,y3,x2,y4);

outputValue = interpol(LeftInput,x3,x12,x4,x34);

end
