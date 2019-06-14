function [elementsChord] = readChord(elementsMidPoint)
% Returns chord length at each element station.
% Read File

% Part III: Enter Chord Lengths at different stations nondimensionalizing with R.
% Linear interpolation will be used for given intervals. If last location is not 1, then after last station  ...
% ...chord will be kept constant.
% Station r, chord (c/R)
chordTable = ...
[...
0.01	0.10;...
0.40 	0.15;...
1.00	0.08;...
];

% Write text into readable variables
stationNonDim = chordTable(:,1);
stationChordNonDim  = chordTable(:,2);

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

elementsChord = interp1(stationNonDim,stationChordNonDim,chordLimitedElementMidPoints);

end

