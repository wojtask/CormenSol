verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

beginfig(1);
	scale := .5cm;
	hshift := 7.8scale;
	color gray; gray := .8white;
	path p[];
	
	for i:=0 upto 11:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for i:=0 upto 11:
		numeric shift;
		if i<=6 : shift := -hshift else: shift := hshift fi;
		for j:=0 upto 11:
			if j<i :
				fill p[j] shifted (shift, -3*(i mod 7)*scale) withcolor gray;
			fi;
			draw p[j] shifted (shift, -3*(i mod 7)*scale);
		endfor;
		label("13", center p0 + (shift, -3*(i mod 7)*scale));
		label("19", center p1 + (shift, -3*(i mod 7)*scale));
		label("9", center p2 + (shift, -3*(i mod 7)*scale));
		label("5", center p3 + (shift, -3*(i mod 7)*scale));
		label("12", center p4 + (shift, -3*(i mod 7)*scale));
		label("8", center p5 + (shift, -3*(i mod 7)*scale));
		label("7", center p6 + (shift, -3*(i mod 7)*scale));
		label("4", center p7 + (shift, -3*(i mod 7)*scale));
		label("11", center p8 + (shift, -3*(i mod 7)*scale));
		label("2", center p9 + (shift, -3*(i mod 7)*scale));
		label("6", center p10 + (shift, -3*(i mod 7)*scale));
		label("21", center p11 + (shift, -3*(i mod 7)*scale));
		if i<>11:
			label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (shift, -3*(i mod 7)*scale + scale));
		else:
			label(btex \fontsize{8}{10}\selectfont $j,r$ etex, center p11 + (shift, -3*(i mod 7)*scale + scale));
		fi;

		pickup pensquare scaled 2;
		draw point 0 of p[i] + (shift, -3*(i mod 7)*scale) -- point 3 of p[i] + (shift, -3*(i mod 7)*scale);
		draw point 0 of p11 + (shift, -3*(i mod 7)*scale) -- point 3 of p11 + (shift, -3*(i mod 7)*scale);
		pickup pencircle scaled .5;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, center p0 + (-hshift-1.5scale, 0));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, center p0 + (-hshift-1.5scale, -3scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, center p0 + (-hshift-1.5scale, -6scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, center p0 + (-hshift-1.5scale, -9scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (e)} etex, center p0 + (-hshift-1.5scale, -12scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (f)} etex, center p0 + (-hshift-1.5scale, -15scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (g)} etex, center p0 + (-hshift-1.5scale, -18scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (h)} etex, center p0 + (hshift-1.5scale, 0));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (i)} etex, center p0 + (hshift-1.5scale, -3scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (j)} etex, center p0 + (hshift-1.5scale, -6scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (k)} etex, center p0 + (hshift-1.5scale, -9scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (l)} etex, center p0 + (hshift-1.5scale, -12scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (m)} etex, center p0 + (hshift-1.5scale, -15scale));

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p0 + (-hshift-scale, scale));
	label(btex \fontsize{8}{10}\selectfont $p,j$ etex, center p0 + (-hshift, scale));
	
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p,i\phantom{j}$ etex, center p0 + (-hshift, -3scale + scale));
	label(btex \fontsize{8}{10}\selectfont $j$ etex, center p1 + (-hshift, -3scale + scale));

	for i:=2 upto 10:
		if i<=6 : shift := -hshift else: shift := hshift fi;
		label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (shift, -3*(i mod 7)*scale + scale));
		label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p[i-1] + (shift, -3*(i mod 7)*scale + scale));
		label(btex \fontsize{8}{10}\selectfont $j$ etex, center p[i] + (shift, -3*(i mod 7)*scale + scale));
	endfor;

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (hshift, -3*4*scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p10 + (hshift, -3*4*scale + scale));

	for j:=0 upto 11:
		if j<11 :
			fill p[j] shifted (hshift, -3*5*scale) withcolor gray;
		fi;
		draw p[j] shifted (hshift, -3*5*scale);
	endfor;
	label("13", center p0 + (hshift, -3*5*scale));
	label("19", center p1 + (hshift, -3*5*scale));
	label("9", center p2 + (hshift, -3*5*scale));
	label("5", center p3 + (hshift, -3*5*scale));
	label("12", center p4 + (hshift, -3*5*scale));
	label("8", center p5 + (hshift, -3*5*scale));
	label("7", center p6 + (hshift, -3*5*scale));
	label("4", center p7 + (hshift, -3*5*scale));
	label("11", center p8 + (hshift, -3*5*scale));
	label("2", center p9 + (hshift, -3*5*scale));
	label("6", center p10 + (hshift, -3*5*scale));
	label("21", center p11 + (hshift, -3*5*scale));

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (hshift, -3*5*scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p10 + (hshift, -3*5*scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (hshift, -3*5*scale + scale));
	
	pickup pensquare scaled 2;
	draw point 1 of p11 + (hshift, -3*5*scale) -- point 2 of p11 + (hshift, -3*5*scale);
	draw point 0 of p11 + (hshift, -3*5*scale) -- point 3 of p11 + (hshift, -3*5*scale);
	
endfig;

beginfig(2);
	scale := .5cm;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 11:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, center p0 + (-1.5scale, 0));

	label("13", center p0);
	label("19", center p1);
	label("9", center p2);
	label("5", center p3);
	label("12", center p4);
	label("8", center p5);
	label("7", center p6);
	label("4", center p7);
	label("11", center p8);
	label("2", center p9);
	label("6", center p10);
	label("21", center p11);

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (0, scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (0, scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p0 + (-scale, scale));
	label(btex \fontsize{8}{10}\selectfont $j$ etex, center p11 + (scale, scale));

	for i:=0 upto 11:
		if i<=0 :
			fill p[i] shifted (0, -3scale) withcolor lightgray;
		fi;
		if i>=10 :
			fill p[i] shifted (0, -3scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, center p0 + (-1.5scale, -3scale));

	label("6", center p0 + (0, -3scale));
	label("19", center p1 + (0, -3scale));
	label("9", center p2 + (0, -3scale));
	label("5", center p3 + (0, -3scale));
	label("12", center p4 + (0, -3scale));
	label("8", center p5 + (0, -3scale));
	label("7", center p6 + (0, -3scale));
	label("4", center p7 + (0, -3scale));
	label("11", center p8 + (0, -3scale));
	label("2", center p9 + (0, -3scale));
	label("13", center p10 + (0, -3scale));
	label("21", center p11 + (0, -3scale));

	label(btex \fontsize{8}{10}\selectfont $p,i$ etex, center p0 + (0, -3scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (0, -3scale + scale));
	label(btex \fontsize{8}{10}\selectfont $j$ etex, center p10 + (0, -3scale + scale));

	for i:=0 upto 11:
		if i<=1 :
			fill p[i] shifted (0, -6scale) withcolor lightgray;
		fi;
		if i>=9 :
			fill p[i] shifted (0, -6scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, center p0 + (-1.5scale, -6scale));

	label("6", center p0 + (0, -6scale));
	label("2", center p1 + (0, -6scale));
	label("9", center p2 + (0, -6scale));
	label("5", center p3 + (0, -6scale));
	label("12", center p4 + (0, -6scale));
	label("8", center p5 + (0, -6scale));
	label("7", center p6 + (0, -6scale));
	label("4", center p7 + (0, -6scale));
	label("11", center p8 + (0, -6scale));
	label("19", center p9 + (0, -6scale));
	label("13", center p10 + (0, -6scale));
	label("21", center p11 + (0, -6scale));

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p1 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont $j$ etex, center p9 + (0, -6scale + scale));

	for i:=0 upto 11:
		if i<=8 :
			fill p[i] shifted (0, -9scale) withcolor lightgray;
		fi;
		if i>=9 :
			fill p[i] shifted (0, -9scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, center p0 + (-1.5scale, -9scale));

	label("6", center p0 + (0, -9scale));
	label("2", center p1 + (0, -9scale));
	label("9", center p2 + (0, -9scale));
	label("5", center p3 + (0, -9scale));
	label("12", center p4 + (0, -9scale));
	label("8", center p5 + (0, -9scale));
	label("7", center p6 + (0, -9scale));
	label("4", center p7 + (0, -9scale));
	label("11", center p8 + (0, -9scale));
	label("19", center p9 + (0, -9scale));
	label("13", center p10 + (0, -9scale));
	label("21", center p11 + (0, -9scale));

	label(btex \fontsize{8}{10}\selectfont $\phantom{j}p\phantom{j}$ etex, center p0 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}r\phantom{j}$ etex, center p11 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont $\phantom{j}i\phantom{j}$ etex, center p9 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont $j$ etex, center p8 + (0, -9scale + scale));

	for i:=0 upto 3:
		for j:=0 upto 11:
			draw p[j] shifted (0, -3*i*scale);
		endfor;
	endfor;
	
endfig;

end.
