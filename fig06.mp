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
	
	p0 = graphnode(scale, (bighshift, bigvshift), if darker=0: medgray else: lightgray fi);
	if lbl=1: label.top(btex $\scriptstyle{1}$ etex, point 2 of p0) fi;
		
	if howmany>1 :
		p1 = graphnode(scale, (bighshift-4hshift, bigvshift-vshift), if darker=1: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{2}$ etex, point 2 of p1) fi;
	fi;
		
	if howmany>2 :
		p2 = graphnode(scale, (bighshift+4hshift, bigvshift-vshift), if darker=2: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{3}$ etex, point 2 of p2) fi;
	fi;
		
	if howmany>3 :
		p3 = graphnode(scale, (bighshift-6hshift, bigvshift-2vshift), if darker=3: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{4}$ etex, point 2 of p3) fi;
	fi;
		
	if howmany>4 :
		p4 = graphnode(scale, (bighshift-2hshift, bigvshift-2vshift), if darker=4: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{5}$ etex, point 2 of p4) fi;
	fi;
		
	if howmany>5 :
		p5 = graphnode(scale, (bighshift+2hshift, bigvshift-2vshift), if darker=5: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{6}$ etex, point 2 of p5) fi;
	fi;
		
	if howmany>6 :
		p6 = graphnode(scale, (bighshift+6hshift, bigvshift-2vshift), if darker=6: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{7}$ etex, point 2 of p6) fi;
	fi;
		
	if howmany>7 :
		p7 = graphnode(scale, (bighshift-7hshift, bigvshift-3vshift), if darker=7: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{8}$ etex, point 2 of p7) fi;
	fi;
	
	if howmany>8 :
		p8 = graphnode(scale, (bighshift-5hshift, bigvshift-3vshift), if darker=8: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{9}$ etex, point 2 of p8) fi;
	fi;

	if howmany>9 :
		p9 = graphnode(scale, (bighshift-3hshift, bigvshift-3vshift), if darker=9: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{10}$ etex, point 2 of p9) fi;
	fi;

	if howmany>10 :
		p10 = graphnode(scale, (bighshift-hshift, bigvshift-3vshift), if darker=10: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{11}$ etex, point 2 of p10) fi;
	fi;

	if howmany>11 :
		p11 = graphnode(scale, (bighshift+hshift, bigvshift-3vshift), if darker=11: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{12}$ etex, point 2 of p11) fi;
	fi;

	if howmany>12 :
		p12 = graphnode(scale, (bighshift+3hshift, bigvshift-3vshift), if darker=12: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{13}$ etex, point 2 of p12) fi;
	fi;

	if howmany>13 :
		p13 = graphnode(scale, (bighshift+5hshift, bigvshift-3vshift), if darker=13: medgray else: lightgray fi);
		if lbl=1: label.top(btex $\scriptstyle{14}$ etex, point 2 of p13) fi;
	fi;

	if howmany>1 : draw point 5 of p0 -- point 1 of p1 fi;
	if howmany>2 : draw point 7 of p0 -- point 3 of p2 fi;
	if howmany>3 : draw point 5.25 of p1 -- point 1.25 of p3 fi;
	if howmany>4 : draw point 6.75 of p1 -- point 2.75 of p4 fi;
	if howmany>5 : draw point 5.25 of p2 -- point 1.25 of p5 fi;
	if howmany>6 : draw point 6.75 of p2 -- point 2.75 of p6 fi;
	if howmany>7 : draw point 5.5 of p3 -- point 1.5 of p7 fi;
	if howmany>8 : draw point 6.5 of p3 -- point 2.5 of p8 fi;
	if howmany>9 : draw point 5.5 of p4 -- point 1.5 of p9 fi;
	if howmany>10 : draw point 6.5 of p4 -- point 2.5 of p10 fi;
	if howmany>11 : draw point 5.5 of p5 -- point 1.5 of p11 fi;
	if howmany>12 : draw point 6.5 of p5 -- point 2.5 of p12 fi;
	if howmany>13 : draw point 5.5 of p6 -- point 1.5 of p13 fi;
enddef;

