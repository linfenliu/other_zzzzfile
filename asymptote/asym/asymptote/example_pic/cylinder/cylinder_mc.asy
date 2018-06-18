//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph3;
import solids;
currentlight=(5,5,5);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red, -1.0, 1.5, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green, -1.0,1.5,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue, 0,1.5,Arrow3(DefaultHead3,15));

path3 cir = (0,0.5,0)..(-0.5,0,0)..(0,-0.5,0)..(0.5,0,0)..cycle;

path3 pa = (0,0,1)--(0,0.5,1)--(0,0.5,0)--(0,0,0)--cycle;
revolution rv = revolution(pa);
draw(surface(rv), surfacepen = lightblue+opacity(0.7));
draw(cir, thick()+black+2);
draw(shift(0.0,0.0,1.0)*cir, thick()+black+2);

dot((0.0,0.0,0.5), red+5);
draw(Label("体中心", BeginPoint), (-1.0,0.0001,0.5)--(0,0,0.5), black+1,EndArrow3(DefaultHead2,10));


/*
dot((0.5,0.5,0.5), red+5);
draw(Label("中心", BeginPoint), (0.5,1.35,0.5)--(0.5,0.5,0.5), black+1,EndArrow3(DefaultHead2,10));
*/


triple a1 = (0.5,0,0);
triple a2 = (-0.5,0,0);
draw(a1--(0,0.6,0)+a1,black+dashed);  
draw(a2--(0,0.6,0)+a2,black+dashed); 
draw(Label("宽度X"),(a1+(0,0.6,0))--(a2+(0,0.6,0)), black+1, Arrows3(DefaultHead2,10)); 




triple a1 = (0,0.5,0);
triple a2 = (0,-0.5,0);
draw(a1--(0.6,0,0)+a1,black+dashed);  
draw(a2--(0.6,0,0)+a2,black+dashed); 
draw(Label("宽度Y", align=S),(a1+(0.6,0.0001,0.0001))--(a2+(0.6,0,0)),black+1, Arrows3(DefaultHead2,10)); 



triple a1 = (0,0,1.0);
triple a2 = (0,0,0);
draw(a1--(0,-0.8,0)+a1,black+dashed);  
draw(a2--(0,-0.8,0)+a2,black+dashed); 
draw(rotate(90)*Label("宽度Z", align = W),(a1+(0,-0.8,0))--(a2+(0,-0.8,0)),black+1, Arrows3(DefaultHead2,10)); 