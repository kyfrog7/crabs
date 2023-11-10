function crabGraphics = drawCrab (xCrab,yCrab,thetaCrab,sizeCrab)
  
% This function draws the crab by rotating and shifting the crab
% as it appears in getCrab.m where it is at the origin with zero heading.

%get crab at the origin
crab = getCrab(sizeCrab);

%rotate crab
R = getRotation(thetaCrab);
crabRotated = R*crab;

%shift crab to new location
S = getTranslation(xCrab,yCrab);
crab = S*crabRotated;

%get crab points
pt1=crab(:,1);
pt2=crab(:,2);
pt3=crab(:,3);
pt4=crab(:,4);
pt5=crab(:,5);
pt6=crab(:,6);
pt7=crab(:,7);
pt8=crab(:,8);
pt9=crab(:,9);
pt10=crab(:,10);

%draw the crab body
crabGraphics(1) = drawLine(pt1,pt2,"m");
crabGraphics(2) = drawLine(pt2,pt3,"m");
crabGraphics(3) = drawLine(pt3,pt4,"m");
crabGraphics(4) = drawLine(pt4,pt1,"m");

%draw crab pinchers
crabGraphics(5) = drawLine(pt1,pt5,"m");
crabGraphics(6) = drawLine(pt4,pt6,"m");

% draw legs
crabGraphics(7) = drawLine(pt2,pt7,"m");
crabGraphics(8) = drawLine(pt7,pt8,"m");
crabGraphics(9) = drawLine(pt3,pt9,"m");
crabGraphics(10) = drawLine(pt9,pt10,"m");

  for i=1 : length(crabGraphics)
  set (crabGraphics(i), "color", [1 0 1]);
  endfor

endfunction

