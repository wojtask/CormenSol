verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

vardef graphnode(expr scale, shift, col) =
	path pnd;
	pnd = fullcircle scaled scale shifted shift;
	fill pnd withcolor col;
	draw pnd;
	pnd
enddef;

vardef drawemptyheap(expr bighshift, bigvshift, howmany, darker, lbl) =
	path p[];
	
	defaultfont := "cmr8";
	p0 = graphnode(scale, (bighshift, bigvshift), if darker=0: medgray else: lightgray fi);
	if lbl=1: label.top("1", point 2 of p0) fi;
		
	if howmany>1 :
		p1 = graphnode(scale, (bighshift-4hshift, bigvshift-vshift), if darker=1: medgray else: lightgray fi);
		if lbl=1: label.top("2", point 2 of p1) fi;
	fi;
		
	if howmany>2 :
		p2 = graphnode(scale, (bighshift+4hshift, bigvshift-vshift), if darker=2: medgray else: lightgray fi);
		if lbl=1: label.top("3", point 2 of p2) fi;
	fi;
		
	if howmany>3 :
		p3 = graphnode(scale, (bighshift-6hshift, bigvshift-2vshift), if darker=3: medgray else: lightgray fi);
		if lbl=1: label.top("4", point 2 of p3) fi;
	fi;
		
	if howmany>4 :
		p4 = graphnode(scale, (bighshift-2hshift, bigvshift-2vshift), if darker=4: medgray else: lightgray fi);
		if lbl=1: label.top("5", point 2 of p4) fi;
	fi;
		
	if howmany>5 :
		p5 = graphnode(scale, (bighshift+2hshift, bigvshift-2vshift), if darker=5: medgray else: lightgray fi);
		if lbl=1: label.top("6", point 2 of p5) fi;
	fi;
		
	if howmany>6 :
		p6 = graphnode(scale, (bighshift+6hshift, bigvshift-2vshift), if darker=6: medgray else: lightgray fi);
		if lbl=1: label.top("7", point 2 of p6) fi;
	fi;
		
	if howmany>7 :
		p7 = graphnode(scale, (bighshift-7hshift, bigvshift-3vshift), if darker=7: medgray else: lightgray fi);
		if lbl=1: label.top("8", point 2 of p7) fi;
	fi;
	
	if howmany>8 :
		p8 = graphnode(scale, (bighshift-5hshift, bigvshift-3vshift), if darker=8: medgray else: lightgray fi);
		if lbl=1: label.top("9", point 2 of p8) fi;
	fi;

	if howmany>9 :
		p9 = graphnode(scale, (bighshift-3hshift, bigvshift-3vshift), if darker=9: medgray else: lightgray fi);
		if lbl=1: label.top("10", point 2 of p9) fi;
	fi;

	if howmany>10 :
		p10 = graphnode(scale, (bighshift-hshift, bigvshift-3vshift), if darker=10: medgray else: lightgray fi);
		if lbl=1: label.top("11", point 2 of p10) fi;
	fi;

	if howmany>11 :
		p11 = graphnode(scale, (bighshift+hshift, bigvshift-3vshift), if darker=11: medgray else: lightgray fi);
		if lbl=1: label.top("12", point 2 of p11) fi;
	fi;

	if howmany>12 :
		p12 = graphnode(scale, (bighshift+3hshift, bigvshift-3vshift), if darker=12: medgray else: lightgray fi);
		if lbl=1: label.top("13", point 2 of p12) fi;
	fi;

	if howmany>13 :
		p13 = graphnode(scale, (bighshift+5hshift, bigvshift-3vshift), if darker=13: medgray else: lightgray fi);
		if lbl=1: label.top("14", point 2 of p13) fi;
	fi;

	if howmany>1 : draw point 4.75 of p0 -- point .75 of p1 fi;
	if howmany>2 : draw point 7.25 of p0 -- point 3.25 of p2 fi;
	if howmany>3 : draw point 5.25 of p1 -- point 1.25 of p3 fi;
	if howmany>4 : draw point 6.75 of p1 -- point 2.75 of p4 fi;
	if howmany>5 : draw point 5.25 of p2 -- point 1.25 of p5 fi;
	if howmany>6 : draw point 6.75 of p2 -- point 2.75 of p6 fi;
	if howmany>7 : draw point 5.55 of p3 -- point 1.55 of p7 fi;
	if howmany>8 : draw point 6.45 of p3 -- point 2.45 of p8 fi;
	if howmany>9 : draw point 5.55 of p4 -- point 1.55 of p9 fi;
	if howmany>10 : draw point 6.45 of p4 -- point 2.45 of p10 fi;
	if howmany>11 : draw point 5.55 of p5 -- point 1.55 of p11 fi;
	if howmany>12 : draw point 6.45 of p5 -- point 2.45 of p12 fi;
	if howmany>13 : draw point 5.55 of p6 -- point 1.55 of p13 fi;
	
	defaultfont := "cmr10";
