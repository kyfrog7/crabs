function handle = drawLine (p, q, color)
  
  % This function draws a line between two 2D points p and q in homogeneous coordinates.

  % extract x coordinates from points
  x = [p(1) ; q(1)];

  % extract y coordinate from points
  y = [p(2) ; q(2)];

  % use Octaves built in plot function to graph the line
  handle = plot(x, y, color);

  %set the line width in the current graph
  set(handle, "LineWidth", 3);

endfunction
