//meshpen=thick()+black+2
//centercolor = black+1,EndArrow3(20);
//surfacepen = lightblue+opacity(0.8)

settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

import three;
import graph;
import graph3;
import solids;
currentlight=(5,5,5);
currentprojection = orthographic(139.589711005459,139.074698966277,110.996721418244);
size(450);
xaxis3(scale(1.3)*Label("$x$"), p=red+opacity(0.95), -70, 70, Arrow3(DefaultHead3,15));
yaxis3(scale(1.3)*Label("$y$"), p=green+opacity(0.95), -70,70,Arrow3(DefaultHead3,15));
zaxis3(scale(1.3)*Label("$z$"), p=blue+opacity(0.95), -10,110,Arrow3(DefaultHead3,15));



real f(real x) {return -2x+50;}
guide ps = graph(f, 0, 25, 20);

pair[][] gs =
{	{}, 
	{},
	{},
	{}
}
;

for(int j = 0; j < 4; ++j)
{
	for(int i = 0; i < length(ps); ++i)
	{
		pair p_tmp = point(ps, i);
		if(i == 0)	//顶点特殊处理
		{
			gs[j][i] = p_tmp + (0,1)*5*(j+1);
		}
		else
		{
			gs[j][i] = p_tmp + dir((2,1)) * 5*(j+1);
		}
	}
}


path3[] ps3s= {path3(ps), path3(graph(gs[0])), path3(graph(gs[1])), path3(graph(gs[2])) ,path3(graph(gs[3]))};

for(int i = 0; i < ps3s.length; ++i)
{
	draw(surface(revolution(YZ*ps3s[i])), surfacepen = lightblue+opacity(0.7));
}


