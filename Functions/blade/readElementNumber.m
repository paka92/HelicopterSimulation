function [stationMidPoints] = readElementNumber(HingeOffset)
% Read the element Number for blade element theory

elemNoFile = fopen('..\..\Resource\Blade\Aerodynamic\NumberOfBladeElements.txt','r');
readText = textscan(elemNoFile,'%f ',-1,'CommentStyle','#');
fclose(elemNoFile);

elementNumber = readText{1}(1);
% Calculate length of an element
deltaElem = (1.0 - HingeOffsetNonDim) / elementNumber;

% Using element MidPoints
CurrentStation = HingeOffsetNonDim + deltaElem / 2.0; 

% CreateStationLocations
stationMidPoints = zeros(elementNumber,1);

for i = 1:1:elementNumber
    stationMidPoints(i) = CurrentStation;
    CurrentStation = CurrentStation + deltaElem;
end

end

