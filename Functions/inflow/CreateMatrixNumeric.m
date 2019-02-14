function[CosStates,SinStates] = CreateMatrixNumeric(R,K)
% Select j as k, because j is a reserved variable

%indexing state subscripts
index = 1;
totalOnlyCosTerm = 0;
for r = 0:1:R
for k = (r+1):2:(K+1)
    
    if(r == 0)
        CosStates{index} = [r,k];
        totalOnlyCosTerm = totalOnlyCosTerm + 1;
    else
        CosStates{index} = [r,k];
        SinStates{index - totalOnlyCosTerm} = [r,k];
    end
    
    index = index + 1;
    
end
end

end