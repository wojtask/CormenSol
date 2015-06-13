verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\usepackage{clrscode}
\begin{document}
etex

prologues := 2;

beginfig(1);
	scale := .4cm;
	hshift := 9scale;
	vshift := 7.5scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 5:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (0, scale));
		fill p[j] withcolor medgray;
		draw p[j];
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (hshift, scale));
		fill p[j] shifted (hshift, 0) withcolor if j>=1: medgray else: lightgray fi;
		draw p[j] shifted (hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (2hshift, scale));
		fill p[j] shifted (2hshift, 0) withcolor if j>=2: medgray else: lightgray fi;
		draw p[j] shifted (2hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (3hshift, scale));
		fill p[j] shifted (3hshift, 0) withcolor if j>=3: medgray else: lightgray fi;
		draw p[j] shifted (3hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (0, -vshift + scale));
		fill p[j] shifted (0, -vshift) withcolor if j>=2: medgray else: lightgray fi;
		draw p[j] shifted (0, -vshift);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (hshift, -vshift + scale));
		fill p[j] shifted (hshift, -vshift) withcolor if j>=3: medgray else: lightgray fi;
		draw p[j] shifted (hshift, -vshift);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (2hshift, -vshift + scale));
		fill p[j] shifted (2hshift, -vshift) withcolor if j>=2: medgray else: lightgray fi;
		draw p[j] shifted (2hshift, -vshift);
	endfor;

	label(btex $S$ etex, center p0 + (-1.2scale, 0));
	label(btex $S$ etex, center p0 + (-1.2scale + hshift, 0));
	label(btex $S$ etex, center p0 + (-1.2scale + 2hshift, 0));
	label(btex $S$ etex, center p0 + (-1.2scale + 3hshift, 0));
	label(btex $S$ etex, center p0 + (-1.2scale, -vshift));
	label(btex $S$ etex, center p0 + (-1.2scale + hshift, -vshift));
	label(btex $S$ etex, center p0 + (-1.2scale + 2hshift, -vshift));

	label("4", center p0 + (hshift, 0));
	label("4", center p0 + (2hshift, 0));
	label("4", center p0 + (3hshift, 0));
	label("4", center p0 + (0, -vshift));
	label("4", center p0 + (hshift, -vshift));
	label("4", center p0 + (2hshift, -vshift));

	label("1", center p1 + (2hshift, 0));
	label("1", center p1 + (3hshift, 0));
	label("1", center p1 + (0, -vshift));
	label("1", center p1 + (hshift, -vshift));
	label("1", center p1 + (2hshift, -vshift));

	label("3", center p2 + (3hshift, 0));
	label("3", center p2 + (0, -vshift));

	label("8", center p2 + (hshift, -vshift));
	label("8", center p2 + (2hshift, -vshift));

	drawarrow center p0 shifted (-scale, -2.5scale) -- center p0 shifted (-scale, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=0$ etex, center p0 + (-scale, -3scale));
	drawarrow center p0 shifted (hshift, -2.5scale) -- center p0 shifted (hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=1$ etex, center p0 + (hshift, -3scale));
	drawarrow center p1 shifted (2hshift, -2.5scale) -- center p1 shifted (2hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=2$ etex, center p1 + (2hshift, -3scale));
	drawarrow center p2 shifted (3hshift, -2.5scale) -- center p2 shifted (3hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=3$ etex, center p2 + (3hshift, -3scale));
	drawarrow center p1 shifted (0, -vshift - 2.5scale) -- center p1 shifted (0, -vshift-.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=2$ etex, center p1 + (0, -vshift-3scale));
	drawarrow center p2 shifted (hshift, -vshift - 2.5scale) -- center p2 shifted (hshift, -vshift-.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=3$ etex, center p2 + (hshift, -vshift-3scale));
	drawarrow center p1 shifted (2hshift, -vshift - 2.5scale) -- center p1 shifted (2hshift, -vshift-.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{top}[S]=2$ etex, center p1 + (2hshift, -vshift-3scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (2hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, (3hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (e)} etex, (2.4scale, -vshift-4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (f)} etex, (hshift+2.4scale, -vshift-4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (g)} etex, (2hshift+2.4scale, -vshift-4scale));
endfig;

beginfig(2);
	scale := .4cm;
	hshift := 9scale;
	vshift := 7.5scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 5:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (0, scale));
		fill p[j] withcolor medgray;
		draw p[j];
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (hshift, scale));
		fill p[j] shifted (hshift, 0) withcolor if j>=1: medgray else: lightgray fi;
		draw p[j] shifted (hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (2hshift, scale));
		fill p[j] shifted (2hshift, 0) withcolor if j>=2: medgray else: lightgray fi;
		draw p[j] shifted (2hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (3hshift, scale));
		fill p[j] shifted (3hshift, 0) withcolor if j>=3: medgray else: lightgray fi;
		draw p[j] shifted (3hshift, 0);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (0, -vshift + scale));
		fill p[j] shifted (0, -vshift) withcolor if (j>=3) or (j<=0): medgray else: lightgray fi;
		draw p[j] shifted (0, -vshift);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (hshift, -vshift + scale));
		fill p[j] shifted (hshift, -vshift) withcolor if (j>=4) or (j<=0): medgray else: lightgray fi;
		draw p[j] shifted (hshift, -vshift);
	endfor;

	for j:=0 upto 5:
		label(decimal (j+1) infont "cmr7", center p[j] + (2hshift, -vshift + scale));
		fill p[j] shifted (2hshift, -vshift) withcolor if (j>=4) or (j<=1): medgray else: lightgray fi;
		draw p[j] shifted (2hshift, -vshift);
	endfor;

	label(btex $Q$ etex, center p0 + (-1.2scale, 0));
	label(btex $Q$ etex, center p0 + (-1.2scale + hshift, 0));
	label(btex $Q$ etex, center p0 + (-1.2scale + 2hshift, 0));
	label(btex $Q$ etex, center p0 + (-1.2scale + 3hshift, 0));
	label(btex $Q$ etex, center p0 + (-1.2scale, -vshift));
	label(btex $Q$ etex, center p0 + (-1.2scale + hshift, -vshift));
	label(btex $Q$ etex, center p0 + (-1.2scale + 2hshift, -vshift));

	label("4", center p0 + (hshift, 0));
	label("4", center p0 + (2hshift, 0));
	label("4", center p0 + (3hshift, 0));
	label("4", center p0 + (0, -vshift));
	label("4", center p0 + (hshift, -vshift));
	label("4", center p0 + (2hshift, -vshift));

	label("1", center p1 + (2hshift, 0));
	label("1", center p1 + (3hshift, 0));
	label("1", center p1 + (0, -vshift));
	label("1", center p1 + (hshift, -vshift));
	label("1", center p1 + (2hshift, -vshift));

	label("3", center p2 + (3hshift, 0));
	label("3", center p2 + (0, -vshift));
	label("3", center p2 + (hshift, -vshift));
	label("3", center p2 + (2hshift, -vshift));

	label("8", center p3 + (hshift, -vshift));
	label("8", center p3 + (2hshift, -vshift));

	drawarrow center p0 shifted (-.25scale, -2.5scale) -- center p0 shifted (-.25scale, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=1$ etex, center p0 + (0, -3scale));
	drawarrow center p0 shifted (.25scale, -1.5scale) -- center p0 shifted (.25scale, -.7scale);
	label.rt(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=1$ etex, center p0 + (-.3scale, -2scale));

	drawarrow center p0 shifted (hshift, -2.5scale) -- center p0 shifted (hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=1$ etex, center p0 + (hshift, -3scale));
	drawarrow center p1 shifted (hshift, -1.5scale) -- center p1 shifted (hshift, -.7scale);
	label.rt(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=2$ etex, center p0 + (hshift - .05scale, -2scale));

	drawarrow center p0 shifted (2hshift, -2.5scale) -- center p0 shifted (2hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=1$ etex, center p0 + (2hshift, -3scale));
	drawarrow center p2 shifted (2hshift, -1.5scale) -- center p2 shifted (2hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=3$ etex, center p2 + (2hshift, -2scale));

	drawarrow center p0 shifted (3hshift, -2.5scale) -- center p0 shifted (3hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=1$ etex, center p0 + (3hshift, -3scale));
	drawarrow center p3 shifted (3hshift, -1.5scale) -- center p3 shifted (3hshift, -.7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=4$ etex, center p3 + (3hshift, -2scale));

	drawarrow center p1 shifted (0, -vshift - 2.5scale) -- center p1 shifted (0, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=2$ etex, center p1 + (0, -vshift - 3scale));
	drawarrow center p3 shifted (0, -vshift - 1.5scale) -- center p3 shifted (0, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=4$ etex, center p3 + (0, -vshift - 2scale));

	drawarrow center p1 shifted (hshift, -vshift - 2.5scale) -- center p1 shifted (hshift, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=2$ etex, center p1 + (hshift, -vshift - 3scale));
	drawarrow center p4 shifted (hshift, -vshift - 1.5scale) -- center p4 shifted (hshift, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=5$ etex, center p4 + (hshift, -vshift - 2scale));

	drawarrow center p2 shifted (2hshift, -vshift - 2.5scale) -- center p2 shifted (2hshift, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{head}[Q]=3$ etex, center p2 + (2hshift, -vshift - 3scale));
	drawarrow center p4 shifted (2hshift, -vshift - 1.5scale) -- center p4 shifted (2hshift, -vshift - .7scale);
	label(btex \fontsize{8}{10}\selectfont $\id{tail}[Q]=5$ etex, center p4 + (2hshift, -vshift - 2scale));

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (c)} etex, (2hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (d)} etex, (3hshift+2.4scale, -4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (e)} etex, (2.4scale, -vshift-4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (f)} etex, (hshift+2.4scale, -vshift-4scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (g)} etex, (2hshift+2.4scale, -vshift-4scale));
endfig;

