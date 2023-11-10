
function capt = getCapt (captSize)
% The function getCapt computes and returns the captain centered at the origin. The head of the
%captain is on the positive x-axis indication a heading angle of zero. The captain is returned in the form of
%a matrix where each column represents one point on the captain. The parameter captSize sets the size
%of the captain.
% In the sketch below, the captain is drawn facing you with his right hand holding the spear.
% The sketch shows him with his points numbered.
%{

                                Right Hand        Spear Tip
                           14 ______12____________13
                                      \
                                        \
                                          \
                      4_______5______________6
                              |     |        |
                              |     |        7------8
                              |  (0,0 )      |      | __________________\ positive x-axis
                              |     |        10-----9                   /
                              |     |        |
                      3_______2______________1
                                    |      /
                                    |    /
                                    |  /
                                    11
                                 Left Hand
                                    |
                                    |
                                   \|/
                             positive y-axis
%}

%capt left side
captPt1 = [ captSize; captSize;1]; %left shoulder
captPt2 = [ -captSize; captSize;1]; %left waist
captPt3 = [-3*captSize;captSize;1]; %left foot

%capt right side
captPt4 = [-3*captSize;-captSize;1]; % right foot
captPt5 = [ -captSize;-captSize;1]; % right waist
captPt6 = [ captSize;-captSize;1]; %right shoulder

%head
captPt7 = [ captSize; -captSize/2;1]; %right neck
captPt8 = [2*captSize; -captSize/2;1]; %right top of head
captPt9 = [2*captSize; captSize/2;1]; %left top of head
captPt10 = [ captSize; captSize/2;1]; %left neck

%hands
captPt11 = [ 0; 2*captSize;1]; %left
captPt12 = [ 0; -2*captSize;1]; %right

%right net
captPt13 = [3*captSize;-2*captSize;1]; %bottom of net stick
captPt14 = [ -captSize;-2*captSize;1]; %top of net
captPt15=[ 3*captSize; -4*captSize; 1];
captPt16=[ 5*captSize; -4*captSize; 1];
captPt17=[ 5*captSize; -2*captSize; 1];
captPt18=[ 5*captSize; 0; 1];
captPt19=[ 3*captSize; 0; 1];
captPt20=[ 4*captSize; -2*captSize; 1]; %center of net


%left spear
captPt21 = [3*captSize;2*captSize;1]; %spear point
captPt22 = [ -captSize;2*captSize;1]; %spear end

%captain matrix
capt = [captPt1,captPt2,captPt3,captPt4,captPt5,captPt6,captPt7,captPt8...
        captPt9,captPt10,captPt11,captPt12,captPt13,captPt14,captPt15...
        captPt16,captPt17,captPt18,captPt19,captPt20,captPt21,captPt22];

endfunction
%capt=getCapt(50)
%x=capt(1,:);
%y=capt(2,:);
%z=capt(3,:);
%plot3(x,y,z,'o');





