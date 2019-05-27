function [sectionLift,sectionDrag,sectionFlapMoment] = sectionForces(Utangential,Uperpendicular, AzimuthStation, RadialStation, CL, CD, AngleOfAttack, Density, Chord)
%SECTIONFORCES Output dimensional force and moment
UTotalSquared = Utangential^2 + Uperpendicular^2;
sectionLift = 0.0;
sectionDrag = 0.0;
sectionFlapMoment = 0.0;
sectionLiftRaw = 0.5 * Density * UTotalSquared * Chord * CL * AngleOfAttack;
sectionDragRaw = 0.5 * Density * UTotalSquared * Chord * CD * AngleOfAttack;
sectionFlapMoment = sectionLiftRaw
end