beginfig(3);
	scale := .4cm;
	hshift := 18scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	
	for i:=0 upto 9:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;

	for j:=0 upto 9:
		label(decimal (j+1) infont "cmr7", center p[j] + (0, 2.2scale));
		fill p[j] withcolor if (j=0) or (j=2) or (j=5) or (j=7): medgray else: lightgray fi;
		fill p[j] shifted (0, -scale) withcolor if (j=0) or (j=2) or (j=5) or (j=7): medgray else: lightgray fi;
		fill p[j] shifted (0, -2scale) withcolor if (j=0) or (j=2) or (j=5) or (j=7): medgray else: lightgray fi;
		draw p[j];
		draw p[j] shifted (0, -scale);
		draw p[j] shifted (0, -2scale);
	endfor;

	for j:=0 upto 9:
		label(decimal (j+1) infont "cmr7", center p[j] + (hshift, 2.2scale));
		fill p[j] shifted (hshift, 0) withcolor if (j=0) or (j=2) or (j=5) or (j=7): medgray else: lightgray fi;
		fill p[j] shifted (hshift, -scale) withcolor if (j=0) or (j=2) or (j=5) or (j=7): medgray else: lightgray fi;
		draw p[j] shifted (hshift, 0);
		draw p[j] shifted (hshift, -scale);
	endfor;

	label.lft(btex \fontsize{8}{10}\selectfont $\id{next}$ etex, center p0 + (-.5scale, 0));
	label.lft(btex \fontsize{8}{10}\selectfont $\id{key}$ etex, center p0 + (-.5scale, -scale));
	label.lft(btex \fontsize{8}{10}\selectfont $\phantom{\id{k}}\id{prev}$ etex, center p0 + (-.5scale, -2scale));
	label.lft(btex \fontsize{8}{10}\selectfont $\id{next}$ etex, center p0 + (hshift - .5scale, 0));
	label.lft(btex \fontsize{8}{10}\selectfont $\id{key}$ etex, center p0 + (hshift - .5scale, -scale));

	label("10", center p1 + (0, 0));
	label("13", center p1 + (0, -scale));
	draw (center p1 shifted (-.3scale, -2scale-.3scale)) -- (center p1 shifted (.3scale, -2scale+.3scale));

	label("5", center p3 + (0, 0));
	label("8", center p3 + (0, -scale));
	label("10", center p3 + (0, -2scale));

	label("9", center p4 + (0, 0));
	label("19", center p4 + (0, -scale));
	label("4", center p4 + (0, -2scale));

	draw (center p6 shifted (-.3scale, -.3scale)) -- (center p6 shifted (.3scale, .3scale));
	label("11", center p6 + (0, -scale));
	label("9", center p6 + (0, -2scale));

	label("7", center p8 + (0, 0));
	label("5", center p8 + (0, -scale));
	label("5", center p8 + (0, -2scale));

	label("4", center p9 + (0, 0));
	label("4", center p9 + (0, -scale));
	label("2", center p9 + (0, -2scale));

	label("10", center p1 + (hshift, 0));
	label("13", center p1 + (hshift, -scale));

	label("5", center p3 + (hshift, 0));
	label("8", center p3 + (hshift, -scale));

	label("9", center p4 + (hshift, 0));
	label("19", center p4 + (hshift, -scale));

	draw (center p6 shifted (hshift-.3scale, -.3scale)) -- (center p6 shifted (hshift+.3scale, .3scale));
	label("11", center p6 + (hshift, -scale));

	label("7", center p8 + (hshift, 0));
	label("5", center p8 + (hshift, -scale));

	label("4", center p9 + (hshift, 0));
	label("4", center p9 + (hshift, -scale));

	path r;
	r := unitsquare scaled scale shifted (-2scale, 1.6scale);
	fill r withcolor lightgray;
	draw r;
	label("2", center r);
	label(btex $L$ etex, center r + (-1.2scale, 0));
	drawarrow center r shifted (.5scale, 0) -- center p1 shifted (-.25scale, 1.6scale) -- center p1 shifted (-.25scale, .5scale);

	drawarrow center p8 shifted (-.25scale, .5scale) -- center p8 shifted (-.25scale, scale) -- center p6 shifted (0, scale) -- center p6 shifted (0, .5scale);
	drawarrow center p4 shifted (.25scale, .5scale) -- center p4 shifted (.25scale, 1.2scale) -- center p8 shifted (.25scale, 1.2scale) -- center p8 shifted (.25scale, .5scale);
	drawarrow center p3 shifted (.25scale, .5scale) -- center p3 shifted (.25scale, 1.2scale) -- center p4 shifted (-.25scale, 1.2scale) -- center p4 shifted (-.25scale, .5scale);
	drawarrow center p9 shifted (-.25scale, .5scale) -- center p9 shifted (-.25scale, 1.4scale) -- center p3 shifted (-.25scale, 1.4scale) -- center p3 shifted (-.25scale, .5scale);
	drawarrow center p1 shifted (.25scale, .5scale) -- center p1 shifted (.25scale, 1.6scale) -- center p9 shifted (.25scale, 1.6scale) -- center p9 shifted (.25scale, .5scale);

	drawarrow center p6 shifted (0, -2.5scale) -- center p6 shifted (0, -3scale) -- center p8 shifted (-.25scale, -3scale) -- center p8 shifted (-.25scale, -2.5scale);
	drawarrow center p8 shifted (.25scale, -2.5scale) -- center p8 shifted (.25scale, -3.2scale) -- center p4 shifted (.25scale, -3.2scale) -- center p4 shifted (.25scale, -2.5scale);
	drawarrow center p4 shifted (-.25scale, -2.5scale) -- center p4 shifted (-.25scale, -3.2scale) -- center p3 shifted (.25scale, -3.2scale) -- center p3 shifted (.25scale, -2.5scale);
	drawarrow center p3 shifted (-.25scale, -2.5scale) -- center p3 shifted (-.25scale, -3.4scale) -- center p9 shifted (-.25scale, -3.4scale) -- center p9 shifted (-.25scale, -2.5scale);
	drawarrow center p9 shifted (.25scale, -2.5scale) -- center p9 shifted (.25scale, -3.6scale) -- center p1 shifted (0, -3.6scale) -- center p1 shifted (0, -2.5scale);

	fill r shifted (hshift, 0) withcolor lightgray;
	draw r shifted (hshift, 0);
	label("2", center r + (hshift, 0));
	label(btex $L$ etex, center r + (hshift-1.2scale, 0));
	drawarrow center r shifted (hshift+.5scale, 0) -- center p1 shifted (hshift-.25scale, 1.6scale) -- center p1 shifted (hshift-.25scale, .5scale);

	drawarrow center p8 shifted (hshift-.25scale, .5scale) -- center p8 shifted (hshift-.25scale, scale) -- center p6 shifted (hshift, scale) -- center p6 shifted (hshift, .5scale);
	drawarrow center p4 shifted (hshift+.25scale, .5scale) -- center p4 shifted (hshift+.25scale, 1.2scale) -- center p8 shifted (hshift+.25scale, 1.2scale) -- center p8 shifted (hshift+.25scale, .5scale);
	drawarrow center p3 shifted (hshift+.25scale, .5scale) -- center p3 shifted (hshift+.25scale, 1.2scale) -- center p4 shifted (hshift-.25scale, 1.2scale) -- center p4 shifted (hshift-.25scale, .5scale);
	drawarrow center p9 shifted (hshift-.25scale, .5scale) -- center p9 shifted (hshift-.25scale, 1.4scale) -- center p3 shifted (hshift-.25scale, 1.4scale) -- center p3 shifted (hshift-.25scale, .5scale);
	drawarrow center p1 shifted (hshift+.25scale, .5scale) -- center p1 shifted (hshift+.25scale, 1.6scale) -- center p9 shifted (hshift+.25scale, 1.6scale) -- center p9 shifted (hshift+.25scale, .5scale);

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (a)} etex, (3.25scale, -4.5scale));
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries (b)} etex, (hshift+3.25scale, -4.5scale));
endfig;

