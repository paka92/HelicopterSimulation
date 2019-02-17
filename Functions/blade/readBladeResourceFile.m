function [] = readBladeResourceFile()
%Read 'blade resource' file to configure helicopter blade parameters

% i.  Get HingeOffset[Non Dimensional by R]
HingeOffset = readHingeOffset();

% ii. Get Elements mid points [Non Dimensional by R]
elementMidPoints = readElementNumber(HingeOffset);

% iii.Get Element's chord length. [Non Dimensional by R]
elementChords = readChord(elementMidPoints);





end

