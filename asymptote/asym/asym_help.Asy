
settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");	//使用xeCJK中文包
texpreamble("\setCJKmainfont{SimSun}");	//设置字体

size(500,IgnoreAspect);

path bording = (-30,-30)--(30,-30)--(30,30)--(-30,30)--cycle;
real marg = 1;
draw(bording, white);

pair init_position = (0,25);
pair shift_position = (0,-3);
object a = draw(Label("win10安装asymptote详细步骤", red), e = box, init_position, marg);
object b = draw("官网下载asymptote", e = roundbox, shift_position+init_position);
object c = draw("官网下载MikTex", roundbox, 2*shift_position+init_position);
object d = draw("官网下载Adobe arcobat(PDF浏览器)", roundbox, 3*shift_position+init_position);
object e = draw("官网下载PSView(EPS浏览器,32位软件)", roundbox, 4*shift_position+init_position);
object f = draw("环境变量PATH——Asymptote目录必须在MikTex前面(否则调用不了plain.asy)", roundbox, 5*shift_position+init_position);
object g = draw("目录C:/Users/<用户名>/.asy/config.asy下进行如下设置", roundbox, 6*shift_position+init_position);
object g_0 = draw("import settings;", roundbox, 7*shift_position+init_position);
object g_1 = draw("psviewer=psv.exe;", roundbox, 8*shift_position+init_position);
object g_2 = draw("pdfviewer=AcroRd32.exe;", roundbox, 9*shift_position+init_position);
object g_3 = draw("outformat = \"eps\";", roundbox, 10*shift_position+init_position);
object g_4 = draw("tex = \"xelatex\";", roundbox, 11*shift_position+init_position);

object h = draw("notepad++高亮语法", roundbox, 12*shift_position+init_position);
object h_0 = draw("语法规则放在我的文档", roundbox, 13*shift_position+init_position);
object h_1 = draw("函数自动补充放在np++根目录", roundbox, 14*shift_position+init_position);


add(new void(picture pic, transform t)
{
	draw(pic,point(b,S,t)--point(c,N,t),Arrow);
	draw(pic,point(c,S,t)--point(d,N,t),Arrow);
	draw(pic,point(d,S,t)--point(e,N,t),Arrow);
	draw(pic,point(e,S,t)--point(f,N,t),Arrow);
	draw(pic,point(f,S,t)--point(g,N,t),Arrow);
	draw(pic,point(g,S,t)--point(g_0,N,t),Arrow);
	draw(pic,point(g_4,S,t)--point(h,N,t),Arrow);
	
	draw(pic, point(g,SW,t){S}..{E}point(g_4,SW,t)--point(g_4,SE,t){E}..{N}point(g,SE,t));
	draw(pic, point(h,SW,t){S}..{E}point(h_1,SW,t)--point(h_1,SE,t){E}..{N}point(h,SE,t));
});