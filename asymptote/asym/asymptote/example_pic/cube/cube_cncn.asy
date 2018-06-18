//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph3;
currentprojection=orthographic(4.61392438523043,-5.85294133295586,2.28796974775874);
currentlight=(5,-5,5);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red, 0, 1.5, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green, 0,1.5,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue, 0,1.5,Arrow3(DefaultHead3,15));


draw(unitcube, surfacepen = lightblue+opacity(0.7), meshpen=thick()+black+2);


dot((1,1,1), red+5);
dot((0,0,0), red+5);
draw(Label("右上后点", BeginPoint), (1,1.5,1)--(1,1,1), black+1,EndArrow3(10));
draw(Label("左下前点", BeginPoint), (0,-0.5,0)--(0,0,0), black+1,EndArrow3(10));
//右上后角点
//左下前角点
