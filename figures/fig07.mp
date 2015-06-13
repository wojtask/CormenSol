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
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 11:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for i:=0 upto 11:
		draw p[i] shifted (-hshift, 0);
	endfor;

	label("13", center p0 + (-hshift, 0));
	label("19", center p1 + (-hshift, 0));
	label("9", center p2 + (-hshift, 0));
	label("5", center p3 + (-hshift, 0));
	label("12", center p4 + (-hshift, 0));
	label("8", center p5 + (-hshift, 0));
	label("7", center p6 + (-hshift, 0));
	label("4", center p7 + (-hshift, 0));
	label("21", center p8 + (-hshift, 0));
	label("2", center p9 + (-hshift, 0));
	label("6", center p10 + (-hshift, 0));
	label("11", center p11 + (-hshift, 0));

	pickup pensquare scaled 2;
	draw point 0 of p0 + (-hshift, 0) -- point 3 of p0 + (-hshift, 0);
	draw point 0 of p11 + (-hshift, 0) -- point 3 of p11 + (-hshift, 0);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p0 + (-hshift-scale, scale));
	label(btex \fontsize{8}{10}\selectfont$p,j$ etex, center p0 + (-hshift, scale));

	for i:=0 upto 11:
		if i<0 :
			fill p[i] shifted (-hshift, -3*scale) withcolor lightgray;
		elseif i<1 :
			fill p[i] shifted (-hshift, -3*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*scale);
	endfor;

	label("13", center p0 + (-hshift, -3*scale));
	label("19", center p1 + (-hshift, -3*scale));
	label("9", center p2 + (-hshift, -3*scale));
	label("5", center p3 + (-hshift, -3*scale));
	label("12", center p4 + (-hshift, -3*scale));
	label("8", center p5 + (-hshift, -3*scale));
	label("7", center p6 + (-hshift, -3*scale));
	label("4", center p7 + (-hshift, -3*scale));
	label("21", center p8 + (-hshift, -3*scale));
	label("2", center p9 + (-hshift, -3*scale));
	label("6", center p10 + (-hshift, -3*scale));
	label("11", center p11 + (-hshift, -3*scale));

	pickup pensquare scaled 2;
	draw point 0 of p0 + (-hshift, -3*scale) -- point 3 of p0 + (-hshift, -3*scale);
	draw point 0 of p1 + (-hshift, -3*scale) -- point 3 of p1 + (-hshift, -3*scale);
	draw point 0 of p11 + (-hshift, -3*scale) -- point 3 of p11 + (-hshift, -3*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p0 + (-hshift-scale, -3*scale+scale));

	for i:=0 upto 11:
		if i<0 :
			fill p[i] shifted (-hshift, -3*2*scale) withcolor lightgray;
		elseif i<2 :
			fill p[i] shifted (-hshift, -3*2*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*2*scale);
	endfor;

	label("13", center p0 + (-hshift, -3*2*scale));
	label("19", center p1 + (-hshift, -3*2*scale));
	label("9", center p2 + (-hshift, -3*2*scale));
	label("5", center p3 + (-hshift, -3*2*scale));
	label("12", center p4 + (-hshift, -3*2*scale));
	label("8", center p5 + (-hshift, -3*2*scale));
	label("7", center p6 + (-hshift, -3*2*scale));
	label("4", center p7 + (-hshift, -3*2*scale));
	label("21", center p8 + (-hshift, -3*2*scale));
	label("2", center p9 + (-hshift, -3*2*scale));
	label("6", center p10 + (-hshift, -3*2*scale));
	label("11", center p11 + (-hshift, -3*2*scale));

	pickup pensquare scaled 2;
	draw point 0 of p0 + (-hshift, -3*2*scale) -- point 3 of p0 + (-hshift, -3*2*scale);
	draw point 0 of p2 + (-hshift, -3*2*scale) -- point 3 of p2 + (-hshift, -3*2*scale);
	draw point 0 of p11 + (-hshift, -3*2*scale) -- point 3 of p11 + (-hshift, -3*2*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p0 + (-hshift-scale, -3*2*scale+scale));

	for i:=0 upto 11:
		if i<1 :
			fill p[i] shifted (-hshift, -3*3*scale) withcolor lightgray;
		elseif i<3 :
			fill p[i] shifted (-hshift, -3*3*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*3*scale);
	endfor;

	label("9", center p0 + (-hshift, -3*3*scale));
	label("19", center p1 + (-hshift, -3*3*scale));
	label("13", center p2 + (-hshift, -3*3*scale));
	label("5", center p3 + (-hshift, -3*3*scale));
	label("12", center p4 + (-hshift, -3*3*scale));
	label("8", center p5 + (-hshift, -3*3*scale));
	label("7", center p6 + (-hshift, -3*3*scale));
	label("4", center p7 + (-hshift, -3*3*scale));
	label("21", center p8 + (-hshift, -3*3*scale));
	label("2", center p9 + (-hshift, -3*3*scale));
	label("6", center p10 + (-hshift, -3*3*scale));
	label("11", center p11 + (-hshift, -3*3*scale));

	pickup pensquare scaled 2;
	draw point 0 of p1 + (-hshift, -3*3*scale) -- point 3 of p1 + (-hshift, -3*3*scale);
	draw point 0 of p3 + (-hshift, -3*3*scale) -- point 3 of p3 + (-hshift, -3*3*scale);
	draw point 0 of p11 + (-hshift, -3*3*scale) -- point 3 of p11 + (-hshift, -3*3*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}p,i\phantom{j}$ etex, center p0 + (-hshift, -3*3scale + scale));

	for i:=0 upto 11:
		if i<2 :
			fill p[i] shifted (-hshift, -3*4*scale) withcolor lightgray;
		elseif i<4 :
			fill p[i] shifted (-hshift, -3*4*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*4*scale);
	endfor;

	label("9", center p0 + (-hshift, -3*4*scale));
	label("5", center p1 + (-hshift, -3*4*scale));
	label("13", center p2 + (-hshift, -3*4*scale));
	label("19", center p3 + (-hshift, -3*4*scale));
	label("12", center p4 + (-hshift, -3*4*scale));
	label("8", center p5 + (-hshift, -3*4*scale));
	label("7", center p6 + (-hshift, -3*4*scale));
	label("4", center p7 + (-hshift, -3*4*scale));
	label("21", center p8 + (-hshift, -3*4*scale));
	label("2", center p9 + (-hshift, -3*4*scale));
	label("6", center p10 + (-hshift, -3*4*scale));
	label("11", center p11 + (-hshift, -3*4*scale));

	pickup pensquare scaled 2;
	draw point 0 of p2 + (-hshift, -3*4*scale) -- point 3 of p2 + (-hshift, -3*4*scale);
	draw point 0 of p4 + (-hshift, -3*4*scale) -- point 3 of p4 + (-hshift, -3*4*scale);
	draw point 0 of p11 + (-hshift, -3*4*scale) -- point 3 of p11 + (-hshift, -3*4*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p1 + (-hshift, -3*4*scale + scale));

	for i:=0 upto 11:
		if i<2 :
			fill p[i] shifted (-hshift, -3*5*scale) withcolor lightgray;
		elseif i<5 :
			fill p[i] shifted (-hshift, -3*5*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*5*scale);
	endfor;

	label("9", center p0 + (-hshift, -3*5*scale));
	label("5", center p1 + (-hshift, -3*5*scale));
	label("13", center p2 + (-hshift, -3*5*scale));
	label("19", center p3 + (-hshift, -3*5*scale));
	label("12", center p4 + (-hshift, -3*5*scale));
	label("8", center p5 + (-hshift, -3*5*scale));
	label("7", center p6 + (-hshift, -3*5*scale));
	label("4", center p7 + (-hshift, -3*5*scale));
	label("21", center p8 + (-hshift, -3*5*scale));
	label("2", center p9 + (-hshift, -3*5*scale));
	label("6", center p10 + (-hshift, -3*5*scale));
	label("11", center p11 + (-hshift, -3*5*scale));

	pickup pensquare scaled 2;
	draw point 0 of p2 + (-hshift, -3*5*scale) -- point 3 of p2 + (-hshift, -3*5*scale);
	draw point 0 of p5 + (-hshift, -3*5*scale) -- point 3 of p5 + (-hshift, -3*5*scale);
	draw point 0 of p11 + (-hshift, -3*5*scale) -- point 3 of p11 + (-hshift, -3*5*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p1 + (-hshift, -3*5*scale + scale));

	for i:=0 upto 11:
		if i<3 :
			fill p[i] shifted (-hshift, -3*6*scale) withcolor lightgray;
		elseif i<6 :
			fill p[i] shifted (-hshift, -3*6*scale) withcolor medgray;
		fi;
		draw p[i] shifted (-hshift, -3*6*scale);
	endfor;

	label("9", center p0 + (-hshift, -3*6*scale));
	label("5", center p1 + (-hshift, -3*6*scale));
	label("8", center p2 + (-hshift, -3*6*scale));
	label("19", center p3 + (-hshift, -3*6*scale));
	label("12", center p4 + (-hshift, -3*6*scale));
	label("13", center p5 + (-hshift, -3*6*scale));
	label("7", center p6 + (-hshift, -3*6*scale));
	label("4", center p7 + (-hshift, -3*6*scale));
	label("21", center p8 + (-hshift, -3*6*scale));
	label("2", center p9 + (-hshift, -3*6*scale));
	label("6", center p10 + (-hshift, -3*6*scale));
	label("11", center p11 + (-hshift, -3*6*scale));

	pickup pensquare scaled 2;
	draw point 0 of p3 + (-hshift, -3*6*scale) -- point 3 of p3 + (-hshift, -3*6*scale);
	draw point 0 of p6 + (-hshift, -3*6*scale) -- point 3 of p6 + (-hshift, -3*6*scale);
	draw point 0 of p11 + (-hshift, -3*6*scale) -- point 3 of p11 + (-hshift, -3*6*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p2 + (-hshift, -3*6*scale + scale));

	for i:=0 upto 11:
		if i<4 :
			fill p[i] shifted (hshift, 0) withcolor lightgray;
		elseif i<7 :
			fill p[i] shifted (hshift, 0) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, 0);
	endfor;

	label("9", center p0 + (hshift, 0));
	label("5", center p1 + (hshift, 0));
	label("8", center p2 + (hshift, 0));
	label("7", center p3 + (hshift, 0));
	label("12", center p4 + (hshift, 0));
	label("13", center p5 + (hshift, 0));
	label("19", center p6 + (hshift, 0));
	label("4", center p7 + (hshift, 0));
	label("21", center p8 + (hshift, 0));
	label("2", center p9 + (hshift, 0));
	label("6", center p10 + (hshift, 0));
	label("11", center p11 + (hshift, 0));

	pickup pensquare scaled 2;
	draw point 0 of p4 + (hshift, 0) -- point 3 of p4 + (hshift, 0);
	draw point 0 of p7 + (hshift, 0) -- point 3 of p7 + (hshift, 0);
	draw point 0 of p11 + (hshift, 0) -- point 3 of p11 + (hshift, 0);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p3 + (hshift, scale));

	for i:=0 upto 11:
		if i<5 :
			fill p[i] shifted (hshift, -3*scale) withcolor lightgray;
		elseif i<8 :
			fill p[i] shifted (hshift, -3*scale) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, -3*scale);
	endfor;

	label("9", center p0 + (hshift, -3*scale));
	label("5", center p1 + (hshift, -3*scale));
	label("8", center p2 + (hshift, -3*scale));
	label("7", center p3 + (hshift, -3*scale));
	label("4", center p4 + (hshift, -3*scale));
	label("13", center p5 + (hshift, -3*scale));
	label("19", center p6 + (hshift, -3*scale));
	label("12", center p7 + (hshift, -3*scale));
	label("21", center p8 + (hshift, -3*scale));
	label("2", center p9 + (hshift, -3*scale));
	label("6", center p10 + (hshift, -3*scale));
	label("11", center p11 + (hshift, -3*scale));

	pickup pensquare scaled 2;
	draw point 0 of p5 + (hshift, -3*scale) -- point 3 of p5 + (hshift, -3*scale);
	draw point 0 of p8 + (hshift, -3*scale) -- point 3 of p8 + (hshift, -3*scale);
	draw point 0 of p11 + (hshift, -3*scale) -- point 3 of p11 + (hshift, -3*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p4 + (hshift, -3*scale + scale));

	for i:=0 upto 11:
		if i<5 :
			fill p[i] shifted (hshift, -3*2*scale) withcolor lightgray;
		elseif i<9 :
			fill p[i] shifted (hshift, -3*2*scale) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, -3*2*scale);
	endfor;

	label("9", center p0 + (hshift, -3*2*scale));
	label("5", center p1 + (hshift, -3*2*scale));
	label("8", center p2 + (hshift, -3*2*scale));
	label("7", center p3 + (hshift, -3*2*scale));
	label("4", center p4 + (hshift, -3*2*scale));
	label("13", center p5 + (hshift, -3*2*scale));
	label("19", center p6 + (hshift, -3*2*scale));
	label("12", center p7 + (hshift, -3*2*scale));
	label("21", center p8 + (hshift, -3*2*scale));
	label("2", center p9 + (hshift, -3*2*scale));
	label("6", center p10 + (hshift, -3*2*scale));
	label("11", center p11 + (hshift, -3*2*scale));

	pickup pensquare scaled 2;
	draw point 0 of p5 + (hshift, -3*2*scale) -- point 3 of p5 + (hshift, -3*2*scale);
	draw point 0 of p9 + (hshift, -3*2*scale) -- point 3 of p9 + (hshift, -3*2*scale);
	draw point 0 of p11 + (hshift, -3*2*scale) -- point 3 of p11 + (hshift, -3*2*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p4 + (hshift, -3*2*scale + scale));

	for i:=0 upto 11:
		if i<6 :
			fill p[i] shifted (hshift, -3*3*scale) withcolor lightgray;
		elseif i<10 :
			fill p[i] shifted (hshift, -3*3*scale) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, -3*3*scale);
	endfor;

	label("9", center p0 + (hshift, -3*3*scale));
	label("5", center p1 + (hshift, -3*3*scale));
	label("8", center p2 + (hshift, -3*3*scale));
	label("7", center p3 + (hshift, -3*3*scale));
	label("4", center p4 + (hshift, -3*3*scale));
	label("2", center p5 + (hshift, -3*3*scale));
	label("19", center p6 + (hshift, -3*3*scale));
	label("12", center p7 + (hshift, -3*3*scale));
	label("21", center p8 + (hshift, -3*3*scale));
	label("13", center p9 + (hshift, -3*3*scale));
	label("6", center p10 + (hshift, -3*3*scale));
	label("11", center p11 + (hshift, -3*3*scale));

	pickup pensquare scaled 2;
	draw point 0 of p6 + (hshift, -3*3*scale) -- point 3 of p6 + (hshift, -3*3*scale);
	draw point 0 of p10 + (hshift, -3*3*scale) -- point 3 of p10 + (hshift, -3*3*scale);
	draw point 0 of p11 + (hshift, -3*3*scale) -- point 3 of p11 + (hshift, -3*3*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p5 + (hshift, -3*3*scale + scale));

	for i:=0 upto 11:
		if i<7 :
			fill p[i] shifted (hshift, -3*4*scale) withcolor lightgray;
		elseif i<11 :
			fill p[i] shifted (hshift, -3*4*scale) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, -3*4*scale);
	endfor;

	label("9", center p0 + (hshift, -3*4*scale));
	label("5", center p1 + (hshift, -3*4*scale));
	label("8", center p2 + (hshift, -3*4*scale));
	label("7", center p3 + (hshift, -3*4*scale));
	label("4", center p4 + (hshift, -3*4*scale));
	label("2", center p5 + (hshift, -3*4*scale));
	label("6", center p6 + (hshift, -3*4*scale));
	label("12", center p7 + (hshift, -3*4*scale));
	label("21", center p8 + (hshift, -3*4*scale));
	label("13", center p9 + (hshift, -3*4*scale));
	label("19", center p10 + (hshift, -3*4*scale));
	label("11", center p11 + (hshift, -3*4*scale));

	pickup pensquare scaled 2;
	draw point 0 of p7 + (hshift, -3*4*scale) -- point 3 of p7 + (hshift, -3*4*scale);
	draw point 0 of p11 + (hshift, -3*4*scale) -- point 3 of p11 + (hshift, -3*4*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p6 + (hshift, -3*4*scale + scale));

	for i:=0 upto 11:
		if i<7 :
			fill p[i] shifted (hshift, -3*5*scale) withcolor lightgray;
		elseif i>7 :
			fill p[i] shifted (hshift, -3*5*scale) withcolor medgray;
		fi;
		draw p[i] shifted (hshift, -3*5*scale);
	endfor;

	label("9", center p0 + (hshift, -3*5*scale));
	label("5", center p1 + (hshift, -3*5*scale));
	label("8", center p2 + (hshift, -3*5*scale));
	label("7", center p3 + (hshift, -3*5*scale));
	label("4", center p4 + (hshift, -3*5*scale));
	label("2", center p5 + (hshift, -3*5*scale));
	label("6", center p6 + (hshift, -3*5*scale));
	label("11", center p7 + (hshift, -3*5*scale));
	label("21", center p8 + (hshift, -3*5*scale));
	label("13", center p9 + (hshift, -3*5*scale));
	label("19", center p10 + (hshift, -3*5*scale));
	label("12", center p11 + (hshift, -3*5*scale));

	pickup pensquare scaled 2;
	draw point 0 of p7 + (hshift, -3*5*scale) -- point 3 of p7 + (hshift, -3*5*scale);
	draw point 0 of p8 + (hshift, -3*5*scale) -- point 3 of p8 + (hshift, -3*5*scale);
	draw point 1 of p11 + (hshift, -3*5*scale) -- point 2 of p11 + (hshift, -3*5*scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p6 + (hshift, -3*5*scale + scale));

	for i:=0 upto 12:
		if (i=1) or (i=2) or (i=4) or (i=5) or (i=6):
			label(btex \fontsize{8}{10}\selectfont$\phantom{j}p\phantom{j}$ etex, center p0 + (-hshift, -3*i*scale + scale));
		fi;

		if i>=7:
			label(btex \fontsize{8}{10}\selectfont$\phantom{j}p\phantom{j}$ etex, center p0 + (hshift, -3*(i-7)*scale + scale));
		fi;

		if i<7:
			label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (-hshift, -3*i*scale + scale));
		else:
			label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (hshift, -3*(i-7)*scale + scale));
		fi;

		if (i>0) and (i<7):
			label(btex \fontsize{8}{10}\selectfont$j$ etex, center p[i] + (-hshift, -3*i*scale + scale));
		fi;

		if (i>=7) and (i<11):
			label(btex \fontsize{8}{10}\selectfont$j$ etex, center p[i] + (hshift, -3*(i-7)*scale + scale));
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, center p0 + (-hshift-1.7scale, 0));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, center p0 + (-hshift-1.7scale, -3scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, center p0 + (-hshift-1.7scale, -6scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, center p0 + (-hshift-1.7scale, -9scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(e)} etex, center p0 + (-hshift-1.7scale, -12scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(f)} etex, center p0 + (-hshift-1.7scale, -15scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(g)} etex, center p0 + (-hshift-1.7scale, -18scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(h)} etex, center p0 + (hshift-1.7scale, 0));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(i)} etex, center p0 + (hshift-1.7scale, -3scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(j)} etex, center p0 + (hshift-1.7scale, -6scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(k)} etex, center p0 + (hshift-1.7scale, -9scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(l)} etex, center p0 + (hshift-1.7scale, -12scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(m)} etex, center p0 + (hshift-1.7scale, -15scale));

