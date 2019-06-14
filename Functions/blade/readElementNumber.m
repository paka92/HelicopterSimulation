function [stationMidPoints] = readElementNumber(HingeOffset,elementNumber)
% Note that HingeOffset must be nondimensonal by R.

% Calculate length of an element
deltaElem = (1.0 - HingeOffset) / elementNumber;

% Using element MidPoints
CurrentStation = HingeOffset + deltaElem / 2.0; 

% CreateStationLocations
stationMidPoints = zeros(elementNumber,1);

for i = 1:1:elementNumber
    stationMidPoints(i) = CurrentStation;
    CurrentStation = CurrentStation + deltaElem;
end

end

