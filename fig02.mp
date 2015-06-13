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
	color gray; gray := .8white;
	path p[];
	
	for i:=0 upto 5:
		p[i] := unitsquare scaled scale shifted (i*scale, 0);
	endfor;
	
	fill p0 shifted (0, 4scale) withcolor gray;
	fill p1 shifted (0, 4scale) withcolor black;
	label(btex 31 etex, center p0 + (0, 4scale));
	label(btex 41 etex, center p1 + (0, 4scale)) withcolor white;
	label(btex 59 etex, center p2 + (0, 4scale));
	label(btex 26 etex, center p3 + (0, 4scale));
	label(btex 41 etex, center p4 + (0, 4scale));
	label(btex 58 etex, center p5 + (0, 4scale));
	for i:=0 upto 5:
		draw p[i] shifted (0, 4scale);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (0, 5scale));
		defaultscale := 1;
	endfor;
	drawarrow point .75 of p1 shifted (0, 4scale){down} .. {up}point .25 of p1 shifted (0, 4scale);
	
	fill p1 shifted (8scale, 4scale) withcolor gray;
	fill p2 shifted (8scale, 4scale) withcolor black;
	label(btex 31 etex, center p0 + (8scale, 4scale));
	label(btex 41 etex, center p1 + (8scale, 4scale));
	label(btex 59 etex, center p2 + (8scale, 4scale)) withcolor white;
	label(btex 26 etex, center p3 + (8scale, 4scale));
	label(btex 41 etex, center p4 + (8scale, 4scale));
	label(btex 58 etex, center p5 + (8scale, 4scale));
	for i:=0 upto 5:
		draw p[i] shifted (8scale, 4scale);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (8scale, 5scale));
		defaultscale := 1;
	endfor;
	drawarrow point .75 of p[2]{down} shifted (8scale, 4scale) .. {up}point .25 of p2 shifted (8scale, 4scale);
	
	fill p0 shifted (16scale, 4scale) withcolor gray;
	fill p1 shifted (16scale, 4scale) withcolor gray;
	fill p2 shifted (16scale, 4scale) withcolor gray;
	fill p3 shifted (16scale, 4scale) withcolor black;
	label(btex 31 etex, center p0 + (16scale, 4scale));
	label(btex 41 etex, center p1 + (16scale, 4scale));
	label(btex 59 etex, center p2 + (16scale, 4scale));
	label(btex 26 etex, center p3 + (16scale, 4scale)) withcolor white;
	label(btex 41 etex, center p4 + (16scale, 4scale));
	label(btex 58 etex, center p5 + (16scale, 4scale));
	for i:=0 upto 5:
		draw p[i] shifted (16scale, 4scale);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (16scale, 5scale));
		defaultscale := 1;
	endfor;
	drawarrow point .75 of p3{dir -130} shifted (16scale, 4scale) .. {dir 130}point .25 of p0 shifted (16scale, 4scale);
	drawarrow point .75 of p0{down} shifted (16scale, 4scale) .. {up}point .25 of p1 shifted (16scale, 4scale) withcolor gray;
	drawarrow point .75 of p1{down} shifted (16scale, 4scale) .. {up}point .25 of p2 shifted (16scale, 4scale) withcolor gray;
	drawarrow point .75 of p2{down} shifted (16scale, 4scale) .. {up}point .25 of p3 shifted (16scale, 4scale) withcolor gray;
	
	fill p2 shifted (0, 0) withcolor gray;
	fill p3 shifted (0, 0) withcolor gray;
	fill p4 shifted (0, 0) withcolor black;
	label(btex 26 etex, center p0);
	label(btex 31 etex, center p1);
	label(btex 41 etex, center p2);
	label(btex 59 etex, center p3);
	label(btex 41 etex, center p4) withcolor white;
	label(btex 58 etex, center p5);
	for i:=0 upto 5:
		draw p[i] shifted (0, 0);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (0, scale));
		defaultscale := 1;
	endfor;
	drawarrow point .75 of p4{dir -100} .. {dir 100}point .25 of p3;
	drawarrow point .75 of p3{down} .. {up}point .25 of p4 withcolor gray;
	
	fill p3 shifted (8scale, 0) withcolor gray;
	fill p4 shifted (8scale, 0) withcolor gray;
	fill p5 shifted (8scale, 0) withcolor black;
	label(btex 26 etex, center p0 + (8scale, 0));
	label(btex 31 etex, center p1 + (8scale, 0));
	label(btex 41 etex, center p2 + (8scale, 0));
	label(btex 41 etex, center p3 + (8scale, 0));
	label(btex 59 etex, center p4 + (8scale, 0));
	label(btex 58 etex, center p5 + (8scale, 0)) withcolor white;
	for i:=0 upto 5:
		draw p[i] shifted (8scale, 0);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (8scale, scale));
		defaultscale := 1;
	endfor;
	drawarrow point .75 of p5{dir -100} shifted (8scale, 0) .. {dir 100}point .25 of p4 shifted (8scale, 0);
	drawarrow point .75 of p4{down} shifted (8scale, 0) .. {up}point .25 of p5 shifted (8scale, 0) withcolor gray;
	
	label(btex 26 etex, center p0 + (16scale, 0));
	label(btex 31 etex, center p1 + (16scale, 0));
	label(btex 41 etex, center p2 + (16scale, 0));
	label(btex 41 etex, center p3 + (16scale, 0));
	label(btex 58 etex, center p4 + (16scale, 0));
	label(btex 59 etex, center p5 + (16scale, 0));
	for i:=0 upto 5:
		draw p[i] shifted (16scale, 0);
		defaultscale := .8;
		label(decimal (i+1), center p[i] + (16scale, scale));
		defaultscale := 1;
	endfor;
