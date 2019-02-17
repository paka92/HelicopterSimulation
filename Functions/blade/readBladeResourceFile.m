function [] = readBladeResourceFile()
%Read 'blade resource' file to configure helicopter blade parameters
tic;
% i.  Get HingeOffset[Non Dimensional by R]
HingeOffset = readHingeOffset();

% ii. Get Elements mid points [Non Dimensional by R]
elementsMidPoint = readElementNumber(HingeOffset);

% iii.a.Get Element's chord length. [Non Dimensional by R]
elementsChord = readChord(elementsMidPoint);

% iii.b.Get Element's twist from root [radians] 
elementsTwist = readTwist(elementsMidPoint);
toc;
end

