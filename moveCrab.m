function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,size,height,width)

%this function walks the crab sideways, swims the crab backwards and rotates it using the resolutions 
%this crab can swim backwards 
%"j" = move left, "l" =move right, "k"= swim back, "i"=rotate clockwise, "," =rotate counter clockwise 

%it returns the new position of the crab if it is in bounds, otherwise it returns the old position

step = 10;
dTheta = pi/6;

% r * (sin/cos (theta)) = new spot

  if(cmd == "j")

  xTemp = x + step * sin(theta);
  yTemp = y - step * cos(theta);

  if( isOnMap(xTemp,yTemp,width,height,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
    xCrab=x;
    yCrab=y;
  endif
  

  thetaCrab = theta;


  elseif (cmd == "l")

  xTemp = x - step * sin(theta);
  yTemp = y + step * cos(theta);

  if(isOnMap(xTemp,yTemp,width,height,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
   xCrab=x;
   yCrab=y;
  endif

  thetaCrab = theta;

  elseif (cmd == "k")

  xTemp = x - step * cos(theta);
  yTemp = y - step * sin(theta);

  if(isOnMap(xTemp,yTemp,width,height,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
   xCrab=x;
   yCrab=y;
  endif

  thetaCrab = theta;

  elseif (cmd == "i")

  xCrab = x;
  yCrab = y;

  thetaCrab = theta + dTheta;

  elseif (cmd == ",")

  xCrab = x;
  yCrab = y;

  thetaCrab = theta - dTheta;


  else

  xCrab = x;
  yCrab = y;
  newTheta = theta;

endif 

endfunction
