function [elementsTwist] = readTwist(elementsMidPoint)
% Returns chord length at each element station.
% Read File
% Part III: Enter Twist at different stations in radians.(at each station twist is calculated as rotation from the root)
% Negative value indicates a decreased angle of attack from rotation plane
% Linear interpolation will be used for given intervals. If last location is not 1, then after last station  ...
% ...twist will be kept constant.
% Always start at root with 0.0 twist. 
% Station r, twist (rad)
TwistTable= ...
[...
0.01	0.0; ...
0.20	0.10;...
0.47	0.14;...
0.76	0.11;...
1.00	0.21;...
];

% Write text into readable variables
stationNonDim = TwistTable(:,1);
stationTwistNonDim = TwistTable(:,2);

% initialize output
elementsTwist = zeros(length(elementsMidPoint), 1);

% Initialize a vector that is a copy of elementMidPoints.
% Then limits its upper and lower bound wrt chord table.
chordLimitedElementMidPoints = elementsMidPoint;
for k = 1:1:length(elementsMidPoint)
   
    if(elementsMidPoint(k)<= stationNonDim(1))
        chordLimitedElementMidPoints(k) = stationNonDim(1);
    elseif(elementsMidPoint(k) >= stationNonDim(end))
        chordLimitedElementMidPoints(k) = stationNonDim(end);
    end
    
end

elementsTwist = interp1(stationNonDim,stationTwistNonDim,chordLimitedElementMidPoints);
end

