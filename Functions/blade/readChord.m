function [elementsChord] = readChord(elementsMidPoint)
% Returns chord length at each element station.
% Read File
chordFile =fopen('..\..\Resource\Blade\Structural\Chord.txt','r');
readText = textscan(chordFile,'%f %f',-1,'CommentStyle','#');
fclose(chordFile);

% Write text into readable variables
stationNonDim = readText{1};
stationChordNonDim = readText{2};

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

