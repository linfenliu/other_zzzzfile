//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph3;
currentlight=(5,5,5);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red, 0, 1.5, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green, 0,1.5,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue, 0,1.5,Arrow3(DefaultHead3,15));



draw(unitcube, surfacepen = lightblue+opacity(0.7), meshpen=thick()+black+2);
dot((0.5,0.5,0.5), red+5);
draw(Label("中心", BeginPoint), (0.5,1.35,0.5)--(0.5,0.5,0.5), black+1,EndArrow3(DefaultHead2,10));

triple a1 = (1,1,0);
triple a2 = (0,1,0);
draw(a1--(0,0.1,0)+a1,black+1);  
draw(a2--(0,0.1,0)+a2,black+1); 
draw(rotate(30)*Label("宽度X"),interp(a1,a1+(0,0.1,0),0.5)--interp(a2,a2+(0,0.1,0),0.5),black+1, Arrows3(DefaultHead2,10)); 


triple a1 = (1,0,0);
triple a2 = (1,1,0);
draw(a1--(0.1,0,0)+a1,black+1);  
draw(a2--(0.1,0,0)+a2,black+1); 
draw(rotate(-15)*Label("宽度Y"),interp(a1,a1+(0.1,0,0),0.5)--interp(a2,a2+(0.1,0,0),0.5),black+1, Arrows3(DefaultHead2,10)); 


triple a1 = (1,0,0);
triple a2 = (1,0,1);
draw(a1--(0.1,0,0)+a1,black+1);  
draw(a2--(0.1,0,0)+a2,black+1); 
draw(rotate(90)*Label("宽度Z", align = W),interp(a1,a1+(0.1,0,0),0.5)--interp(a2,a2+(0.1,0,0),0.5),black+1, Arrows3(DefaultHead2,10)); 