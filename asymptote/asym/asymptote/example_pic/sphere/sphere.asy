//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph3;
import solids;
currentlight=nolight;
currentprojection = orthographic(3.05323061604997,4.20244138045673,4.28950250027077);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red+opacity(0.95), -1.5, 1.9, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green+opacity(0.95), -1.5,1.9,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue+opacity(0.95), -1.5,1.9,Arrow3(DefaultHead3,15));

draw(unitsphere, surfacepen = lightblue+opacity(0.7), meshpen = thick()+black+2);
draw(scale(0.6,0.6,0.6)*unitsphere, surfacepen = lightblue+opacity(0.5),meshpen = black+opacity(0.1));

dot((0.0,0.0,0.0), red+5);
draw(Label("体中心", BeginPoint), (-1.5,0.0001,0)--(0,0,0), black+1,EndArrow3(DefaultHead2,10));


triple a1 = (0,0,0);
triple a2 = (-1,0,0);
dot((1,0,0), red+4);
draw(a1--(0,1.5,0)+a1,black+dashed);  
draw(a2--(0,1.5,0)+a2,black+dashed); 
draw(shift(0.3,0)*Label("半径X"),(a1+(0,1.5,0))--(a2+(0,1.5,0)), black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (0,0,0);
triple a2 = (0,1,0);
dot((0,1,0), red+4);
draw(a1--(1.5,0,0)+a1,black+dashed);  
draw(a2--(1.5,0,0)+a2,black+dashed); 
draw(shift(-1,0)*Label("半径Y", align = S),(a1+(1.5,0,0))--(a2+(1.5,0,0)),black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (0,0,0);
triple a2 = (0,0,1);
dot((0,0,1), red+4);
draw(a1--(0,-0.8,0)+a1,black+dashed);  
draw(a2--(0,-0.8,0)+a2,black+dashed); 
draw(shift(0,5)*Label("半径Z", position = EndPoint),(a1+(0,-0.8,0))--(a2+(0,-0.8,0)),black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (-0.6,0,0);
triple a2 = (-1.0,0,0);
draw(a1--(0,0,1.2)+a1,black+dashed);  
draw(a2--(0,0,1.2)+a2,black+dashed); 
draw(Label("厚度"),(a1+(0,0,1.2))--(a2+(0,0,1.2)),black+1, Arrows3(DefaultHead2,10)); 

/*
path3 out_cir = (0,0.5,0)..(-0.5,0,0)..(0,-0.5,0)..(0.5,0,0)..cycle;
path3 in_cir = reverse(scale(0.5,0.5,0.5) * out_cir);
draw(out_cir ^^ in_cir, thick()+black+2);
draw(shift(Z)*out_cir ^^ shift(Z)*in_cir, thick()+black+2);

draw(surface(out_cir^^in_cir,planar=true),lightblue+opacity(0.7));
draw(surface(shift(Z)*out_cir^^in_cir,planar=true),lightblue+opacity(0.7));
draw(extrude(out_cir,Z),lightblue+opacity(0.7));
draw(extrude(in_cir,Z),lightblue+opacity(0.8));

dot((0.0,0.0,0.0), red+5);
draw(Label("底面中心", BeginPoint), (-1.0,0.0001,0)--(0,0,0), black+1,EndArrow3(DefaultHead2,10));

triple a1 = (0,0,0);
triple a2 = (-0.5,0,0);
draw(a1--(0,0.6,0)+a1,black+dashed);  
draw(a2--(0,0.6,0)+a2,black+dashed); 
draw(shift(0.3,0)*Label("底面半径X"),(a1+(0,0.6,0))--(a2+(0,0.6,0)), black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (0,0,0);
triple a2 = (0,-0.5,0);
draw(a1--(0.6,0,0)+a1,black+dashed);  
draw(a2--(0.6,0,0)+a2,black+dashed); 
draw(shift(-1,0)*Label("底面半径Y", align = S),(a1+(0.6,0.0001,0.0001))--(a2+(0.6,0,0)),black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (0,0,1.0);
triple a2 = (0,0,0);
draw(a1--(0,-0.8,0)+a1,black+dashed);  
draw(a2--(0,-0.8,0)+a2,black+dashed); 
draw(Label("高度"),(a1+(0,-0.8,0))--(a2+(0,-0.8,0)),black+1, Arrows3(DefaultHead2,10)); 

triple a1 = (0,0,1);
triple a2 = (0,0.25,1);
draw(a1--(-0.8,0,0)+a1,black+dashed);  
draw(a2--(-0.8,0,0)+a2,black+dashed); 
draw(Label("空心率"),(a1+(-0.8,0,0))--(a2+(-0.8,0,0)),black+1, Arrows3(DefaultHead2,10)); 
*/