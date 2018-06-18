settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体


import three;
import solids;
import graph3;
import graph;
size(500);

currentlight = (5,5,5);
currentprojection = orthographic(19.0209617746219,15.871183673268,20.5556620318027);

xaxis3(scale(1.3)*Label("$x$"), p=red+opacity(0.95), -10, 10, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green+opacity(0.95), -10,10,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue+opacity(0.95), -3,8,Arrow3(DefaultHead3,15));


surface ucube = unitcube;

int delta_phi = 30;
int radius = 5;

for(int i =0; i < 360/delta_phi-3; ++i)
{
	surface cubes_tmp = rotate(i*30,Z) * shift(5,0,0) * ucube;
	draw(cubes_tmp, surfacepen=lightblue+opacity(0.7), meshpen = black+thick()+2);
	if(i==0 || i==8)
	{
		triple p_tmp = cubes_tmp.s[0].P[0][0];
		triple q_tmp = p_tmp + 2*dir(p_tmp--O);
		string text;
		if(i == 0) text = "起始角";
		else text = "终止";
		draw(Label(text, position = EndPoint), p_tmp--q_tmp, cyan, EndArrow3(DefaultHead2, 10));
	}
}

triple a0 = (0,0,0);
triple b0 = (0,5,0);
triple a1 = (-0.5,0,0) + a0;

triple b1 = (-0.5,0,0) + b0;
path3 a = a0--a1;
path3 b = b0--b1;
draw(a ^^ b, cyan);
draw(Label("半径",align=N) ,relpoint(a,0.5)--relpoint(b,0.5), cyan, Arrows3(DefaultHead2, 10));

triple p = (-radius, 0, 0);
draw(p--p+0.5*dir(p--O), cyan);
triple q = rotate(30,Z)*p;
draw(q--q+0.5*dir(q--O), cyan);
draw(Label("步长", align = S),path3(arc((0,0), radius-0.25, 180, 210)), cyan, Arrows3(DefaultHead2, 10));



