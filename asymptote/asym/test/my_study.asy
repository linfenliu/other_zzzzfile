import plain;
import math;

/*settings.tex="xelatex";
settings.prc=false;
texpreamble("\usepackage{fontspec}");
texpreamble("\setmainfont{SimSun}");*/

texpreamble("\usepackage{CJK}");
texpreamble("\AtBeginDocument{\begin{CJK}{UTF8}{song}}");
texpreamble("\AtEndDocument{\clearpage\end{CJK}}");


add( scale(1cm) * grid(7,7,gray));
add( shift(4cm,0) * rotate(aTan(4/3)) * scale(1cm) * grid(5,5,gray));
filldraw( (4cm,0) -- (4cm,3cm) -- (0cm,3cm) -- cycle
		^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0cm) -- cycle
		^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
		^^ (0cm,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
		opacity(0.5)+red, red+0.5mm);
label("中文", (1cm,0cm));
		
//仿射变换 shift scale xscale yscale rotate slant reflect

/*fill( box((3cm,3cm),(4cm,4cm)), opacity(0.5)+yellow); 
filldraw( (4cm,0) -- (4cm,3cm) -- (0cm,3cm) -- cycle
		^^ (7cm,4cm) -- (4cm,4cm) -- (4cm,0cm) -- cycle
		^^ (3cm,7cm) -- (3cm,4cm) -- (7cm,4cm) -- cycle
		^^ (0cm,3cm) -- (3cm,3cm) -- (3cm,7cm) -- cycle,
		opacity(0.1)+red, red+0.5mm);
*/

/*filldraw( (4cm,0) -- (4cm,3cm) -- (0,3cm) -- cycle, palered, red+0.5mm );
filldraw( (3cm,3cm) -- (3cm,7cm) -- (0,3cm) -- cycle, palered, red+0.5mm );
filldraw( (4cm,0) -- (4cm,4cm) -- (7cm,4cm) -- cycle, palered, red+0.5mm );
filldraw( (3cm,4cm) -- (3cm,7cm) -- (7cm,4cm) -- cycle, palered, red+0.5mm );
filldraw( box((3cm,3cm),(4cm,4cm)), paleyellow, red+0.5mm); 
*/

//filldraw( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, palered, red+0.5mm);

//filldraw( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, fillpen=palered, drawpen=red+0.5mm);

//fill( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, red+0.5mm);

//draw( (0,0) -- (4cm,0) -- (0,3cm) -- cycle, red+0.5mm);

//draw((0, 0) -- (1cm, 0) -- (2cm,0.5cm) -- (1cm, 1cm) -- (0, 1cm) -- cycle, darkblue+1mm);

//draw((0,0) -- (3cm,4cm));