enddef;

beginfig(1);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 14, 2, 1);

	label("27", (0, 0));
	label("17", (-4hshift, -vshift));
	label("3", (4hshift, -vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (3hshift, -vshift));
	label("16", (-6hshift, -2vshift));
	label("13", (-2hshift, -2vshift));
	label("10", (2hshift, -2vshift));
	label("1", (6hshift, -2vshift));
	label("5", (-7hshift, -3vshift));
	label("7", (-5hshift, -3vshift));
	label("12", (-3hshift, -3vshift));
	label("4", (-hshift, -3vshift));
	label("8", (hshift, -3vshift));
	label("9", (3hshift, -3vshift));
	label("0", (5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -3.75vshift));

	drawemptyheap(bighshift, 0, 14, 5, 1);

	label("27", (bighshift, 0));
	label("17", (bighshift-4hshift, -vshift));
	label("10", (bighshift+4hshift, -vshift));
	label("16", (bighshift-6hshift, -2vshift));
	label("13", (bighshift-2hshift, -2vshift));
	label("3", (bighshift+2hshift, -2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+hshift, -2vshift));
	label("1", (bighshift+6hshift, -2vshift));
	label("5", (bighshift-7hshift, -3vshift));
	label("7", (bighshift-5hshift, -3vshift));
	label("12", (bighshift-3hshift, -3vshift));
	label("4", (bighshift-hshift, -3vshift));
	label("8", (bighshift+hshift, -3vshift));
	label("9", (bighshift+3hshift, -3vshift));
	label("0", (bighshift+5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -3.75vshift));

	drawemptyheap(0, bigvshift, 14, 12, 1);

	label("27", (0, bigvshift));
	label("17", (-4hshift, bigvshift-vshift));
	label("10", (4hshift, bigvshift-vshift));
	label("16", (-6hshift, bigvshift-2vshift));
	label("13", (-2hshift, bigvshift-2vshift));
	label("9", (2hshift, bigvshift-2vshift));
	label("1", (6hshift, bigvshift-2vshift));
	label("5", (-7hshift, bigvshift-3vshift));
	label("7", (-5hshift, bigvshift-3vshift));
	label("12", (-3hshift, bigvshift-3vshift));
	label("4", (-hshift, bigvshift-3vshift));
	label("8", (hshift, bigvshift-3vshift));
	label("3", (3hshift, bigvshift-3vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (2hshift, bigvshift-3vshift));
	label("0", (5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (0, bigvshift-3.75vshift));
endfig;

beginfig(2);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -4.7vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 8:
		p[i] := unitsquare scaled scale shifted ((i-4.5)*scale, vshift);
		fill p[i] withcolor lightgray;
		draw p[i];
	endfor;
	
	label(btex $A$ etex, center p0 + (-1.2scale, 0));
	label("5", center p0);
	label("3", center p1);
	label("17", center p2);
	label("10", center p3);
	label("84", center p4);
	label("19", center p5);
	label("6", center p6);
	label("22", center p7);
	label("9", center p8);

	drawemptyheap(0, 0, 9, 3, 1);

	label("5", (0, 0));
	label("3", (-4hshift, -vshift));
	label("17", (4hshift, -vshift));
	label("10", (-6hshift, -2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (-7hshift, -2vshift));
	label("84", (-2hshift, -2vshift));
	label("19", (2hshift, -2vshift));
	label("6", (6hshift, -2vshift));
	label("22", (-7hshift, -3vshift));
	label("9", (-5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -3.5vshift));

	drawemptyheap(bighshift, 0, 9, 2, 1);

	label("5", (bighshift, 0));
	label("3", (bighshift-4hshift, -vshift));
	label("17", (bighshift+4hshift, -vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+3hshift, -vshift));
	label("22", (bighshift-6hshift, -2vshift));
	label("84", (bighshift-2hshift, -2vshift));
	label("19", (bighshift+2hshift, -2vshift));
	label("6", (bighshift+6hshift, -2vshift));
	label("10", (bighshift-7hshift, -3vshift));
	label("9", (bighshift-5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -3.5vshift));

	drawemptyheap(0, bigvshift, 9, 1, 1);

	label("5", (0, bigvshift));
	label("3", (-4hshift, bigvshift-vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (-5hshift, bigvshift-vshift));
	label("19", (4hshift, bigvshift-vshift));
	label("22", (-6hshift, bigvshift-2vshift));
	label("84", (-2hshift, bigvshift-2vshift));
	label("17", (2hshift, bigvshift-2vshift));
	label("6", (6hshift, bigvshift-2vshift));
	label("10", (-7hshift, bigvshift-3vshift));
	label("9", (-5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (0, bigvshift-3.5vshift));

	drawemptyheap(bighshift, bigvshift, 9, 0, 1);

	label("5", (bighshift, bigvshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift-hshift, bigvshift));
	label("84", (bighshift-4hshift, bigvshift-vshift));
	label("19", (bighshift+4hshift, bigvshift-vshift));
	label("22", (bighshift-6hshift, bigvshift-2vshift));
	label("3", (bighshift-2hshift, bigvshift-2vshift));
	label("17", (bighshift+2hshift, bigvshift-2vshift));
	label("6", (bighshift+6hshift, bigvshift-2vshift));
	label("10", (bighshift-7hshift, bigvshift-3vshift));
	label("9", (bighshift-5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, (bighshift, bigvshift-3.5vshift));

	drawemptyheap(0, 2bigvshift, 9, -1, 1);

	label("84", (0, 2bigvshift));
	label("22", (-4hshift, 2bigvshift-vshift));
	label("19", (4hshift, 2bigvshift-vshift));
	label("10", (-6hshift, 2bigvshift-2vshift));
	label("3", (-2hshift, 2bigvshift-2vshift));
	label("17", (2hshift, 2bigvshift-2vshift));
	label("6", (6hshift, 2bigvshift-2vshift));
	label("5", (-7hshift, 2bigvshift-3vshift));
	label("9", (-5hshift, 2bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (e)} etex, (0, 2bigvshift-3.5vshift));
endfig;

beginfig(3);
	scale := .35cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path pp;
	
	drawemptyheap(0, 0, 9, -1, 0);
	defaultfont := "cmr8";
	label("25", (0, 0));
	label("13", (-4hshift, -vshift));
	label("20", (4hshift, -vshift));
	label("8", (-6hshift, -2vshift));
	label("7", (-2hshift, -2vshift));
	label("17", (2hshift, -2vshift));
	label("2", (6hshift, -2vshift));
	label("5", (-7hshift, -3vshift));
	label("4", (-5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -3.75vshift));

	drawemptyheap(bighshift, 0, 8, -1, 0);
	defaultfont := "cmr8";
	label("20", (bighshift, 0));
	label("13", (bighshift-4hshift, -vshift));
	label("17", (bighshift+4hshift, -vshift));
	label("8", (bighshift-6hshift, -2vshift));
	label("7", (bighshift-2hshift, -2vshift));
	label("4", (bighshift+2hshift, -2vshift));
	label("2", (bighshift+6hshift, -2vshift));
	label("5", (bighshift-7hshift, -3vshift));
	pp := graphnode(scale, (bighshift-5hshift, -3vshift), medgray);
	label("25", (bighshift-5hshift, -3vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift-3.8hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -3.75vshift));

	drawemptyheap(2bighshift, 0, 7, -1, 0);
	defaultfont := "cmr8";
	label("17", (2bighshift, 0));
	label("13", (2bighshift-4hshift, -vshift));
	label("5", (2bighshift+4hshift, -vshift));
	label("8", (2bighshift-6hshift, -2vshift));
	label("7", (2bighshift-2hshift, -2vshift));
	label("4", (2bighshift+2hshift, -2vshift));
	label("2", (2bighshift+6hshift, -2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, -3vshift), medgray);
	label("20", (2bighshift-7hshift, -3vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (2bighshift-8.2hshift, -3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, -3vshift), medgray);
	label("25", (2bighshift-5hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (2bighshift, -3.75vshift));

	drawemptyheap(0, bigvshift, 6, -1, 0);
	defaultfont := "cmr8";
	label("13", (0, bigvshift));
	label("8", (-4hshift, bigvshift-vshift));
	label("5", (4hshift, bigvshift-vshift));
	label("2", (-6hshift, bigvshift-2vshift));
	label("7", (-2hshift, bigvshift-2vshift));
	label("4", (2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (6hshift, bigvshift-2vshift), medgray);
	label("17", (6hshift, bigvshift-2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (6hshift-1.2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (-7hshift, bigvshift-3vshift), medgray);
	label("20", (-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (-5hshift, bigvshift-3vshift), medgray);
	label("25", (-5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, (0, bigvshift-3.75vshift));

	drawemptyheap(bighshift, bigvshift, 5, -1, 0);
	defaultfont := "cmr8";
	label("8", (bighshift, bigvshift));
	label("7", (bighshift-4hshift, bigvshift-vshift));
	label("5", (bighshift+4hshift, bigvshift-vshift));
	label("2", (bighshift-6hshift, bigvshift-2vshift));
	label("4", (bighshift-2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+2hshift, bigvshift-2vshift), medgray);
	label("13", (bighshift+2hshift, bigvshift-2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+.8hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+6hshift, bigvshift-2vshift), medgray);
	label("17", (bighshift+6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-7hshift, bigvshift-3vshift), medgray);
	label("20", (bighshift-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (bighshift-5hshift, bigvshift-3vshift), medgray);
	label("25", (bighshift-5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (e)} etex, (bighshift, bigvshift-3.75vshift));

	drawemptyheap(2bighshift, bigvshift, 4, -1, 0);
	defaultfont := "cmr8";
	label("7", (2bighshift, bigvshift));
	label("4", (2bighshift-4hshift, bigvshift-vshift));
	label("5", (2bighshift+4hshift, bigvshift-vshift));
	label("2", (2bighshift-6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-2hshift, bigvshift-2vshift), medgray);
	label("8", (2bighshift-2hshift, bigvshift-2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (2bighshift-3.2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+2hshift, bigvshift-2vshift), medgray);
	label("13", (2bighshift+2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+6hshift, bigvshift-2vshift), medgray);
	label("17", (2bighshift+6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, bigvshift-3vshift), medgray);
	label("20", (2bighshift-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, bigvshift-3vshift), medgray);
	label("25", (2bighshift-5hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (f)} etex, (2bighshift, bigvshift-3.75vshift));

	drawemptyheap(0, 2bigvshift, 3, -1, 0);
	defaultfont := "cmr8";
	label("5", (0, 2bigvshift));
	label("4", (-4hshift, 2bigvshift-vshift));
	label("2", (4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (-6hshift, 2bigvshift-2vshift), medgray);
	label("7", (-6hshift, 2bigvshift-2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (-6hshift-1.2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (-2hshift, 2bigvshift-2vshift), medgray);
	label("8", (-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2hshift, 2bigvshift-2vshift), medgray);
	label("13", (2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (6hshift, 2bigvshift-2vshift), medgray);
	label("17", (6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (-7hshift, 2bigvshift-3vshift), medgray);
	label("20", (-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (-5hshift, 2bigvshift-3vshift), medgray);
	label("25", (-5hshift, 2bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (g)} etex, (0, 2bigvshift-3.75vshift));

	drawemptyheap(bighshift, 2bigvshift, 2, -1, 0);
	defaultfont := "cmr8";
	label("4", (bighshift, 2bigvshift));
	label("2", (bighshift-4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (bighshift+4hshift, 2bigvshift-vshift), medgray);
	label("5", (bighshift+4hshift, 2bigvshift-vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+2.8hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (bighshift-6hshift, 2bigvshift-2vshift), medgray);
	label("7", (bighshift-6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-2hshift, 2bigvshift-2vshift), medgray);
	label("8", (bighshift-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+2hshift, 2bigvshift-2vshift), medgray);
	label("13", (bighshift+2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+6hshift, 2bigvshift-2vshift), medgray);
	label("17", (bighshift+6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-7hshift, 2bigvshift-3vshift), medgray);
	label("20", (bighshift-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (bighshift-5hshift, 2bigvshift-3vshift), medgray);
	label("25", (bighshift-5hshift, 2bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (h)} etex, (bighshift, 2bigvshift-3.75vshift));

	drawemptyheap(2bighshift, 2bigvshift, 1, -1, 0);
	defaultfont := "cmr8";
	label("2", (2bighshift, 2bigvshift));
	pp := graphnode(scale, (2bighshift-4hshift, 2bigvshift-vshift), medgray);
	label("4", (2bighshift-4hshift, 2bigvshift-vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (2bighshift-5.2hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (2bighshift+4hshift, 2bigvshift-vshift), medgray);
	label("5", (2bighshift+4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (2bighshift-6hshift, 2bigvshift-2vshift), medgray);
	label("7", (2bighshift-6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-2hshift, 2bigvshift-2vshift), medgray);
	label("8", (2bighshift-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+2hshift, 2bigvshift-2vshift), medgray);
	label("13", (2bighshift+2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+6hshift, 2bigvshift-2vshift), medgray);
	label("17", (2bighshift+6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, 2bigvshift-3vshift), medgray);
	label("20", (2bighshift-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, 2bigvshift-3vshift), medgray);
	label("25", (2bighshift-5hshift, 2bigvshift-3vshift));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (i)} etex, (2bighshift, 2bigvshift-3.75vshift));

	scale := .5cm;
	defaultfont := "cmr10";
	path p[];
	
	for i:=0 upto 8:
		p[i] := unitsquare scaled scale shifted ((i-4.5)*scale, 3bigvshift-.75vshift);
		fill p[i] withcolor lightgray;
		draw p[i];
	endfor;

	label(btex $A$ etex, center p0 + (-1.2scale, 0));
	label("2", center p0);
	label("4", center p1);
	label("5", center p2);
	label("7", center p3);
	label("8", center p4);
	label("13", center p5);
	label("17", center p6);
	label("20", center p7);
	label("25", center p8);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (j)} etex, (0, 3bigvshift-1.75vshift));
endfig;

beginfig(4);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 12, -1, 0);

	label("15", (0, 0));
	label("13", (-4hshift, -vshift));
	label("9", (4hshift, -vshift));
	label("5", (-6hshift, -2vshift));
	label("12", (-2hshift, -2vshift));
	label("8", (2hshift, -2vshift));
	label("7", (6hshift, -2vshift));
	label("4", (-7hshift, -3vshift));
	label("0", (-5hshift, -3vshift));
	label("6", (-3hshift, -3vshift));
	label("2", (-hshift, -3vshift));
	label("1", (hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -3.75vshift));

	drawemptyheap(bighshift, 0, 11, -1, 0);

	label("13", (bighshift, 0));
	label("12", (bighshift-4hshift, -vshift));
	label("9", (bighshift+4hshift, -vshift));
	label("5", (bighshift-6hshift, -2vshift));
	label("6", (bighshift-2hshift, -2vshift));
	label("8", (bighshift+2hshift, -2vshift));
	label("7", (bighshift+6hshift, -2vshift));
	label("4", (bighshift-7hshift, -3vshift));
	label("0", (bighshift-5hshift, -3vshift));
	label("1", (bighshift-3hshift, -3vshift));
	label("2", (bighshift-hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -3.75vshift));
endfig;

beginfig(5);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 13, 12, 0);

	label("15", (0, 0));
	label("13", (-4hshift, -vshift));
	label("9", (4hshift, -vshift));
	label("5", (-6hshift, -2vshift));
	label("12", (-2hshift, -2vshift));
	label("8", (2hshift, -2vshift));
	label("7", (6hshift, -2vshift));
	label("4", (-7hshift, -3vshift));
	label("0", (-5hshift, -3vshift));
	label("6", (-3hshift, -3vshift));
	label("2", (-hshift, -3vshift));
	label("1", (hshift, -3vshift));
	label(btex \fontsize{7}{9}\selectfont $-\infty$ etex, (3hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -3.75vshift));

	drawemptyheap(bighshift, 0, 13, 12, 0);

	label("15", (bighshift, 0));
	label("13", (bighshift-4hshift, -vshift));
	label("9", (bighshift+4hshift, -vshift));
	label("5", (bighshift-6hshift, -2vshift));
	label("12", (bighshift-2hshift, -2vshift));
	label("8", (bighshift+2hshift, -2vshift));
	label("7", (bighshift+6hshift, -2vshift));
	label("4", (bighshift-7hshift, -3vshift));
	label("0", (bighshift-5hshift, -3vshift));
	label("6", (bighshift-3hshift, -3vshift));
	label("2", (bighshift-hshift, -3vshift));
	label("1", (bighshift+hshift, -3vshift));
	label(btex 10 etex, (bighshift+3hshift, -3vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+2hshift, -3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -3.75vshift));

	drawemptyheap(0, bigvshift, 13, 5, 0);

	label("15", (0, bigvshift));
	label("13", (-4hshift, bigvshift-vshift));
	label("9", (4hshift, bigvshift-vshift));
	label("5", (-6hshift, bigvshift-2vshift));
	label("12", (-2hshift, bigvshift-2vshift));
	label("10", (2hshift, bigvshift-2vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (hshift, bigvshift-2vshift));
	label("7", (6hshift, bigvshift-2vshift));
	label("4", (-7hshift, bigvshift-3vshift));
	label("0", (-5hshift, bigvshift-3vshift));
	label("6", (-3hshift, bigvshift-3vshift));
	label("2", (-hshift, bigvshift-3vshift));
	label("1", (hshift, bigvshift-3vshift));
	label("8", (3hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (0, bigvshift-3.75vshift));

	drawemptyheap(bighshift, bigvshift, 13, 2, 0);

	label("15", (bighshift, bigvshift));
	label("13", (bighshift-4hshift, bigvshift-vshift));
	label("10", (bighshift+4hshift, bigvshift-vshift)); label(btex \fontsize{8}{10}\selectfont $i$ etex, (bighshift+3hshift, bigvshift-vshift));
	label("5", (bighshift-6hshift, bigvshift-2vshift));
	label("12", (bighshift-2hshift, bigvshift-2vshift));
	label("9", (bighshift+2hshift, bigvshift-2vshift));
	label("7", (bighshift+6hshift, bigvshift-2vshift));
	label("4", (bighshift-7hshift, bigvshift-3vshift));
	label("0", (bighshift-5hshift, bigvshift-3vshift));
	label("6", (bighshift-3hshift, bigvshift-3vshift));
	label("2", (bighshift-hshift, bigvshift-3vshift));
	label("1", (bighshift+hshift, bigvshift-3vshift));
	label("8", (bighshift+3hshift, bigvshift-3vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, (bighshift, bigvshift-3.75vshift));
endfig;

beginfig(6);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 15hshift;
	color gray; gray := .8white;
	path p[];

	p0 = graphnode(scale, (0, 0), gray);
	p1 = graphnode(scale, (-2hshift, -vshift), gray);
	p2 = graphnode(scale, (+2hshift, -vshift), gray);

	draw point 5.25 of p0 -- point 1.25 of p1;
	draw point 6.75 of p0 -- point 2.75 of p2;

	label("3", (0, 0));
	label("2", (-2hshift, -vshift));
	label("1", (2hshift, -vshift));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (0, -1.75vshift));

	p3 = graphnode(scale, (bighshift, 0), gray);
	p4 = graphnode(scale, (bighshift-2hshift, -vshift), gray);
	p5 = graphnode(scale, (bighshift+2hshift, -vshift), gray);

	draw point 5.25 of p3 -- point 1.25 of p4;
	draw point 6.75 of p3 -- point 2.75 of p5;

	label("3", (bighshift, 0));
	label("1", (bighshift-2hshift, -vshift));
	label("2", (bighshift+2hshift, -vshift));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (bighshift, -1.75vshift));
endfig;

end.