endfig;

beginfig(2);
	scale := .5cm;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 11:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, center p0 + (-2scale, 0));

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

	pickup pensquare scaled 2;
	draw point 0 of p0 -- point 3 of p0;
	draw point 1 of p11 -- point 2 of p11;
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}p\phantom{j}$ etex, center p0 + (0, scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (0, scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p0 + (-scale, scale));
	label(btex \fontsize{8}{10}\selectfont$j$ etex, center p11 + (scale, scale));

	for i:=0 upto 11:
		if i<=0 :
			fill p[i] shifted (0, -3scale) withcolor lightgray;
		fi;
		if i>=10 :
			fill p[i] shifted (0, -3scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, center p0 + (-2scale, -3scale));

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

	pickup pensquare scaled 2;
	draw point 0 of p1 + (0, -3scale) -- point 3 of p1 + (0, -3scale);
	draw point 0 of p10 + (0, -3scale) -- point 3 of p10 + (0, -3scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$p,i$ etex, center p0 + (0, -3scale + scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (0, -3scale + scale));
	label(btex \fontsize{8}{10}\selectfont$j$ etex, center p10 + (0, -3scale + scale));

	for i:=0 upto 11:
		if i<=1 :
			fill p[i] shifted (0, -6scale) withcolor lightgray;
		fi;
		if i>=9 :
			fill p[i] shifted (0, -6scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, center p0 + (-2scale, -6scale));

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

	pickup pensquare scaled 2;
	draw point 0 of p2 + (0, -6scale) -- point 3 of p2 + (0, -6scale);
	draw point 0 of p9 + (0, -6scale) -- point 3 of p9 + (0, -6scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}p\phantom{j}$ etex, center p0 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p1 + (0, -6scale + scale));
	label(btex \fontsize{8}{10}\selectfont$j$ etex, center p9 + (0, -6scale + scale));

	for i:=0 upto 11:
		if i<=8 :
			fill p[i] shifted (0, -9scale) withcolor lightgray;
		fi;
		if i>=9 :
			fill p[i] shifted (0, -9scale) withcolor medgray;
		fi;
	endfor;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, center p0 + (-2scale, -9scale));

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

	pickup pensquare scaled 2;
	draw point 0 of p9 + (0, -9scale) -- point 3 of p9 + (0, -9scale);
	pickup pencircle scaled .5;

	label(btex \fontsize{8}{10}\selectfont$\phantom{j}p\phantom{j}$ etex, center p0 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}r\phantom{j}$ etex, center p11 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont$\phantom{j}i\phantom{j}$ etex, center p9 + (0, -9scale + scale));
	label(btex \fontsize{8}{10}\selectfont$j$ etex, center p8 + (0, -9scale + scale));

	for i:=0 upto 3:
		for j:=0 upto 11:
			draw p[j] shifted (0, -3*i*scale);
		endfor;
	endfor;
	
endfig;

end.
