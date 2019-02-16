function [elementChord] = readChord(elementNumber,HingeOffsetNonDim)
% Returns chord length at each element station.
% Read File
chordFile =fopen('..\..\Resource\Blade\Structural\chord.txt','r');
readText = textscan(chordFile,'%f %f',-1,'CommentStyle','#');
fclose(chordFile);

% Write text into readable variables
stationNonDim = readText{1};
stationChordNonDim = readText{2};

% Limit Inputs.
if(CurrentStation <= stationNonDim(1))
    tableInput = stationNonDim(1);
elseif(CurrentStation >= stationNonDim(end))
    tableInput = stationNonDim(end);
else
    tableInput = CurrentStation;
end

aaa = interp1(stationNonDim,stationChordNonDim,tableInput)

end

