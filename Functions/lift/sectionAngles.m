function [AngleOfAttack] = sectionAngles(Utangential,Uperpendicular,Theta)
%SECTIONANGLES Summary of this function goes here
%   Detailed explanation goes here
AngleOfAttack = 0.0;
AngleOfAttack = Theta - atan2(Uperpendicular,Utangential);
end

