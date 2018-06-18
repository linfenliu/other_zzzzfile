//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph3;
currentprojection=orthographic(2.81011985889294,-4.59171110923135,4.58469689296004);
currentlight=(5,-5,5);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red, 0, 1.5, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green, 0,1.5,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue, 0,1.5,Arrow3(DefaultHead3,15));

path3 down = rotate(10,Z)*path3(slant(0.5)*unitsquare);
path3 up = shift(0.4,0.4,1)*rotate(10,Z)*path3(slant(0.5)*unitsquare);
draw(surface(down),surfacepen = lightblue+opacity(0.7), meshpen=thick()+black+2);
draw(surface(up),surfacepen = lightblue+opacity(0.7), meshpen=thick()+black+2);
draw(extrude(down,up), surfacepen = lightblue+opacity(0.7), meshpen=thick()+black+2);

draw(scale(0.5)*Label("方向向量X", position = MidPoint, align = (0,-5,0)),scale(0.5,0.5,0.5)* reverse(subpath(down,0,1)),red+5, BeginArrow3(DefaultHead3,15));
draw(scale(0.5)*Label("方向向量Y", position = BeginPoint, align = (3,0,0)),scale(0.5,0.5,0.5)*subpath(down,3,4),green+5, BeginArrow3(DefaultHead3,15));
draw(scale(0.5)*Label("方向向量Z", position = MidPoint, align = (0,0,15)),scale(0.5,0.5,0.5)*reverse((relpoint(down,0)--relpoint(up,0))),blue+5,BeginArrow3(DefaultHead3,15));

draw(scale(0.5)*Label("左下前点", align=N, position = BeginPoint), (-0.5,0,0)--O , EndArrow3(DefaultHead3, 10));
