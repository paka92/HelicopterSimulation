% Enter R and J to CreateMatrixNumeric function
% It will create the [superscript,subscript] values for each states in
% cosStates and sinStates cell array.

[cosStates,sinStates] = CreateMatrixNumeric(3,3);
%Get State Numbers
countCosStates = length(cosStates);
countSinStates = length(sinStates);

%Initialize Mass matricie
Mcos    = zeros(countCosStates);
Lcos    = sym(zeros(countCosStates));
GamaCos = zeros(countCosStates);
Msin    = zeros(countSinStates);
Lsin    = sym(zeros(countSinStates));
GamaSin = zeros(countSinStates);
syms X;
for ii = 1:1:countCosStates
% State Loop    
    for jj = 1:1:countCosStates
    % Create interstate values
    Mcos(ii,jj) = MFunc(cosStates{ii}(1),cosStates{ii}(2),cosStates{jj}(1),cosStates{jj}(2));
    Lcos(ii,jj) = GainCSkewFunc(cosStates{ii}(1),cosStates{ii}(2),cosStates{jj}(1),cosStates{jj}(2),X);
    GamaCos(ii,jj) = GamaFunc(cosStates{ii}(1),cosStates{ii}(2),cosStates{jj}(1),cosStates{jj}(2));
    end
    
end

for ii = 1:1:countSinStates
% State Loop    
    for jj = 1:1:countSinStates
    % Create interstate values
    Msin(ii,jj) = MFunc(sinStates{ii}(1),sinStates{ii}(2),sinStates{jj}(1),sinStates{jj}(2));
    Lsin(ii,jj) = GainSSkewFunc(sinStates{ii}(1),sinStates{ii}(2),sinStates{jj}(1),sinStates{jj}(2),X);
    GamaSin(ii,jj) = GamaFunc(sinStates{ii}(1),sinStates{ii}(2),sinStates{jj}(1),sinStates{jj}(2));
    end
    
end


% for ii = 1:1:length(c)
%     disp(c{ii});
% end
% 
% for ii = 1:1:length(s)
%     disp(s{ii});
% end