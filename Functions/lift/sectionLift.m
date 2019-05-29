function [dLift] = sectionLift(DensityKgm3, TangentVelocityMs, SurfaceAeraM3,LiftCoefficient)
dLift = 0.5 * DensityKgm3 * TangentVelocityMs * TangentVelocityMs * SurfaceAeraM3 * LiftCoefficient;
end

