function jellyGraphics = drawJelly (xJelly,yJelly,thetaJelly,sizeJelly)

jelly=getJelly(sizeJelly);

R=getRotation(thetaJelly);
jellyRotated=R*jelly;

T=getTranslation (xJelly,yJelly);
jelly= T*jellyRotated;

%get jelly points
pt1=jelly(:,1);
pt2=jelly(:,2);
pt3=jelly(:,3);
pt4=jelly(:,4);
pt5=jelly(:,5);
pt6=jelly(:,6);
pt7=jelly(:,7);
pt8=jelly(:,8);
pt9=jelly(:,9);
pt10=jelly(:,10);
pt11=jelly(:,11);
pt12=jelly(:,12);
pt13=jelly(:,13);

jellyGraphics(1)=drawLine(pt1,pt2,'m');
jellyGraphics(2)=drawLine(pt2,pt3,'m');
jellyGraphics(3)=drawLine(pt3,pt4,'m');
jellyGraphics(4)=drawLine(pt4,pt5,'m');
jellyGraphics(5)=drawLine(pt6,pt7,'m');
jellyGraphics(6)=drawLine(pt7,pt8,'m');
jellyGraphics(7)=drawLine(pt8,pt9,'m');
jellyGraphics(8)=drawLine(pt10,pt11,'m');
jellyGraphics(9)=drawLine(pt11,pt12,'m');
jellyGraphics(10)=drawLine(pt12,pt13,'m');
jellyGraphics(11)=drawLine(pt13,pt5,'m');
jellyGraphics(12)=drawLine(pt12,pt4,'m');


  for i=1 : length(jellyGraphics)
    set (jellyGraphics(i), "color", [0 0 1]);
  endfor
  
endfunction
