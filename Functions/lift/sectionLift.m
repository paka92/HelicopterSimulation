function [dLift] = sectionLift(DensityKgm3, VelocityMs, SurfaceAeraM3,LiftCoefficient)
dLift = 0.5 * DensityKgm3 * VelocityMs * VelocityMs * SurfaceAeraM3 * LiftCoefficient;
end

