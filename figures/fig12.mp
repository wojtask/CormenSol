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

beginfig(1);
	scale := .5cm;
	hshift := 1scale;
	vshift := 2scale;
	bighshift := 18hshift;
	bigvshift := -5vshift;
	color gray; gray := .8white;
	
	path p[];
	p0 := graphnode(scale, (0, 0), gray);
	p1 := graphnode(scale, (-4hshift, -vshift), gray);
	p2 := graphnode(scale, (4hshift, -vshift), gray);
	p3 := graphnode(scale, (-6hshift, -2vshift), gray);
	p4 := graphnode(scale, (-2hshift, -2vshift), gray);
	p5 := graphnode(scale, (2hshift, -2vshift), gray);
	p6 := graphnode(scale, (6hshift, -2vshift), gray);
	
	draw point 4.55 of p0 -- point .55 of p1;
	draw point 7.45 of p0 -- point 3.45 of p2;
	draw point 5.05 of p1 -- point 1.05 of p3;
	draw point 6.95 of p1 -- point 2.95 of p4;
	draw point 5.05 of p2 -- point 1.05 of p5;
	draw point 6.95 of p2 -- point 2.95 of p6;
	
	label("10", center p0);
	label("4", center p1);
	label("17", center p2);
	label("1", center p3);
	label("5", center p4);
	label("16", center p5);
	label("21", center p6);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (0, -3.75vshift));
	
	p0 := graphnode(scale, (bighshift, 0), gray);
	p1 := graphnode(scale, (bighshift-4hshift, -vshift), gray);
	p2 := graphnode(scale, (bighshift+4hshift, -vshift), gray);
	p3 := graphnode(scale, (bighshift-6hshift, -2vshift), gray);
	p4 := graphnode(scale, (bighshift-2hshift, -2vshift), gray);
	p5 := graphnode(scale, (bighshift-3hshift, -3vshift), gray);
	p6 := graphnode(scale, (bighshift-hshift, -3vshift), gray);
	
	draw point 4.55 of p0 -- point .55 of p1;
	draw point 7.45 of p0 -- point 3.45 of p2;
	draw point 5.05 of p1 -- point 1.05 of p3;
	draw point 6.95 of p1 -- point 2.95 of p4;
	draw point 5.4 of p4 -- point 1.4 of p5;
	draw point 6.6 of p4 -- point 2.6 of p6;
	
	label("17", center p0);
	label("4", center p1);
	label("21", center p2);
	label("1", center p3);
	label("10", center p4);
	label("5", center p5);
	label("16", center p6);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (bighshift, -3.75vshift));
	
	p0 := graphnode(scale, (0, bigvshift), gray);
	p1 := graphnode(scale, (-4hshift, bigvshift-vshift), gray);
	p2 := graphnode(scale, (4hshift, bigvshift-vshift), gray);
	p3 := graphnode(scale, (-6hshift, bigvshift-2vshift), gray);
	p4 := graphnode(scale, (2hshift, bigvshift-2vshift), gray);
	p5 := graphnode(scale, (-5hshift, bigvshift-3vshift), gray);
	p6 := graphnode(scale, (-5.5hshift, bigvshift-4vshift), gray);
	
	draw point 4.55 of p0 -- point .55 of p1;
	draw point 7.45 of p0 -- point 3.45 of p2;
	draw point 5.05 of p1 -- point 1.05 of p3;
	draw point 5.05 of p2 -- point 1.05 of p4;
	draw point 6.6 of p3 -- point 2.6 of p5;
	draw point 5.7 of p5 -- point 1.7 of p6;
	
	label("16", center p0);
	label("10", center p1);
	label("21", center p2);
	label("1", center p3);
	label("17", center p4);
	label("5", center p5);
	label("4", center p6);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, (0, bigvshift-6.75vshift));
	
	p0 := graphnode(scale, (.45bighshift, bigvshift), gray);
	p1 := graphnode(scale, (.45bighshift+4hshift, bigvshift-vshift), gray);
	p2 := graphnode(scale, (.45bighshift+6hshift, bigvshift-2vshift), gray);
	p3 := graphnode(scale, (.45bighshift+5hshift, bigvshift-3vshift), gray);
	p4 := graphnode(scale, (.45bighshift+4.5hshift, bigvshift-4vshift), gray);
	p5 := graphnode(scale, (.45bighshift+5.5hshift, bigvshift-4vshift), gray);
	p6 := graphnode(scale, (.45bighshift+5.25hshift, bigvshift-5vshift), gray);
	
	draw point 7.45 of p0 -- point 3.45 of p1;
	draw point 6.95 of p1 -- point 2.95 of p2;
	draw point 5.4 of p2 -- point 1.4 of p3;
	draw point 5.7 of p3 -- point 1.7 of p4;
	draw point 6.3 of p3 -- point 2.3 of p5;
	draw point 5.85 of p5 -- point 1.85 of p6;
	
	label("1", center p0);
	label("4", center p1);
	label("21", center p2);
	label("10", center p3);
	label("5", center p4);
	label("17", center p5);
	label("16", center p6);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, (.45bighshift+3hshift, bigvshift-6.75vshift));
	
	p0 := graphnode(scale, (bighshift, bigvshift), gray);
	p1 := graphnode(scale, (bighshift+4hshift, bigvshift-vshift), gray);
	p2 := graphnode(scale, (bighshift+2hshift, bigvshift-2vshift), gray);
	p3 := graphnode(scale, (bighshift+hshift, bigvshift-3vshift), gray);
	p4 := graphnode(scale, (bighshift+.5hshift, bigvshift-4vshift), gray);
	p5 := graphnode(scale, (bighshift+.75hshift, bigvshift-5vshift), gray);
	p6 := graphnode(scale, (bighshift+.5hshift, bigvshift-6vshift), gray);
	
	draw point 7.45 of p0 -- point 3.45 of p1;
	draw point 5.05 of p1 -- point 1.05 of p2;
	draw point 5.4 of p2 -- point 1.4 of p3;
	draw point 5.7 of p3 -- point 1.7 of p4;
	draw point 6.15 of p4 -- point 2.15 of p5;
	draw point 5.85 of p5 -- point 1.85 of p6;
	
	label("1", center p0);
	label("21", center p1);
	label("17", center p2);
	label("16", center p3);
	label("5", center p4);
	label("10", center p5);
	label("4", center p6);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(e)} etex, (bighshift+2hshift, bigvshift-6.75vshift));
