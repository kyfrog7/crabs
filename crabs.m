
 function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% Draw the game map and initialize map dimensions.
%initial command
cmd="null";

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;

%initialize crab location, heading and size
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 50;

%initialize graphics handles by drawing the captain
captGraphics = drawCapt (xCapt,yCapt,thetaCapt,sizeCapt);
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);



while (cmd != "Q")
 %read keyboard 
 cmd = kbhit ();
 
 if( cmd == "w" || cmd == "a" || cmd == "d")
 
 %erase old captain
 for i=1:length(captGraphics)
   set(captGraphics(i), 'Visible','off');
 endfor
 
 %move captain 
 [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);
 
 %draw new captain
 captGraphics = drawCapt (xCapt,yCapt,thetaCapt,sizeCapt);
 
  % respond crab moved
elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") 
 
  %erase old crab
  for i=1:length(crabGraphics)
    set(crabGraphics(i),'Visible','off');
  endfor
  
  %move crab
  [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight,mapWidth);

  %draw new captain and crab
  crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
  
endif


endwhile

close all
clear

endfunction