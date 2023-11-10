function [captGraphics,xNet,yNet] = drawCapt(xCapt,yCapt,thetaCapt,sizeCapt)

% In the future, this function will draw the captain at the given
% position (xCapt , yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith vector entry contains the graphics handle of ith line of the captain.

% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizeCapt is a parameter passed into drawCapt.

capt = getCapt(sizeCapt);

% TODO : Rotate captain from zero heading to heading thetaCapt
% rotate captain
R = getRotation(thetaCapt);
captRotated = R*capt;

% shift Captain to new location
T = getTranslation(xCapt,yCapt);
% this gets the translation and applies it to xCapt and yCapt
capt = T*captRotated;


% Extract the captain points from the captain matrix capt.
pt1=capt( : , 1);
pt2=capt( : , 2);
pt3=capt( : , 3);
pt4=capt( : , 4);
pt5=capt( : , 5);
pt6=capt( : , 6);
pt7=capt( : , 7);
pt8=capt( : , 8);
pt9=capt( : , 9);
pt10=capt( : , 10);
pt11=capt( : , 11);
pt12=capt( : , 12);
pt13=capt( : , 13);
pt14=capt( : , 14);
pt15=capt( : , 15);
pt16=capt( : , 16);
pt17=capt( : , 17);
pt18=capt( : , 18);
pt19=capt( : , 19);
pt20=capt( : , 20);
%Set the net center
xNet = pt20(1);
yNet = pt20(2);

pt21=capt( : , 21);
pt22=capt( : , 22);

% Draw the captain and set the return vector of graphics handles.
captGraphics(1) = drawLine(pt1 , pt2);
captGraphics(2) = drawLine(pt2 , pt3);
captGraphics(3) = drawLine(pt2 , pt5);
captGraphics(4) = drawLine(pt4 , pt5);
captGraphics(5) = drawLine(pt5 , pt6);
captGraphics(6) = drawLine(pt6 , pt1);
captGraphics(7) = drawLine(pt7 , pt8);
captGraphics(8) = drawLine(pt8 , pt9);
captGraphics(9) = drawLine(pt9 , pt10);
captGraphics(10) = drawLine(pt1 , pt11);
captGraphics(11) = drawLine(pt6 , pt12);
captGraphics(12) = drawLine(pt13 , pt14);
captGraphics(13) = drawLine(pt13 , pt14);
captGraphics(14) = drawLine(pt13 , pt15);
captGraphics(15) = drawLine(pt15 , pt16);
captGraphics(16) = drawLine(pt16 , pt17);
captGraphics(17) = drawLine(pt17 , pt18);
captGraphics(18) = drawLine(pt18 , pt19);
captGraphics(19) = drawLine(pt19 , pt13);
captGraphics(20) = drawLine(pt21 , pt22);

for i=1 : length(captGraphics)
  set (captGraphics(i), "color", [0 0 0]);
  endfor

endfunction
