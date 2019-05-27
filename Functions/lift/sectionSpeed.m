function [Utangential,Uperpendicular] = sectionSpeed(rBar,u,v,w,p,q,r,Azimuth,inflow,Beta,BetaD,RotorSpeed,Radius)
%[m][3 x m/s][3 x rad/s][rad][m/s][rad][rad/s][rad/s][m]
Utangential = 0.0;
Uperpendicular = 0.0;
Utangential     = RotorSpeed * rBar * Radius + u * sin(Azimuth) + v * cos(Azimuth);
Uperpendicular  = -w + inflow + rBar * Radius * BetaD + u * Beta * cos(Azimuth);
end

