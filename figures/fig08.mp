verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

beginfig(1);
	scale := .35cm;
	hshift := 14scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	path r[];
	
	for i:=0 upto 10:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for i:=0 upto 6:
		r[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;
	
	label(btex $A$ etex, center p0 + (-1.5scale, 4.5scale));
	for i:=0 upto 10:
		fill p[i] shifted (0, 4.5scale) withcolor lightgray;
		draw p[i] shifted (0, 4.5scale);
		label(decimal (i+1) infont "cmr7", center p[i] + (0, 5.5scale));
	endfor;
	label("6", center p0 + (0, 4.5scale));
	label("0", center p1 + (0, 4.5scale));
	label("2", center p2 + (0, 4.5scale));
	label("0", center p3 + (0, 4.5scale));
	label("1", center p4 + (0, 4.5scale));
	label("3", center p5 + (0, 4.5scale));
	label("4", center p6 + (0, 4.5scale));
	label("6", center p7 + (0, 4.5scale));
	label("1", center p8 + (0, 4.5scale));
	label("3", center p9 + (0, 4.5scale));
	label("2", center p10 + (0, 4.5scale));

	label(btex $C$ etex, center r0 + (-1.5scale, 2scale));
	for i:=0 upto 6:
		fill r[i] shifted (0, 2scale) withcolor lightgray;
		draw r[i] shifted (0, 2scale);
		label(decimal (i) infont "cmr7", center r[i] + (0, 3scale));
	endfor;
	label("2", center r0 + (0, 2scale));
	label("2", center r1 + (0, 2scale));
	label("2", center r2 + (0, 2scale));
	label("2", center r3 + (0, 2scale));
	label("1", center r4 + (0, 2scale));
	label("0", center r5 + (0, 2scale));
	label("2", center r6 + (0, 2scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, center p0 + (4.25scale, 0));
	
	label(btex $C$ etex, center r0 + (hshift-1.5scale, 3.5scale));
	for i:=0 upto 6:
		fill r[i] shifted (hshift, 3.5scale) withcolor lightgray;
		draw r[i] shifted (hshift, 3.5scale);
		label(decimal (i) infont "cmr7", center r[i] + (hshift, 4.5scale));
	endfor;
	label("2", center r0 + (hshift, 3.5scale));
	label("4", center r1 + (hshift, 3.5scale));
	label("6", center r2 + (hshift, 3.5scale));
	label("8", center r3 + (hshift, 3.5scale));
	label("9", center r4 + (hshift, 3.5scale));
	label("9", center r5 + (hshift, 3.5scale));
	label("11", center r6 + (hshift, 3.5scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, center p0 + (hshift+4.25scale, 0));

	label(btex $B$ etex, center p0 + (2hshift-1.5scale, 4.5scale));
	for i:=0 upto 10:
		fill p[i] shifted (2hshift, 4.5scale) withcolor if i=5: lightgray else: medgray fi;
		draw p[i] shifted (2hshift, 4.5scale);
		label(decimal (i+1) infont "cmr7", center p[i] + (2hshift, 5.5scale));
	endfor;
	label("2", center p5 + (2hshift, 4.5scale));

	label(btex $C$ etex, center r0 + (2hshift-1.5scale, 2scale));
	for i:=0 upto 6:
		fill p[i] shifted (2hshift, 2scale) withcolor lightgray;
		draw p[i] shifted (2hshift, 2scale);
		label(decimal (i) infont "cmr7", center r[i] + (2hshift, 3scale));
	endfor;
	label("2", center r0 + (2hshift, 2scale));
	label("4", center r1 + (2hshift, 2scale));
	label("5", center r2 + (2hshift, 2scale));
	label("8", center r3 + (2hshift, 2scale));
	label("9", center r4 + (2hshift, 2scale));
	label("9", center r5 + (2hshift, 2scale));
	label("11", center r6 + (2hshift, 2scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, center p0 + (2hshift+4.25scale, 0));

	label(btex $B$ etex, center p0 + (-1.5scale, -3.5scale));
	for i:=0 upto 10:
		fill p[i] shifted (0, -3.5scale) withcolor if (i=5) or (i=7): lightgray else: medgray fi;
		draw p[i] shifted (0, -3.5scale);
		label(decimal (i+1) infont "cmr7", center p[i] + (0, -2.5scale));
	endfor;
	label("2", center p5 + (0, -3.5scale));
	label("3", center p7 + (0, -3.5scale));

	label(btex $C$ etex, center r0 + (-1.5scale, -6scale));
	for i:=0 upto 6:
		fill p[i] shifted (0, -6scale) withcolor lightgray;
		draw p[i] shifted (0, -6scale);
		label(decimal (i) infont "cmr7", center r[i] + (0, -5scale));
	endfor;
	label("2", center r0 + (0, -6scale));
	label("4", center r1 + (0, -6scale));
	label("5", center r2 + (0, -6scale));
	label("7", center r3 + (0, -6scale));
	label("9", center r4 + (0, -6scale));
	label("9", center r5 + (0, -6scale));
	label("11", center r6 + (0, -6scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, center p0 + (4.25scale, -8scale));

	label(btex $B$ etex, center p0 + (hshift-1.5scale, -3.5scale));
	for i:=0 upto 10:
		fill p[i] shifted (hshift, -3.5scale) withcolor if (i=3) or (i=5) or (i=7): lightgray else: medgray fi;
		draw p[i] shifted (hshift, -3.5scale);
		label(decimal (i+1) infont "cmr7", center p[i] + (hshift, -2.5scale));
	endfor;
	label("1", center p3 + (hshift, -3.5scale));
	label("2", center p5 + (hshift, -3.5scale));
	label("3", center p7 + (hshift, -3.5scale));

	label(btex $C$ etex, center r0 + (hshift-1.5scale, -6scale));
	for i:=0 upto 6:
		fill p[i] shifted (hshift, -6scale) withcolor lightgray;
		draw p[i] shifted (hshift, -6scale);
		label(decimal (i) infont "cmr7", center r[i] + (hshift, -5scale));
	endfor;
	label("2", center r0 + (hshift, -6scale));
	label("3", center r1 + (hshift, -6scale));
	label("5", center r2 + (hshift, -6scale));
	label("7", center r3 + (hshift, -6scale));
	label("9", center r4 + (hshift, -6scale));
	label("9", center r5 + (hshift, -6scale));
	label("11", center r6 + (hshift, -6scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(e)} etex, center p0 + (hshift+4.25scale, -8scale));

	label(btex $B$ etex, center p0 + (2hshift-1.5scale, -4.5scale));
	for i:=0 upto 10:
		fill p[i] shifted (2hshift, -4.5scale) withcolor lightgray;
		draw p[i] shifted (2hshift, -4.5scale);
		label(decimal (i+1) infont "cmr7", center p[i] + (2hshift, -3.5scale));
	endfor;
	label("0", center p0 + (2hshift, -4.5scale));
	label("0", center p1 + (2hshift, -4.5scale));
	label("1", center p2 + (2hshift, -4.5scale));
	label("1", center p3 + (2hshift, -4.5scale));
	label("2", center p4 + (2hshift, -4.5scale));
	label("2", center p5 + (2hshift, -4.5scale));
	label("3", center p6 + (2hshift, -4.5scale));
	label("3", center p7 + (2hshift, -4.5scale));
	label("4", center p8 + (2hshift, -4.5scale));
	label("6", center p9 + (2hshift, -4.5scale));
	label("6", center p10 + (2hshift, -4.5scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(f)} etex, center p0 + (2hshift+4.25scale, -8scale));
endfig;

beginfig(2);
	scale := .35cm;
	hshift := 8scale;
	color gray; gray := .8white;
	path p;

	for i:=0 upto 3:
		p := unitsquare xscaled scale yscaled 16scale shifted (i*hshift-.5scale, -15.5scale);
		if i<>0:
			fill p shifted ((3-i)*scale, 0) withcolor gray;
		fi;
	endfor;
	
	defaultfont := "cmtt10";
	label("C", center unitsquare shifted (0, 0));
	label("O", center unitsquare shifted (scale, 0));
	label("W", center unitsquare shifted (2scale, 0));
	label("D", center unitsquare shifted (0, -scale));
	label("O", center unitsquare shifted (scale, -scale));
	label("G", center unitsquare shifted (2scale, -scale));
	label("S", center unitsquare shifted (0, -2scale));
	label("E", center unitsquare shifted (scale, -2scale));
	label("A", center unitsquare shifted (2scale, -2scale));
	label("R", center unitsquare shifted (0, -3scale));
	label("U", center unitsquare shifted (scale, -3scale));
	label("G", center unitsquare shifted (2scale, -3scale));
	label("R", center unitsquare shifted (0, -4scale));
	label("O", center unitsquare shifted (scale, -4scale));
	label("W", center unitsquare shifted (2scale, -4scale));
	label("M", center unitsquare shifted (0, -5scale));
	label("O", center unitsquare shifted (scale, -5scale));
	label("B", center unitsquare shifted (2scale, -5scale));
	label("B", center unitsquare shifted (0, -6scale));
	label("O", center unitsquare shifted (scale, -6scale));
	label("X", center unitsquare shifted (2scale, -6scale));
	label("T", center unitsquare shifted (0, -7scale));
	label("A", center unitsquare shifted (scale, -7scale));
	label("B", center unitsquare shifted (2scale, -7scale));
	label("B", center unitsquare shifted (0, -8scale));
	label("A", center unitsquare shifted (scale, -8scale));
	label("R", center unitsquare shifted (2scale, -8scale));
	label("E", center unitsquare shifted (0, -9scale));
	label("A", center unitsquare shifted (scale, -9scale));
	label("R", center unitsquare shifted (2scale, -9scale));
	label("T", center unitsquare shifted (0, -10scale));
	label("A", center unitsquare shifted (scale, -10scale));
	label("R", center unitsquare shifted (2scale, -10scale));
	label("D", center unitsquare shifted (0, -11scale));
	label("I", center unitsquare shifted (scale, -11scale));
	label("G", center unitsquare shifted (2scale, -11scale));
	label("B", center unitsquare shifted (0, -12scale));
	label("I", center unitsquare shifted (scale, -12scale));
	label("G", center unitsquare shifted (2scale, -12scale));
	label("T", center unitsquare shifted (0, -13scale));
	label("E", center unitsquare shifted (scale, -13scale));
	label("A", center unitsquare shifted (2scale, -13scale));
	label("N", center unitsquare shifted (0, -14scale));
	label("O", center unitsquare shifted (scale, -14scale));
	label("W", center unitsquare shifted (2scale, -14scale));
	label("F", center unitsquare shifted (0, -15scale));
	label("O", center unitsquare shifted (scale, -15scale));
	label("X", center unitsquare shifted (2scale, -15scale));

	label("S", center unitsquare shifted (hshift, 0));
	label("E", center unitsquare shifted (hshift+scale, 0));
	label("A", center unitsquare shifted (hshift+2scale, 0));
	label("T", center unitsquare shifted (hshift, -scale));
	label("E", center unitsquare shifted (hshift+scale, -scale));
	label("A", center unitsquare shifted (hshift+2scale, -scale));
	label("M", center unitsquare shifted (hshift, -2scale));
	label("O", center unitsquare shifted (hshift+scale, -2scale));
	label("B", center unitsquare shifted (hshift+2scale, -2scale));
	label("T", center unitsquare shifted (hshift, -3scale));
	label("A", center unitsquare shifted (hshift+scale, -3scale));
	label("B", center unitsquare shifted (hshift+2scale, -3scale));
	label("D", center unitsquare shifted (hshift, -4scale));
	label("O", center unitsquare shifted (hshift+scale, -4scale));
	label("G", center unitsquare shifted (hshift+2scale, -4scale));
	label("R", center unitsquare shifted (hshift, -5scale));
	label("U", center unitsquare shifted (hshift+scale, -5scale));
	label("G", center unitsquare shifted (hshift+2scale, -5scale));
	label("D", center unitsquare shifted (hshift, -6scale));
	label("I", center unitsquare shifted (hshift+scale, -6scale));
	label("G", center unitsquare shifted (hshift+2scale, -6scale));
	label("B", center unitsquare shifted (hshift, -7scale));
	label("I", center unitsquare shifted (hshift+scale, -7scale));
	label("G", center unitsquare shifted (hshift+2scale, -7scale));
	label("B", center unitsquare shifted (hshift, -8scale));
	label("A", center unitsquare shifted (hshift+scale, -8scale));
	label("R", center unitsquare shifted (hshift+2scale, -8scale));
	label("E", center unitsquare shifted (hshift, -9scale));
	label("A", center unitsquare shifted (hshift+scale, -9scale));
	label("R", center unitsquare shifted (hshift+2scale, -9scale));
	label("T", center unitsquare shifted (hshift, -10scale));
	label("A", center unitsquare shifted (hshift+scale, -10scale));
	label("R", center unitsquare shifted (hshift+2scale, -10scale));
	label("C", center unitsquare shifted (hshift, -11scale));
	label("O", center unitsquare shifted (hshift+scale, -11scale));
	label("W", center unitsquare shifted (hshift+2scale, -11scale));
	label("R", center unitsquare shifted (hshift, -12scale));
	label("O", center unitsquare shifted (hshift+scale, -12scale));
	label("W", center unitsquare shifted (hshift+2scale, -12scale));
	label("N", center unitsquare shifted (hshift, -13scale));
	label("O", center unitsquare shifted (hshift+scale, -13scale));
	label("W", center unitsquare shifted (hshift+2scale, -13scale));
	label("B", center unitsquare shifted (hshift, -14scale));
	label("O", center unitsquare shifted (hshift+scale, -14scale));
	label("X", center unitsquare shifted (hshift+2scale, -14scale));
	label("F", center unitsquare shifted (hshift, -15scale));
	label("O", center unitsquare shifted (hshift+scale, -15scale));
	label("X", center unitsquare shifted (hshift+2scale, -15scale));

	label("T", center unitsquare shifted (2hshift, 0));
	label("A", center unitsquare shifted (2hshift+scale, 0));
	label("B", center unitsquare shifted (2hshift+2scale, 0));
	label("B", center unitsquare shifted (2hshift, -scale));
	label("A", center unitsquare shifted (2hshift+scale, -scale));
	label("R", center unitsquare shifted (2hshift+2scale, -scale));
	label("E", center unitsquare shifted (2hshift, -2scale));
	label("A", center unitsquare shifted (2hshift+scale, -2scale));
	label("R", center unitsquare shifted (2hshift+2scale, -2scale));
	label("T", center unitsquare shifted (2hshift, -3scale));
	label("A", center unitsquare shifted (2hshift+scale, -3scale));
	label("R", center unitsquare shifted (2hshift+2scale, -3scale));
	label("S", center unitsquare shifted (2hshift, -4scale));
	label("E", center unitsquare shifted (2hshift+scale, -4scale));
	label("A", center unitsquare shifted (2hshift+2scale, -4scale));
	label("T", center unitsquare shifted (2hshift, -5scale));
	label("E", center unitsquare shifted (2hshift+scale, -5scale));
	label("A", center unitsquare shifted (2hshift+2scale, -5scale));
	label("D", center unitsquare shifted (2hshift, -6scale));
	label("I", center unitsquare shifted (2hshift+scale, -6scale));
	label("G", center unitsquare shifted (2hshift+2scale, -6scale));
	label("B", center unitsquare shifted (2hshift, -7scale));
	label("I", center unitsquare shifted (2hshift+scale, -7scale));
	label("G", center unitsquare shifted (2hshift+2scale, -7scale));
	label("M", center unitsquare shifted (2hshift, -8scale));
	label("O", center unitsquare shifted (2hshift+scale, -8scale));
	label("B", center unitsquare shifted (2hshift+2scale, -8scale));
	label("D", center unitsquare shifted (2hshift, -9scale));
	label("O", center unitsquare shifted (2hshift+scale, -9scale));
	label("G", center unitsquare shifted (2hshift+2scale, -9scale));
	label("C", center unitsquare shifted (2hshift, -10scale));
	label("O", center unitsquare shifted (2hshift+scale, -10scale));
	label("W", center unitsquare shifted (2hshift+2scale, -10scale));
	label("R", center unitsquare shifted (2hshift, -11scale));
	label("O", center unitsquare shifted (2hshift+scale, -11scale));
	label("W", center unitsquare shifted (2hshift+2scale, -11scale));
	label("N", center unitsquare shifted (2hshift, -12scale));
	label("O", center unitsquare shifted (2hshift+scale, -12scale));
	label("W", center unitsquare shifted (2hshift+2scale, -12scale));
	label("B", center unitsquare shifted (2hshift, -13scale));
	label("O", center unitsquare shifted (2hshift+scale, -13scale));
	label("X", center unitsquare shifted (2hshift+2scale, -13scale));
	label("F", center unitsquare shifted (2hshift, -14scale));
	label("O", center unitsquare shifted (2hshift+scale, -14scale));
	label("X", center unitsquare shifted (2hshift+2scale, -14scale));
	label("R", center unitsquare shifted (2hshift, -15scale));
	label("U", center unitsquare shifted (2hshift+scale, -15scale));
	label("G", center unitsquare shifted (2hshift+2scale, -15scale));

	label("B", center unitsquare shifted (3hshift, 0));
	label("A", center unitsquare shifted (3hshift+scale, 0));
	label("R", center unitsquare shifted (3hshift+2scale, 0));
	label("B", center unitsquare shifted (3hshift, -scale));
	label("I", center unitsquare shifted (3hshift+scale, -scale));
	label("G", center unitsquare shifted (3hshift+2scale, -scale));
	label("B", center unitsquare shifted (3hshift, -2scale));
	label("O", center unitsquare shifted (3hshift+scale, -2scale));
	label("X", center unitsquare shifted (3hshift+2scale, -2scale));
	label("C", center unitsquare shifted (3hshift, -3scale));
	label("O", center unitsquare shifted (3hshift+scale, -3scale));
	label("W", center unitsquare shifted (3hshift+2scale, -3scale));
	label("D", center unitsquare shifted (3hshift, -4scale));
	label("I", center unitsquare shifted (3hshift+scale, -4scale));
	label("G", center unitsquare shifted (3hshift+2scale, -4scale));
	label("D", center unitsquare shifted (3hshift, -5scale));
	label("O", center unitsquare shifted (3hshift+scale, -5scale));
	label("G", center unitsquare shifted (3hshift+2scale, -5scale));
	label("E", center unitsquare shifted (3hshift, -6scale));
	label("A", center unitsquare shifted (3hshift+scale, -6scale));
	label("R", center unitsquare shifted (3hshift+2scale, -6scale));
	label("F", center unitsquare shifted (3hshift, -7scale));
	label("O", center unitsquare shifted (3hshift+scale, -7scale));
	label("X", center unitsquare shifted (3hshift+2scale, -7scale));
	label("M", center unitsquare shifted (3hshift, -8scale));
	label("O", center unitsquare shifted (3hshift+scale, -8scale));
	label("B", center unitsquare shifted (3hshift+2scale, -8scale));
	label("N", center unitsquare shifted (3hshift, -9scale));
	label("O", center unitsquare shifted (3hshift+scale, -9scale));
	label("W", center unitsquare shifted (3hshift+2scale, -9scale));
	label("R", center unitsquare shifted (3hshift, -10scale));
	label("O", center unitsquare shifted (3hshift+scale, -10scale));
	label("W", center unitsquare shifted (3hshift+2scale, -10scale));
	label("R", center unitsquare shifted (3hshift, -11scale));
	label("U", center unitsquare shifted (3hshift+scale, -11scale));
	label("G", center unitsquare shifted (3hshift+2scale, -11scale));
	label("S", center unitsquare shifted (3hshift, -12scale));
	label("E", center unitsquare shifted (3hshift+scale, -12scale));
	label("A", center unitsquare shifted (3hshift+2scale, -12scale));
	label("T", center unitsquare shifted (3hshift, -13scale));
	label("A", center unitsquare shifted (3hshift+scale, -13scale));
	label("B", center unitsquare shifted (3hshift+2scale, -13scale));
	label("T", center unitsquare shifted (3hshift, -14scale));
	label("A", center unitsquare shifted (3hshift+scale, -14scale));
	label("R", center unitsquare shifted (3hshift+2scale, -14scale));
	label("T", center unitsquare shifted (3hshift, -15scale));
	label("E", center unitsquare shifted (3hshift+scale, -15scale));
	label("A", center unitsquare shifted (3hshift+2scale, -15scale));

	defaultfont := "cmr10";

	drawarrow (3.5scale, -7.5scale) -- (hshift-1.5scale, -7.5scale);
	drawarrow (hshift+3.5scale, -7.5scale) -- (2hshift-1.5scale, -7.5scale);
	drawarrow (2hshift+3.5scale, -7.5scale) -- (3hshift-1.5scale, -7.5scale);
endfig;

beginfig(3);
	scale := .5cm;
	hshift := 4scale;
	color gray; gray := .8white;
	path p[];
	path r;
	path s;
	
	for i:=0 upto 9:
		p[i] := unitsquare scaled scale shifted (0, -i*scale);
	endfor;

	for i:=0 upto 9:
		fill p[i] xscaled 1.5 withcolor gray;
		draw p[i] xscaled 1.5 ;
		fill p[i] shifted (hshift, 0) withcolor gray;
		draw p[i] shifted (hshift, 0);
		label(decimal (i+1) infont "cmr8", center p[i] + (-scale, 0));
		label(decimal (i) infont "cmr8", center p[i] + (hshift-scale, 0));
	endfor;

	label(btex $A$ etex, center p0 xscaled 1.5 + (0, scale));
	label(btex $B$ etex, center p0 + (hshift, scale));

	label(btex $0{,}79$ etex, center p0 xscaled 1.5);
	label(btex $0{,}13$ etex, center p1 xscaled 1.5);
	label(btex $0{,}16$ etex, center p2 xscaled 1.5);
	label(btex $0{,}64$ etex, center p3 xscaled 1.5);
	label(btex $0{,}39$ etex, center p4 xscaled 1.5);
	label(btex $0{,}20$ etex, center p5 xscaled 1.5);
	label(btex $0{,}89$ etex, center p6 xscaled 1.5);
	label(btex $0{,}53$ etex, center p7 xscaled 1.5);
	label(btex $0{,}71$ etex, center p8 xscaled 1.5);
	label(btex $0{,}42$ etex, center p9 xscaled 1.5);

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (.5scale, -10scale));

	draw (center p0 shifted (hshift-.3scale, -.3scale)) -- (center p0 shifted (hshift+.3scale, .3scale));
	draw (center p9 shifted (hshift-.3scale, -.3scale)) -- (center p9 shifted (hshift+.3scale, .3scale));

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}13$ etex, center r);
	drawarrow center p1 shifted (hshift, 0) -- center p1 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+5.5scale, -scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+7scale, -scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}16$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p1 shifted (hshift+3.5scale, 0) -- center p1 shifted (hshift+5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -2scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -2scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}20$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p2 shifted (hshift, 0) -- center p2 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -3scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -3scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}39$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p3 shifted (hshift, 0) -- center p3 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -4scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -4scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}42$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p4 shifted (hshift, 0) -- center p4 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -5scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -5scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}53$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p5 shifted (hshift, 0) -- center p5 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -6scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -6scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}64$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p6 shifted (hshift, 0) -- center p6 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -7scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -7scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}71$ etex, center r);
	drawarrow center p7 shifted (hshift, 0) -- center p7 shifted (hshift+1.5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+5.5scale, -7scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+7scale, -7scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}79$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p7 shifted (hshift+3.5scale, 0) -- center p7 shifted (hshift+5scale, 0);

	r := unitsquare xscaled 1.5scale yscaled .85scale shifted (hshift+2scale, -8scale+.1scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (hshift+3.5scale, -8scale+.1scale);
	fill r withcolor gray;
	fill s withcolor gray;
	draw r;
	draw s;
	label(btex $0{,}89$ etex, center r);
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	drawarrow center p8 shifted (hshift, 0) -- center p8 shifted (hshift+1.5scale, 0);

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (hshift+3scale, -10scale));
endfig;

end.