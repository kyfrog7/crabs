function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta,width,height,size)

xCapt=x;
yCapt=y;
thetaCapt=theta;

dTheta = pi/6;
dStep = 50;

if (cmd == "W" || cmd == "w")

%move forward

xTemp = x + dStep*cos(theta);
yTemp = y + dStep*sin(theta);

  if(isOnMap(xTemp,yTemp,width,height,size))
    xCapt=xTemp;
    yCapt=yTemp;
  else 
    xCapt=x;
    yCapt=y;
    endif

thetaCapt = theta;

elseif (cmd == "A" || cmd == "a")
%rotate left 
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

elseif (cmd == "D" || cmd == "d")
%turn right 
xCapt = x;
yCapt = y;
thetaCapt = theta + dTheta;

else
%default
xCapt=x;
yCapt=y;
thetaCapt=theta;

endif

endfunction