beginfig(1);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -4.5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 14, 2, 1);

	label(btex 27 etex, (0, 0));
	label(btex 17 etex, (-4hshift, -vshift));
	label(btex 3 etex, (4hshift, -vshift)); label(btex $\scriptstyle{i}$ etex, (3hshift, -vshift));
	label(btex 16 etex, (-6hshift, -2vshift));
	label(btex 13 etex, (-2hshift, -2vshift));
	label(btex 10 etex, (2hshift, -2vshift));
	label(btex 1 etex, (6hshift, -2vshift));
	label(btex 5 etex, (-7hshift, -3vshift));
	label(btex 7 etex, (-5hshift, -3vshift));
	label(btex 12 etex, (-3hshift, -3vshift));
	label(btex 4 etex, (-hshift, -3vshift));
	label(btex 8 etex, (hshift, -3vshift));
	label(btex 9 etex, (3hshift, -3vshift));
	label(btex 0 etex, (5hshift, -3vshift));

	drawemptyheap(bighshift, 0, 14, 5, 1);

	label(btex 27 etex, (bighshift, 0));
	label(btex 17 etex, (bighshift-4hshift, -vshift));
	label(btex 10 etex, (bighshift+4hshift, -vshift));
	label(btex 16 etex, (bighshift-6hshift, -2vshift));
	label(btex 13 etex, (bighshift-2hshift, -2vshift));
	label(btex 3 etex, (bighshift+2hshift, -2vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+hshift, -2vshift));
	label(btex 1 etex, (bighshift+6hshift, -2vshift));
	label(btex 5 etex, (bighshift-7hshift, -3vshift));
	label(btex 7 etex, (bighshift-5hshift, -3vshift));
	label(btex 12 etex, (bighshift-3hshift, -3vshift));
	label(btex 4 etex, (bighshift-hshift, -3vshift));
	label(btex 8 etex, (bighshift+hshift, -3vshift));
	label(btex 9 etex, (bighshift+3hshift, -3vshift));
	label(btex 0 etex, (bighshift+5hshift, -3vshift));

	drawemptyheap(0, bigvshift, 14, 12, 1);

	label(btex 27 etex, (0, bigvshift));
	label(btex 17 etex, (-4hshift, bigvshift-vshift));
	label(btex 10 etex, (4hshift, bigvshift-vshift));
	label(btex 16 etex, (-6hshift, bigvshift-2vshift));
	label(btex 13 etex, (-2hshift, bigvshift-2vshift));
	label(btex 9 etex, (2hshift, bigvshift-2vshift));
	label(btex 1 etex, (6hshift, bigvshift-2vshift));
	label(btex 5 etex, (-7hshift, bigvshift-3vshift));
	label(btex 7 etex, (-5hshift, bigvshift-3vshift));
	label(btex 12 etex, (-3hshift, bigvshift-3vshift));
	label(btex 4 etex, (-hshift, bigvshift-3vshift));
	label(btex 8 etex, (hshift, bigvshift-3vshift));
	label(btex 3 etex, (3hshift, bigvshift-3vshift)); label(btex $\scriptstyle{i}$ etex, (2hshift, bigvshift-3vshift));
	label(btex 0 etex, (5hshift, bigvshift-3vshift));
endfig;

