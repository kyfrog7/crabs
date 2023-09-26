Crabs is a kids computer game where a fisherman called Captain fights a powerful Crab 

Function: crabs.m
Inputs Points, an Image and a String -> Outputs a Image 
Purpose of crabs: To run the background image of the game
Purpose of inputs: to create an image height, image width, call the image,
the coordinates of captain, initializes captain and graphic handles for drawcapt
Purpose of output: To draw and run the background of the game 
Example call to function:
>> crabs
   
Function: drawCapt.m
Inputs points, matrices, and vectors -> Outputs a Captain 
Purpose of drawCapt: to draw the captain at the given position
Purpose of Inputs: extracts the captain points from the matrix, draws the captain
and return vector of graphics handles
Purpose of Output: to draw the Captains body from the given points at sets in at the 
right location
Example call to function: 
>> drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)

Function: drawLine.m 
Inputs points -> Outputs drawn lines for the Captain
Purpose of drawLine: To draw Captain out with lines instead of dots
Purpose of Inputs: draws lines, extracts x and y coordinates from points, graphs
the lines, and sets the lines within the graph
Purpose of Output: To have a visable drawn captain at the set coordinates 
Example call to function:
>>  drawLine (p, q, color)

Function: drawMap.m 
Inputs image, and string -> Outputs the drawn map
Purpose of drawMap: draws the background map for the game using the image inserted 
Purpose of Inputs: defines the map dimensions of the game, establishes coordinate system,
and displays a title on the figure 
Purpose of Output: to run the map for the game by running the inserted image 
Example call to function: 
>> [height,width] = drawMap(imageName)

Function: getCapt.m 
Inputs image, matrices, and points -> Outputs the Captain centered at the origin
Purpose of getCapt: stations the drawn Captain on the orgin coordinates
Purpose of Inputs: draws the coordinates of the Captains body on the matrix
Purpose of Output: positions Captain on the correct origin coordinates
Example call to function:
>> capt = getCapt (captSize)

Function: getTranslation.m 
Inputs matrices, and vector -> Outputs the movement of Captain
Purpose of getTranslation: to move Captain from one set of coordinates on the
matrix and translates him to another set of coordinates 
Purpose of Inputs: a vector that establish Captain across the map
Purpose of Output: to shift Captain to a new location
Example call to function:
>> T = getTranslation (dx,dy)


