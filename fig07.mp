verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

beginfig(1);
	scale := .4cm;
	hshift := 9scale;
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
		label(btex 13 etex, center p0 + (shift, -3*(i mod 7)*scale));
		label(btex 19 etex, center p1 + (shift, -3*(i mod 7)*scale));
		label(btex 9 etex, center p2 + (shift, -3*(i mod 7)*scale));
		label(btex 5 etex, center p3 + (shift, -3*(i mod 7)*scale));
		label(btex 12 etex, center p4 + (shift, -3*(i mod 7)*scale));
		label(btex 8 etex, center p5 + (shift, -3*(i mod 7)*scale));
		label(btex 7 etex, center p6 + (shift, -3*(i mod 7)*scale));
		label(btex 4 etex, center p7 + (shift, -3*(i mod 7)*scale));
		label(btex 11 etex, center p8 + (shift, -3*(i mod 7)*scale));
		label(btex 2 etex, center p9 + (shift, -3*(i mod 7)*scale));
		label(btex 6 etex, center p10 + (shift, -3*(i mod 7)*scale));
		label(btex 21 etex, center p11 + (shift, -3*(i mod 7)*scale));
		label(btex ${\scriptstyle r}$ etex, center p11 + (shift, -3*(i mod 7)*scale + scale));
		
		pickup pensquare scaled 2;
		draw point 0 of p[i] + (shift, -3*(i mod 7)*scale) -- point 3 of p[i] + (shift, -3*(i mod 7)*scale);
		draw point 0 of p11 + (shift, -3*(i mod 7)*scale) -- point 3 of p11 + (shift, -3*(i mod 7)*scale);
		pickup pencircle scaled .5;
	endfor;

	label(btex ${\scriptstyle i}$ etex, center p0 + (-hshift-scale, scale));
	label(btex ${\scriptstyle p,j}$ etex, center p0 + (-hshift, scale));
	
	label(btex ${\scriptstyle p,i}$ etex, center p0 + (-hshift, -3scale + scale));
	label(btex ${\scriptstyle j}$ etex, center p1 + (-hshift, -3scale + scale));

	for i:=2 upto 10:
		if i<=6 : shift := -hshift else: shift := hshift fi;
		label(btex ${\scriptstyle p}$ etex, center p0 + (shift, -3*(i mod 7)*scale + scale));
		label(btex ${\scriptstyle i}$ etex, center p[i-1] + (shift, -3*(i mod 7)*scale + scale));
		label(btex ${\scriptstyle j}$ etex, center p[i] + (shift, -3*(i mod 7)*scale + scale));
	endfor;

	label(btex ${\scriptstyle p}$ etex, center p0 + (hshift, -3*4*scale + scale));
	label(btex ${\scriptstyle i}$ etex, center p10 + (hshift, -3*4*scale + scale));

	for j:=0 upto 11:
		if j<11 :
			fill p[j] shifted (hshift, -3*5*scale) withcolor gray;
		fi;
		draw p[j] shifted (hshift, -3*5*scale);
	endfor;
	label(btex 13 etex, center p0 + (hshift, -3*5*scale));
	label(btex 19 etex, center p1 + (hshift, -3*5*scale));
	label(btex 9 etex, center p2 + (hshift, -3*5*scale));
	label(btex 5 etex, center p3 + (hshift, -3*5*scale));
	label(btex 12 etex, center p4 + (hshift, -3*5*scale));
	label(btex 8 etex, center p5 + (hshift, -3*5*scale));
	label(btex 7 etex, center p6 + (hshift, -3*5*scale));
	label(btex 4 etex, center p7 + (hshift, -3*5*scale));
	label(btex 11 etex, center p8 + (hshift, -3*5*scale));
	label(btex 2 etex, center p9 + (hshift, -3*5*scale));
	label(btex 6 etex, center p10 + (hshift, -3*5*scale));
	label(btex 21 etex, center p11 + (hshift, -3*5*scale));

	label(btex ${\scriptstyle p}$ etex, center p0 + (hshift, -3*5*scale + scale));
	label(btex ${\scriptstyle i}$ etex, center p10 + (hshift, -3*5*scale + scale));
	label(btex ${\scriptstyle r}$ etex, center p11 + (hshift, -3*5*scale + scale));
	
	pickup pensquare scaled 2;
	draw point 1 of p11 + (hshift, -3*5*scale) -- point 2 of p11 + (hshift, -3*5*scale);
	draw point 0 of p11 + (hshift, -3*5*scale) -- point 3 of p11 + (hshift, -3*5*scale);
	
endfig;

