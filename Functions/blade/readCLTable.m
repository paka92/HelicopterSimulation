function [alphaCL, machCL, tableCL] = readCLTable()
%READCLTABLE Summary of this function goes here
%   Detailed explanation goes here
curveFile =fopen('..\..\Resource\Blade\Aerodynamic\LiftCurve.txt','r');
readText = textscan(curveFile,'%f',-1,'CommentStyle','#');
fclose(curveFile);
AllData = readText{1}; % Cast from cell to vector.
readRow = 1; % initialized
% Read Mach Breakpoint number
MachBreakpointNumber = AllData(readRow);
MachBreakpoints = zeros(1,MachBreakpointNumber);

for ii = 1:1:MachBreakpointNumber
    readRow = readRow + 1;
    MachBreakpoints(1,ii) = AllData(readRow);
end

% To advance read row
readRow = readRow + 1;

% Read Alpha Breakpoint Number
alphaBreakpointNumber = AllData(readRow);
alphaBreakpoints = zeros(alphaBreakpointNumber,1);

for tt = 1:1:alphaBreakpointNumber
    readRow = readRow + 1;
    alphaBreakpoints(tt,1) = AllData(readRow);
end

% Read all table data
CLTable = zeros(alphaBreakpointNumber,MachBreakpointNumber);
% Iterate over whole table
for jj = 1:1:MachBreakpointNumber
    for kk = 1:1:alphaBreakpointNumber
        readRow = readRow + 1;
        CLTable(kk,jj) = AllData(readRow);
    end
end

% Check if all table is read.
if(length(AllData) ~= readRow)
    disp('CL data not read correctly. Please Check CL resource file.');
    error();
end

% Assign outputs
alphaCL = alphaBreakpoints;
 machCL = MachBreakpoints;
tableCL = CLTable;
end



