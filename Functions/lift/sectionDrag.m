function [dDrag] = sectionDrag(DensityKgm3, VelocityMs, SurfaceAeraM3,DragCoefficient)
dDrag = 0.5 * DensityKgm3 * VelocityMs * VelocityMs * SurfaceAeraM3 * DragCoefficient;
end