endfig;

beginfig(2);
	scale := .5cm;
	color gray; gray := .8white;
	path p[];
	
	p0 := unitsquare scaled scale shifted (0, 2scale);
	fill p0 withcolor gray;
	label(btex 3 etex, center p0);
	draw p0;
	
	p1 := unitsquare scaled scale shifted (3scale, 2scale);
	fill p1 withcolor gray;
	label(btex 41 etex, center p1);
	draw p1;
	
	p2 := unitsquare scaled scale shifted (5.5scale, 2scale);
	fill p2 withcolor gray;
	label(btex 52 etex, center p2);
	draw p2;
	
	p3 := unitsquare scaled scale shifted (8.5scale, 2scale);
	fill p3 withcolor gray;
	label(btex 26 etex, center p3);
	draw p3;
	
	p4 := unitsquare scaled scale shifted (11scale, 2scale);
	fill p4 withcolor gray;
	label(btex 38 etex, center p4);
	draw p4;
	
	p5 := unitsquare scaled scale shifted (14scale, 2scale);
	fill p5 withcolor gray;
	label(btex 57 etex, center p5);
	draw p5;
	
	p6 := unitsquare scaled scale shifted (16.5scale, 2scale);
	fill p6 withcolor gray;
	label(btex 9 etex, center p6);
	draw p6;
	
	p7 := unitsquare scaled scale shifted (19.5scale, 2scale);
	fill p7 withcolor gray;
	label(btex 49 etex, center p7);
	draw p7;
	
	p8 := unitsquare xscaled 3scale yscaled scale shifted (.5scale, 5scale);
	fill p8 withcolor gray;
	label(btex 3 etex, center unitsquare scaled scale shifted (.5scale, 5scale));
	label(btex 41 etex, center unitsquare scaled scale shifted (2.5scale, 5scale));
	draw p8;
	
	p9 := unitsquare xscaled 3scale yscaled scale shifted (6scale, 5scale);
	fill p9 withcolor gray;
	label(btex 26 etex, center unitsquare scaled scale shifted (6scale, 5scale));
	label(btex 52 etex, center unitsquare scaled scale shifted (8scale, 5scale));
	draw p9;
	
	p10 := unitsquare xscaled 3scale yscaled scale shifted (11.5scale, 5scale);
	fill p10 withcolor gray;
	label(btex 38 etex, center unitsquare scaled scale shifted (11.5scale, 5scale));
	label(btex 57 etex, center unitsquare scaled scale shifted (13.5scale, 5scale));
	draw p10;
	
	p11 := unitsquare xscaled 3scale yscaled scale shifted (17scale, 5scale);
	fill p11 withcolor gray;
	label(btex 9 etex, center unitsquare scaled scale shifted (17scale, 5scale));
	label(btex 49 etex, center unitsquare scaled scale shifted (19scale, 5scale));
	draw p11;
	
	p12 := unitsquare xscaled 7scale yscaled scale shifted (1.25scale, 8scale);
	fill p12 withcolor gray;
	label(btex 3 etex, center unitsquare scaled scale shifted (1.25scale, 8scale));
	label(btex 26 etex, center unitsquare scaled scale shifted (3.25scale, 8scale));
	label(btex 41 etex, center unitsquare scaled scale shifted (5.25scale, 8scale));
	label(btex 52 etex, center unitsquare scaled scale shifted (7.25scale, 8scale));
	draw p12;
	
	p13 := unitsquare xscaled 7scale yscaled scale shifted (12.25scale, 8scale);
	fill p13 withcolor gray;
	label(btex 9 etex, center unitsquare scaled scale shifted (12.25scale, 8scale));
	label(btex 38 etex, center unitsquare scaled scale shifted (14.25scale, 8scale));
	label(btex 49 etex, center unitsquare scaled scale shifted (16.25scale, 8scale));
	label(btex 57 etex, center unitsquare scaled scale shifted (18.25scale, 8scale));
	draw p13;
	
	p14 := unitsquare xscaled 15scale yscaled scale shifted (2.7scale, 11scale);
	fill p14 withcolor gray;
	label(btex 3 etex, center unitsquare scaled scale shifted (2.7scale, 11scale));
	label(btex 9 etex, center unitsquare scaled scale shifted (4.7scale, 11scale));
	label(btex 26 etex, center unitsquare scaled scale shifted (6.7scale, 11scale));
	label(btex 38 etex, center unitsquare scaled scale shifted (8.7scale, 11scale));
	label(btex 41 etex, center unitsquare scaled scale shifted (10.7scale, 11scale));
	label(btex 49 etex, center unitsquare scaled scale shifted (12.7scale, 11scale));
	label(btex 52 etex, center unitsquare scaled scale shifted (14.7scale, 11scale));
	label(btex 57 etex, center unitsquare scaled scale shifted (16.7scale, 11scale));
	draw p14;
	
	drawarrow point 2.5 of p0 -- point .4 of p8;
	drawarrow point 2.5 of p1 -- point .6 of p8;
	drawarrow point 2.5 of p2 -- point .4 of p9;
	drawarrow point 2.5 of p3 -- point .6 of p9;
	drawarrow point 2.5 of p4 -- point .4 of p10;
	drawarrow point 2.5 of p5 -- point .6 of p10;
	drawarrow point 2.5 of p6 -- point .4 of p11;
	drawarrow point 2.5 of p7 -- point .6 of p11;
	drawarrow point 2.5 of p8 -- point .4 of p12;
	drawarrow point 2.5 of p9 -- point .6 of p12;
	drawarrow point 2.5 of p10 -- point .4 of p13;
	drawarrow point 2.5 of p11 -- point .6 of p13;
	drawarrow point 2.5 of p12 -- point .4 of p14;
	drawarrow point 2.5 of p13 -- point .6 of p14;
	
	defaultscale := .8;
	label("Scal", (2scale, 4scale));
	label("Scal", (7.5scale, 4scale));
	label("Scal", (13scale, 4scale));
	label("Scal", (18.5scale, 4scale));
	label("Scal", (4.75scale, 7scale));
	label("Scal", (15.75scale, 7scale));
	label("Scal", (10.25scale, 10scale));
	label(btex Ciąg początkowy etex, (10.25scale, scale));
	label(btex Ciąg posortowany etex, (10.25scale, 13scale));
	
endfig;

end.