vardef graphnode(expr scale, shift, col) =
	path pnd;
	pnd = fullcircle scaled scale shifted shift;
	fill pnd withcolor col;
	draw pnd;
	pnd
enddef;

beginfig(4);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	color gray; gray := .8white;
	
	path p[];
	
	defaultfont := "cmr8";

	p0 = graphnode(scale, (0, 0), gray);
	label.top("6", point 2 of p0);
		
	p1 = graphnode(scale, (-4hshift, -vshift), gray);
	label.top("1", point 2 of p1);
		
	p2 = graphnode(scale, (+4hshift, -vshift), gray);
	label.top("4", point 2 of p2);
		
	p3 = graphnode(scale, (-6hshift, -2vshift), gray);
	label.top("7", point 2 of p3);
		
	p4 = graphnode(scale, (-2hshift, -2vshift), gray);
	label.top("3", point 2 of p4);
		
	p5 = graphnode(scale, (+2hshift, -2vshift), gray);
	label.top("5", point 2 of p5);
		
	p6 = graphnode(scale, (+6hshift, -2vshift), gray);
	label.top("9", point 2 of p6);
		
	p7 = graphnode(scale, (-3hshift, -3vshift), gray);
	label.top("10", point 2 of p7);
	
	defaultfont := "cmr10";

	draw point 4.75 of p0 -- point .75 of p1;
	draw point 7.25 of p0 -- point 3.25 of p2;
	draw point 5.25 of p1 -- point 1.25 of p3;
	draw point 6.75 of p1 -- point 2.75 of p4;
	draw point 5.25 of p2 -- point 1.25 of p5;
	draw point 6.75 of p2 -- point 2.75 of p6;
	draw point 5.55 of p4 -- point 1.55 of p7;

	label("18", (0, 0));
	label("12", (-4hshift, -vshift));
	label("10", (4hshift, -vshift));
	label("7", (-6hshift, -2vshift));
	label("4", (-2hshift, -2vshift));
	label("2", (2hshift, -2vshift));
	label("21", (6hshift, -2vshift));
	label("5", (-3hshift, -3vshift));
endfig;

end.