function [] = ...
    LiftTheory(PeheR,PeheJ,rHat,BladeCount,ElementCount,DensityKgm3, TangentVelocityMs, SurfaceAeraM3,LiftCoefficient)
%Lift Theory with inflow Summary of this function goes here

% initialize inflow states
persistent inflowCosineStates;
if isempty(inflowCosineStates)
    inflowCosineStates = zeros(60,2);
end

persistent inflowSineStates;
if isempty(inflowSineStates)
    inflowSineStates = zeros(60,2);
end
%
    

for ii=1:1:BladeCount

    for jj=1:1:ElementCount
        %TODO sectionInflowSummationUsingcosine and sine states
       dRadialShapeFunc = RadialShapeFunc(PeheR,PeheJ,rHat);
       dLift = sectionLift(DensityKgm3, TangentVelocityMs, SurfaceAeraM3,LiftCoefficient);
       
       
    end


end

