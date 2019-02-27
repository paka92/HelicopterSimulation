function[CosStates,SinStates] = CreateMatrixNumeric(R,K)
% Select j as k, because j is a reserved variable
% indexing state subscripts
index = 1;
totalOnlyCosTerm = 0;
totalCosStateNumber = 0;
totalSinStateNumber = 0;

% Predetermine variable sizes for output signal size allocation
for r = 0:1:R
for k = (r+1):2:(K+1)
    
    if(r == 0)
        totalCosStateNumber = totalCosStateNumber + 1;
        totalOnlyCosTerm = totalOnlyCosTerm + 1;
    else
        totalCosStateNumber = totalCosStateNumber + 1;
        totalSinStateNumber = totalSinStateNumber + 1;
    end
    
end
end

% Allocate outputs
CosStates = zeros(totalCosStateNumber,2);
SinStates = zeros(totalSinStateNumber,2);

% Actual Algorithm
for r = 0:1:R
for k = (r+1):2:(K+1)
    
    if(r == 0)
        CosStates(index,1) = r;
        CosStates(index,2) = k;
    else
        CosStates(index,1) = r;
        CosStates(index,2) = k;
        SinStates(index - totalOnlyCosTerm,1) = r;
        SinStates(index - totalOnlyCosTerm,2) = k;
    end
    
    index = index + 1;
    
end
end

end