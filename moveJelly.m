
function [xJelly,yJelly,thetaJelly] = moveJelly (level,xJelly,yJelly,thetaJelly,sizeJelly,mapHeight,mapWidth)

jellyMove=50;
step=jellyMove + level;


xJelly = xJelly;
yJelly = yJelly + step;
thetaJelly = thetaJelly;

if(yJelly > mapHeight-10*sizeJelly)
yJelly = sizeJelly;
xJelly = mapWidth*rand;
endif 


endfunction