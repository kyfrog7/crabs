%This function checks if a point is within the map boundary
%It returns a 1 if it is and 0 if it is not.

function inBounds = isOnMap (x,y,width,height,boarder)
  
  if (x > boarder && x < width-boarder && y > boarder && y < height-boarder)
    inBounds=1;
   else
    inBounds=0;
  endif

endfunction
