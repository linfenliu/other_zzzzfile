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
currentprojection = orthographic(5.5654889103952,2.55890536760239,2.79634902321873);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red+opacity(0.9), -1.0, 1.5, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green+opacity(0.9), -1.0,1.5,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue+opacity(0.9), 0,1.5,Arrow3(DefaultHead3,15));


path sface = (-0.5,-0.5)--(0.5,-0.5)--(0.5,0.5)--(-0.5,0.5)--(-0.5,0.25)--(-0.25,0.25)--(-0.25,-0.25)--(-0.5,-0.25)--cycle;
path3 sface3D = path3(sface);

draw(surface(sface3D), lightred+opacity(0.9));
draw(shift(0,0,1)*surface(sface3D), lightblue+opacity(0.7));
draw(extrude(sface3D, shift(0,0,1)*sface3D), lightblue+opacity(0.7), meshpen = black+thick()+2);

dot(O, red + 5);
draw(shift(0,8)*Label("待拉伸表面", position = BeginPoint), (0,0.8,0)+O--(0,0.1,0)+O, EndArrow3(DefaultHead2, 10));


triple pd0 = (0,0,0);
triple pd1 = (0,-1.0,0) + pd0;
triple pu0 = (0,0,1)+pd0;
triple pu1 = (0,0,1)+pd1;
draw(pd0--pd1 ^^ pu0--pu1, dashed+black);
draw(Label("拉伸高度", align = W), pd1--pu1, black+1, Arrows3(DefaultHead2,10));

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