
 function crabs (level)
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

  numCrabs = level;
  numJelly = level + 2;
  
% Draw the game map and initialize map dimensions.
%initial command
cmd="null";
[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt=100;
crabsCaught=0;


%initialize crab location, heading and size
xCrab = rand(1,numCrabs)*mapWidth;
yCrab = 3*mapHeight/4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
sizeCrab = 50;
isCrabCaught = zeros(1,numCrabs);


%initialize jelly 
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numJelly)*mapHeight;
thetaJelly = ones(1,numJelly)*(-pi/2);
sizeJelly = 25;
jellySting=2;
jellyCaught = 0;
isJellyCaught = zeros(1,numJelly);


%draw initial captain/crab/jellyfish
[captGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

for k=1:numCrabs
crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
endfor

for k=1:numJelly
jellyGraphics(:,k) = drawJelly (xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
endfor

%print health status 
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
jellyCaughtLoc = [100,250];


healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'white');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 12, 'Color', 'white');
jellyCaughtStatus = text(jellyCaughtLoc(1), jellyCaughtLoc(2), strcat('Jellies Caught = ', num2str(jellyCaught)), 'FontSize', 12, 'Color', 'white');

%initial command
while (1) % Continusally go

    if ( getDist(xJelly,yJelly,xCapt,yCapt) < 3*sizeCapt )
      healthCapt = healthCapt - jellySting;
     endif
     
     %remove old and plot new health and points status to screen
    delete(healthStatus);
    delete(crabsCaughtStatus);
    delete(jellyCaughtStatus);


    healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'white');

    crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 12, 'Color', 'white');
    
    jellyCaughtStatus = text(jellyCaughtLoc(1), jellyCaughtLoc(2), strcat('Jellies Caught = ', num2str(jellyCaught)), 'FontSize', 12, 'Color', 'white');


%#####################################

  for k=1:numJelly

     if( !isJellyCaught(k) && getDist(xNet,yNet,xJelly(k),yJelly(k)) < 2*sizeCapt ) %jelly is caught

        jellyCaught = jellyCaught + 1;
        isJellyCaught(k) = 1;

        %erase old crab
          for i=1:length(jellyGraphics(:,k))
              delete(jellyGraphics(i,k));
           endfor

     endif
  endfor
    %move jelly
%    [xJelly,yJelly,thetaJelly] = moveJelly (level, xJelly, yJelly, thetaJelly, sizeJelly, mapHeight, mapWidth);

    %draw jelly (again!)
%    jellyGraphics = drawJelly(xJelly,yJelly, thetaJelly,sizeJelly);
  
  
  %#####################################
  
cmd = kbhit(1); % read the keyboard.

    if (cmd == 'Q')
      break
    endif


    if( cmd == "W" || cmd == "w" || cmd == "A" || cmd == "a" || cmd == "D" || cmd == "d") %Captain has moved. Respond.

     % erase old captain
    for i=1:length(captGraphics)
      delete(captGraphics(i));
     endfor

   % move captain
  [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);

   % draw new captain
  [captGraphics, xNet, yNet] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

  endif
 %*******************************************************

  for k=1:numCrabs

     if( !isCrabCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught

        crabsCaught = crabsCaught + 1;
        isCrabCaught(k) = 1;

        %erase old crab
          for i=1:length(crabGraphics(:,k))
              delete(crabGraphics(i,k));
           endfor

     endif
  endfor

  %*******************************************************

 fflush(stdout);
 pause(.01);

endwhile

close all
clear

endfunction
