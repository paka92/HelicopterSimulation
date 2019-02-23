function [elementsTwist] = readTwist(elementsMidPoint)
% Returns chord length at each element station.
% Read File
twistFile =fopen('Resource\Blade\Structural\Twist.txt','r');
readText = textscan(twistFile,'%f %f',-1,'CommentStyle','#');
fclose(twistFile);

% Write text into readable variables
stationNonDim = readText{1};
stationTwistNonDim = readText{2};

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

