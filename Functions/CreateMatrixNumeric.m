function[states] = CreateMatrixNumeric(R,K)
% Select j as k, because j is a reserved variable

%indexing state subscripts
index = 1;
for r = 0:1:R
for k = (r+1):2:(K+1)

    states{index} = [r,k];
    index = index + 1;
    
end
end

end