endfig;

beginfig(2);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	
	path p[];
	p0 := graphnode(scale, (0, 0), medgray);
	p1 := graphnode(scale, (4hshift, -vshift), medgray);
	p2 := graphnode(scale, (2hshift, -2vshift), lightgray);
	p3 := graphnode(scale, (6hshift, -2vshift), medgray);
	
	draw point 7.25 of p0 -- point 3.25 of p1;
	draw point 5.25 of p1 -- point 1.25 of p2;
	draw point 6.75 of p1 -- point 2.75 of p3;
	
	label("1", center p0);
	label("3", center p1);
	label("2", center p2);
	label("4", center p3);
endfig;

beginfig(3);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	color gray; gray := .8white;
	
	path p[];
	p0 := graphnode(scale, (0, 0), gray);
	p1 := graphnode(scale, (-4hshift, -vshift), gray);
	p2 := graphnode(scale, (4hshift, -vshift), gray);
	p3 := graphnode(scale, (2hshift, -2vshift), gray);
	
	draw point 4.75 of p0 -- point .75 of p1;
	draw point 7.25 of p0 -- point 3.25 of p2;
	draw point 5.25 of p2 -- point 1.25 of p3;
	
	label("4", center p0);
	label("3", center p1);
	label("7", center p2);
	label("6", center p3);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (0, -3vshift));
	
	p0 := graphnode(scale, (14hshift, 0), gray);
	p1 := graphnode(scale, (14hshift-4hshift, -vshift), gray);
	
	draw point 4.75 of p0 -- point .75 of p1;
	
	label("7", center p0);
	label("6", center p1);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (12hshift, -3vshift));
	
	p0 := graphnode(scale, (20hshift, 0), gray);
	p1 := graphnode(scale, (20hshift+4hshift, -vshift), gray);
	
	draw point 7.25 of p0 -- point 3.25 of p1;
	
	label("6", center p0);
	label("7", center p1);
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, (22hshift, -3vshift));
endfig;

beginfig(4);
	scale := .5cm;
	hshift := 2scale;
	vshift := 2scale;
	color gray; gray := .8white;
	
	path p[];

	totshift := 0;

	p0 = graphnode(scale, (totshift, 0), gray); label(btex $1$ etex, center p0);
	p1 = graphnode(scale, (totshift + .7hshift, -.7vshift), gray); label(btex $2$ etex, center p1);
	p2 = graphnode(scale, (totshift + 1.4hshift, -1.4vshift), gray); label(btex $3$ etex, center p2);
	draw point 7 of p0 -- point 3 of p1;
	draw point 7 of p1 -- point 3 of p2;
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (totshift + .7hshift, -2.2vshift));

	totshift := totshift + 2.7hshift;

	p3 = graphnode(scale, (totshift, 0), gray); label(btex $1$ etex, center p3);
	p4 = graphnode(scale, (totshift + .7hshift, -.7vshift), gray); label(btex $3$ etex, center p4);
	p5 = graphnode(scale, (totshift, -1.4vshift), gray); label(btex $2$ etex, center p5);
	draw point 7 of p3 -- point 3 of p4;
	draw point 5 of p4 -- point 1 of p5;
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (totshift + .35hshift, -2.2vshift));
	
	totshift := totshift + 2hshift;

	p6 = graphnode(scale, (totshift + .7hshift, 0), gray); label(btex $2$ etex, center p6);
	p7 = graphnode(scale, (totshift, -.7vshift), gray); label(btex $1$ etex, center p7);
	p8 = graphnode(scale, (totshift + 1.4hshift, -.7vshift), gray); label(btex $3$ etex, center p8);
	draw point 5 of p6 -- point 1 of p7;
	draw point 7 of p6 -- point 3 of p8;
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, (totshift + .7hshift, -2.2vshift));
	
	totshift := totshift + 2.7hshift;

	p9 = graphnode(scale, (totshift + .7hshift, 0), gray); label(btex $3$ etex, center p9);
	p10 = graphnode(scale, (totshift, -.7vshift), gray); label(btex $1$ etex, center p10);
	p11 = graphnode(scale, (totshift + .7hshift, -1.4vshift), gray); label(btex $2$ etex, center p11);
	draw point 5 of p9 -- point 1 of p10;
	draw point 7 of p10 -- point 3 of p11;
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, (totshift + .35hshift, -2.2vshift));

	totshift := totshift + 2hshift;

	p12 = graphnode(scale, (totshift + 1.4hshift, 0), gray); label(btex $3$ etex, center p12);
	p13 = graphnode(scale, (totshift + .7hshift, -.7vshift), gray); label(btex $2$ etex, center p13);
	p14 = graphnode(scale, (totshift, -1.4vshift), gray); label(btex $1$ etex, center p14);
	draw point 5 of p12 -- point 1 of p13;
	draw point 5 of p13 -- point 1 of p14;
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(e)} etex, (totshift + .7hshift, -2.2vshift));

endfig;

end.