beginfig(2);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -4.5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 9, 3, 1);

	label(btex 5 etex, (0, 0));
	label(btex 3 etex, (-4hshift, -vshift));
	label(btex 17 etex, (4hshift, -vshift));
	label(btex 10 etex, (-6hshift, -2vshift)); label(btex $\scriptstyle{i}$ etex, (-7hshift, -2vshift));
	label(btex 84 etex, (-2hshift, -2vshift));
	label(btex 19 etex, (2hshift, -2vshift));
	label(btex 6 etex, (6hshift, -2vshift));
	label(btex 22 etex, (-7hshift, -3vshift));
	label(btex 9 etex, (-5hshift, -3vshift));

	drawemptyheap(bighshift, 0, 9, 2, 1);

	label(btex 5 etex, (bighshift, 0));
	label(btex 3 etex, (bighshift-4hshift, -vshift));
	label(btex 17 etex, (bighshift+4hshift, -vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+3hshift, -vshift));
	label(btex 22 etex, (bighshift-6hshift, -2vshift));
	label(btex 84 etex, (bighshift-2hshift, -2vshift));
	label(btex 19 etex, (bighshift+2hshift, -2vshift));
	label(btex 6 etex, (bighshift+6hshift, -2vshift));
	label(btex 10 etex, (bighshift-7hshift, -3vshift));
	label(btex 9 etex, (bighshift-5hshift, -3vshift));

	drawemptyheap(0, bigvshift, 9, 1, 1);

	label(btex 5 etex, (0, bigvshift));
	label(btex 3 etex, (-4hshift, bigvshift-vshift)); label(btex $\scriptstyle{i}$ etex, (-5hshift, bigvshift-vshift));
	label(btex 19 etex, (4hshift, bigvshift-vshift));
	label(btex 22 etex, (-6hshift, bigvshift-2vshift));
	label(btex 84 etex, (-2hshift, bigvshift-2vshift));
	label(btex 17 etex, (2hshift, bigvshift-2vshift));
	label(btex 6 etex, (6hshift, bigvshift-2vshift));
	label(btex 10 etex, (-7hshift, bigvshift-3vshift));
	label(btex 9 etex, (-5hshift, bigvshift-3vshift));

	drawemptyheap(bighshift, bigvshift, 9, 0, 1);

	label(btex 5 etex, (bighshift, bigvshift)); label(btex $\scriptstyle{i}$ etex, (bighshift-hshift, bigvshift));
	label(btex 84 etex, (bighshift-4hshift, bigvshift-vshift));
	label(btex 19 etex, (bighshift+4hshift, bigvshift-vshift));
	label(btex 22 etex, (bighshift-6hshift, bigvshift-2vshift));
	label(btex 3 etex, (bighshift-2hshift, bigvshift-2vshift));
	label(btex 17 etex, (bighshift+2hshift, bigvshift-2vshift));
	label(btex 6 etex, (bighshift+6hshift, bigvshift-2vshift));
	label(btex 10 etex, (bighshift-7hshift, bigvshift-3vshift));
	label(btex 9 etex, (bighshift-5hshift, bigvshift-3vshift));

	drawemptyheap(0, 2bigvshift, 9, -1, 1);

	label(btex 84 etex, (0, 2bigvshift));
	label(btex 22 etex, (-4hshift, 2bigvshift-vshift));
	label(btex 19 etex, (4hshift, 2bigvshift-vshift));
	label(btex 10 etex, (-6hshift, 2bigvshift-2vshift));
	label(btex 3 etex, (-2hshift, 2bigvshift-2vshift));
	label(btex 17 etex, (2hshift, 2bigvshift-2vshift));
	label(btex 6 etex, (6hshift, 2bigvshift-2vshift));
	label(btex 5 etex, (-7hshift, 2bigvshift-3vshift));
	label(btex 9 etex, (-5hshift, 2bigvshift-3vshift));
endfig;