beginfig(2);
	scale := .4cm;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 11:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	label(btex 13 etex, center p0);
	label(btex 19 etex, center p1);
	label(btex 9 etex, center p2);
	label(btex 5 etex, center p3);
	label(btex 12 etex, center p4);
	label(btex 8 etex, center p5);
	label(btex 7 etex, center p6);
	label(btex 4 etex, center p7);
	label(btex 11 etex, center p8);
	label(btex 2 etex, center p9);
	label(btex 6 etex, center p10);
	label(btex 21 etex, center p11);

	label(btex ${\scriptstyle p}$ etex, center p0 + (0, scale));
	label(btex ${\scriptstyle r}$ etex, center p11 + (0, scale));
	label(btex ${\scriptstyle i}$ etex, center p0 + (-scale, scale));
	label(btex ${\scriptstyle j}$ etex, center p11 + (scale, scale));

	for i:=0 upto 11:
		if i>10 :
			fill p[i] shifted (0, -3scale) withcolor medgray;
		fi;
	endfor;

	label(btex 6 etex, center p0 + (0, -3scale));
	label(btex 19 etex, center p1 + (0, -3scale));
	label(btex 9 etex, center p2 + (0, -3scale));
	label(btex 5 etex, center p3 + (0, -3scale));
	label(btex 12 etex, center p4 + (0, -3scale));
	label(btex 8 etex, center p5 + (0, -3scale));
	label(btex 7 etex, center p6 + (0, -3scale));
	label(btex 4 etex, center p7 + (0, -3scale));
	label(btex 11 etex, center p8 + (0, -3scale));
	label(btex 2 etex, center p9 + (0, -3scale));
	label(btex 13 etex, center p10 + (0, -3scale));
	label(btex 21 etex, center p11 + (0, -3scale));

	label(btex ${\scriptstyle p,i}$ etex, center p0 + (0, -3scale + scale));
	label(btex ${\scriptstyle r}$ etex, center p11 + (0, -3scale + scale));
	label(btex ${\scriptstyle j}$ etex, center p10 + (0, -3scale + scale));

	for i:=0 upto 11:
		if i<=0 :
			fill p[i] shifted (0, -6scale) withcolor lightgray;
		fi;
		if i>=10 :
			fill p[i] shifted (0, -6scale) withcolor medgray;
		fi;
	endfor;

	label(btex 6 etex, center p0 + (0, -6scale));
	label(btex 2 etex, center p1 + (0, -6scale));
	label(btex 9 etex, center p2 + (0, -6scale));
	label(btex 5 etex, center p3 + (0, -6scale));
	label(btex 12 etex, center p4 + (0, -6scale));
	label(btex 8 etex, center p5 + (0, -6scale));
	label(btex 7 etex, center p6 + (0, -6scale));
	label(btex 4 etex, center p7 + (0, -6scale));
	label(btex 11 etex, center p8 + (0, -6scale));
	label(btex 19 etex, center p9 + (0, -6scale));
	label(btex 13 etex, center p10 + (0, -6scale));
	label(btex 21 etex, center p11 + (0, -6scale));

	label(btex ${\scriptstyle p}$ etex, center p0 + (0, -6scale + scale));
	label(btex ${\scriptstyle r}$ etex, center p11 + (0, -6scale + scale));
	label(btex ${\scriptstyle i}$ etex, center p1 + (0, -6scale + scale));
	label(btex ${\scriptstyle j}$ etex, center p9 + (0, -6scale + scale));

	for i:=0 upto 11:
		if i<=8 :
			fill p[i] shifted (0, -9scale) withcolor lightgray;
		fi;
		if i>=9 :
			fill p[i] shifted (0, -9scale) withcolor medgray;
		fi;
	endfor;

	label(btex 6 etex, center p0 + (0, -9scale));
	label(btex 2 etex, center p1 + (0, -9scale));
	label(btex 9 etex, center p2 + (0, -9scale));
	label(btex 5 etex, center p3 + (0, -9scale));
	label(btex 12 etex, center p4 + (0, -9scale));
	label(btex 8 etex, center p5 + (0, -9scale));
	label(btex 7 etex, center p6 + (0, -9scale));
	label(btex 4 etex, center p7 + (0, -9scale));
	label(btex 11 etex, center p8 + (0, -9scale));
	label(btex 19 etex, center p9 + (0, -9scale));
	label(btex 13 etex, center p10 + (0, -9scale));
	label(btex 21 etex, center p11 + (0, -9scale));

	label(btex ${\scriptstyle p}$ etex, center p0 + (0, -9scale + scale));
	label(btex ${\scriptstyle r}$ etex, center p11 + (0, -9scale + scale));
	label(btex ${\scriptstyle i}$ etex, center p9 + (0, -9scale + scale));
	label(btex ${\scriptstyle j}$ etex, center p8 + (0, -9scale + scale));

	for i:=0 upto 3:
		for j:=0 upto 11:
			draw p[j] shifted (0, -3*i*scale);
		endfor;
	endfor;
	
endfig;

end.