beginfig(3);
	scale := .35cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -4.5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path pp;
	
	drawemptyheap(0, 0, 9, -1, 0);
	label(btex $\scriptstyle{25}$ etex, (0, 0));
	label(btex $\scriptstyle{13}$ etex, (-4hshift, -vshift));
	label(btex $\scriptstyle{20}$ etex, (4hshift, -vshift));
	label(btex $\scriptstyle{8}$ etex, (-6hshift, -2vshift));
	label(btex $\scriptstyle{7}$ etex, (-2hshift, -2vshift));
	label(btex $\scriptstyle{17}$ etex, (2hshift, -2vshift));
	label(btex $\scriptstyle{2}$ etex, (6hshift, -2vshift));
	label(btex $\scriptstyle{5}$ etex, (-7hshift, -3vshift));
	label(btex $\scriptstyle{4}$ etex, (-5hshift, -3vshift));

	drawemptyheap(bighshift, 0, 8, -1, 0);
	label(btex $\scriptstyle{20}$ etex, (bighshift, 0));
	label(btex $\scriptstyle{13}$ etex, (bighshift-4hshift, -vshift));
	label(btex $\scriptstyle{17}$ etex, (bighshift+4hshift, -vshift));
	label(btex $\scriptstyle{8}$ etex, (bighshift-6hshift, -2vshift));
	label(btex $\scriptstyle{7}$ etex, (bighshift-2hshift, -2vshift));
	label(btex $\scriptstyle{4}$ etex, (bighshift+2hshift, -2vshift));
	label(btex $\scriptstyle{2}$ etex, (bighshift+6hshift, -2vshift));
	label(btex $\scriptstyle{5}$ etex, (bighshift-7hshift, -3vshift));
	pp := graphnode(scale, (bighshift-5hshift, -3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (bighshift-5hshift, -3vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift-3.8hshift, -3vshift));

	drawemptyheap(2bighshift, 0, 7, -1, 0);
	label(btex $\scriptstyle{17}$ etex, (2bighshift, 0));
	label(btex $\scriptstyle{13}$ etex, (2bighshift-4hshift, -vshift));
	label(btex $\scriptstyle{5}$ etex, (2bighshift+4hshift, -vshift));
	label(btex $\scriptstyle{8}$ etex, (2bighshift-6hshift, -2vshift));
	label(btex $\scriptstyle{7}$ etex, (2bighshift-2hshift, -2vshift));
	label(btex $\scriptstyle{4}$ etex, (2bighshift+2hshift, -2vshift));
	label(btex $\scriptstyle{2}$ etex, (2bighshift+6hshift, -2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, -3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (2bighshift-7hshift, -3vshift)); label(btex $\scriptstyle{i}$ etex, (2bighshift-8.2hshift, -3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, -3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (2bighshift-5hshift, -3vshift));

	drawemptyheap(0, bigvshift, 6, -1, 0);
	label(btex $\scriptstyle{13}$ etex, (0, bigvshift));
	label(btex $\scriptstyle{8}$ etex, (-4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{5}$ etex, (4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{2}$ etex, (-6hshift, bigvshift-2vshift));
	label(btex $\scriptstyle{7}$ etex, (-2hshift, bigvshift-2vshift));
	label(btex $\scriptstyle{4}$ etex, (2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (6hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (6hshift, bigvshift-2vshift)); label(btex $\scriptstyle{i}$ etex, (6hshift-1.2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (-7hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (-5hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (-5hshift, bigvshift-3vshift));

	drawemptyheap(bighshift, bigvshift, 5, -1, 0);
	label(btex $\scriptstyle{8}$ etex, (bighshift, bigvshift));
	label(btex $\scriptstyle{7}$ etex, (bighshift-4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{5}$ etex, (bighshift+4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{2}$ etex, (bighshift-6hshift, bigvshift-2vshift));
	label(btex $\scriptstyle{4}$ etex, (bighshift-2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+2hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{13}$ etex, (bighshift+2hshift, bigvshift-2vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+.8hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+6hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (bighshift+6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-7hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (bighshift-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (bighshift-5hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (bighshift-5hshift, bigvshift-3vshift));

	drawemptyheap(2bighshift, bigvshift, 4, -1, 0);
	label(btex $\scriptstyle{7}$ etex, (2bighshift, bigvshift));
	label(btex $\scriptstyle{4}$ etex, (2bighshift-4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{5}$ etex, (2bighshift+4hshift, bigvshift-vshift));
	label(btex $\scriptstyle{2}$ etex, (2bighshift-6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-2hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{8}$ etex, (2bighshift-2hshift, bigvshift-2vshift)); label(btex $\scriptstyle{i}$ etex, (2bighshift-3.2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+2hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{13}$ etex, (2bighshift+2hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+6hshift, bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (2bighshift+6hshift, bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (2bighshift-7hshift, bigvshift-3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (2bighshift-5hshift, bigvshift-3vshift));

	drawemptyheap(0, 2bigvshift, 3, -1, 0);
	label(btex $\scriptstyle{5}$ etex, (0, 2bigvshift));
	label(btex $\scriptstyle{4}$ etex, (-4hshift, 2bigvshift-vshift));
	label(btex $\scriptstyle{2}$ etex, (4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (-6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{7}$ etex, (-6hshift, 2bigvshift-2vshift)); label(btex $\scriptstyle{i}$ etex, (-6hshift-1.2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (-2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{8}$ etex, (-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{13}$ etex, (2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (-7hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (-5hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (-5hshift, 2bigvshift-3vshift));

	drawemptyheap(bighshift, 2bigvshift, 2, -1, 0);
	label(btex $\scriptstyle{4}$ etex, (bighshift, 2bigvshift));
	label(btex $\scriptstyle{2}$ etex, (bighshift-4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (bighshift+4hshift, 2bigvshift-vshift), medgray);
	label(btex $\scriptstyle{5}$ etex, (bighshift+4hshift, 2bigvshift-vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+2.8hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (bighshift-6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{7}$ etex, (bighshift-6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{8}$ etex, (bighshift-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{13}$ etex, (bighshift+2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift+6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (bighshift+6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (bighshift-7hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (bighshift-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (bighshift-5hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (bighshift-5hshift, 2bigvshift-3vshift));

	drawemptyheap(2bighshift, 2bigvshift, 1, -1, 0);
	label(btex $\scriptstyle{2}$ etex, (2bighshift, 2bigvshift));
	pp := graphnode(scale, (2bighshift-4hshift, 2bigvshift-vshift), medgray);
	label(btex $\scriptstyle{4}$ etex, (2bighshift-4hshift, 2bigvshift-vshift)); label(btex $\scriptstyle{i}$ etex, (2bighshift-5.2hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (2bighshift+4hshift, 2bigvshift-vshift), medgray);
	label(btex $\scriptstyle{5}$ etex, (2bighshift+4hshift, 2bigvshift-vshift));
	pp := graphnode(scale, (2bighshift-6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{7}$ etex, (2bighshift-6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{8}$ etex, (2bighshift-2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+2hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{13}$ etex, (2bighshift+2hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift+6hshift, 2bigvshift-2vshift), medgray);
	label(btex $\scriptstyle{17}$ etex, (2bighshift+6hshift, 2bigvshift-2vshift));
	pp := graphnode(scale, (2bighshift-7hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{20}$ etex, (2bighshift-7hshift, 2bigvshift-3vshift));
	pp := graphnode(scale, (2bighshift-5hshift, 2bigvshift-3vshift), medgray);
	label(btex $\scriptstyle{25}$ etex, (2bighshift-5hshift, 2bigvshift-3vshift));
endfig;

beginfig(4);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 12, -1, 0);

	label(btex 15 etex, (0, 0));
	label(btex 13 etex, (-4hshift, -vshift));
	label(btex 9 etex, (4hshift, -vshift));
	label(btex 5 etex, (-6hshift, -2vshift));
	label(btex 12 etex, (-2hshift, -2vshift));
	label(btex 8 etex, (2hshift, -2vshift));
	label(btex 7 etex, (6hshift, -2vshift));
	label(btex 4 etex, (-7hshift, -3vshift));
	label(btex 0 etex, (-5hshift, -3vshift));
	label(btex 6 etex, (-3hshift, -3vshift));
	label(btex 2 etex, (-hshift, -3vshift));
	label(btex 1 etex, (hshift, -3vshift));

	drawemptyheap(bighshift, 0, 11, -1, 0);

	label(btex 13 etex, (bighshift, 0));
	label(btex 12 etex, (bighshift-4hshift, -vshift));
	label(btex 9 etex, (bighshift+4hshift, -vshift));
	label(btex 5 etex, (bighshift-6hshift, -2vshift));
	label(btex 6 etex, (bighshift-2hshift, -2vshift));
	label(btex 8 etex, (bighshift+2hshift, -2vshift));
	label(btex 7 etex, (bighshift+6hshift, -2vshift));
	label(btex 4 etex, (bighshift-7hshift, -3vshift));
	label(btex 0 etex, (bighshift-5hshift, -3vshift));
	label(btex 1 etex, (bighshift-3hshift, -3vshift));
	label(btex 2 etex, (bighshift-hshift, -3vshift));
endfig;

beginfig(5);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	bighshift := 20hshift;
	bigvshift := -4.5vshift;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	drawemptyheap(0, 0, 13, 12, 0);

	label(btex 15 etex, (0, 0));
	label(btex 13 etex, (-4hshift, -vshift));
	label(btex 9 etex, (4hshift, -vshift));
	label(btex 5 etex, (-6hshift, -2vshift));
	label(btex 12 etex, (-2hshift, -2vshift));
	label(btex 8 etex, (2hshift, -2vshift));
	label(btex 7 etex, (6hshift, -2vshift));
	label(btex 4 etex, (-7hshift, -3vshift));
	label(btex 0 etex, (-5hshift, -3vshift));
	label(btex 6 etex, (-3hshift, -3vshift));
	label(btex 2 etex, (-hshift, -3vshift));
	label(btex 1 etex, (hshift, -3vshift));
	label(btex $\scriptstyle{-\infty}$ etex, (3hshift, -3vshift)); label(btex $\scriptstyle{i}$ etex, (2hshift, -3vshift));

	drawemptyheap(bighshift, 0, 13, 12, 0);

	label(btex 15 etex, (bighshift, 0));
	label(btex 13 etex, (bighshift-4hshift, -vshift));
	label(btex 9 etex, (bighshift+4hshift, -vshift));
	label(btex 5 etex, (bighshift-6hshift, -2vshift));
	label(btex 12 etex, (bighshift-2hshift, -2vshift));
	label(btex 8 etex, (bighshift+2hshift, -2vshift));
	label(btex 7 etex, (bighshift+6hshift, -2vshift));
	label(btex 4 etex, (bighshift-7hshift, -3vshift));
	label(btex 0 etex, (bighshift-5hshift, -3vshift));
	label(btex 6 etex, (bighshift-3hshift, -3vshift));
	label(btex 2 etex, (bighshift-hshift, -3vshift));
	label(btex 1 etex, (bighshift+hshift, -3vshift));
	label(btex 10 etex, (bighshift+3hshift, -3vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+2hshift, -3vshift));

	drawemptyheap(0, bigvshift, 13, 5, 0);

	label(btex 15 etex, (0, bigvshift));
	label(btex 13 etex, (-4hshift, bigvshift-vshift));
	label(btex 9 etex, (4hshift, bigvshift-vshift));
	label(btex 5 etex, (-6hshift, bigvshift-2vshift));
	label(btex 12 etex, (-2hshift, bigvshift-2vshift));
	label(btex 10 etex, (2hshift, bigvshift-2vshift)); label(btex $\scriptstyle{i}$ etex, (hshift, bigvshift-2vshift));
	label(btex 7 etex, (6hshift, bigvshift-2vshift));
	label(btex 4 etex, (-7hshift, bigvshift-3vshift));
	label(btex 0 etex, (-5hshift, bigvshift-3vshift));
	label(btex 6 etex, (-3hshift, bigvshift-3vshift));
	label(btex 2 etex, (-hshift, bigvshift-3vshift));
	label(btex 1 etex, (hshift, bigvshift-3vshift));
	label(btex 8 etex, (3hshift, bigvshift-3vshift));

	drawemptyheap(bighshift, bigvshift, 13, 2, 0);

	label(btex 15 etex, (bighshift, bigvshift));
	label(btex 13 etex, (bighshift-4hshift, bigvshift-vshift));
	label(btex 10 etex, (bighshift+4hshift, bigvshift-vshift)); label(btex $\scriptstyle{i}$ etex, (bighshift+3hshift, bigvshift-vshift));
	label(btex 5 etex, (bighshift-6hshift, bigvshift-2vshift));
	label(btex 12 etex, (bighshift-2hshift, bigvshift-2vshift));
	label(btex 9 etex, (bighshift+2hshift, bigvshift-2vshift));
	label(btex 7 etex, (bighshift+6hshift, bigvshift-2vshift));
	label(btex 4 etex, (bighshift-7hshift, bigvshift-3vshift));
	label(btex 0 etex, (bighshift-5hshift, bigvshift-3vshift));
	label(btex 6 etex, (bighshift-3hshift, bigvshift-3vshift));
	label(btex 2 etex, (bighshift-hshift, bigvshift-3vshift));
	label(btex 1 etex, (bighshift+hshift, bigvshift-3vshift));
	label(btex 8 etex, (bighshift+3hshift, bigvshift-3vshift));
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

	label(btex 3 etex, (0, 0));
	label(btex 2 etex, (-2hshift, -vshift));
	label(btex 1 etex, (2hshift, -vshift));

	p3 = graphnode(scale, (bighshift, 0), gray);
	p4 = graphnode(scale, (bighshift-2hshift, -vshift), gray);
	p5 = graphnode(scale, (bighshift+2hshift, -vshift), gray);

	draw point 5.25 of p3 -- point 1.25 of p4;
	draw point 6.75 of p3 -- point 2.75 of p5;

	label(btex 3 etex, (bighshift, 0));
	label(btex 1 etex, (bighshift-2hshift, -vshift));
	label(btex 2 etex, (bighshift+2hshift, -vshift));
endfig;

end.
