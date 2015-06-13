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
	hshift := 4scale;
	vshift := -12scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	path p[];
	path r;
	path s;
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (0, -i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=5): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p1 shifted (-.3scale, -.3scale)) -- (center p1 shifted (.3scale, .3scale));
	draw (center p2 shifted (-.3scale, -.3scale)) -- (center p2 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p6 shifted (-.3scale, -.3scale)) -- (center p6 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5scale, -5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3.5scale, -5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (2scale, -9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (1.5hshift, -i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=1) or (i=5): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p2 shifted (-.3scale, -.3scale)) -- (center p2 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p6 shifted (-.3scale, -.3scale)) -- (center p6 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (1.5hshift+2.5scale, -scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (1.5hshift+3.5scale, -scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (1.5hshift+2.5scale, -5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (1.5hshift+3.5scale, -5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (1.5hshift+2scale, -9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (3hshift, -i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=1) or (i=5): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p2 shifted (-.3scale, -.3scale)) -- (center p2 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p6 shifted (-.3scale, -.3scale)) -- (center p6 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (3hshift+2.5scale, -scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3hshift+3.5scale, -scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);

	r := unitsquare xscaled scale yscaled .85scale shifted (3hshift+5.5scale, -scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3hshift+6.5scale, -scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (3hshift+2.5scale, -5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3hshift+3.5scale, -5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, (3hshift+3.5scale, -9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (5.25hshift, -i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=1) or (i=5) or (i=6): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p2 shifted (-.3scale, -.3scale)) -- (center p2 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+2.5scale, -scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+3.5scale, -scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+5.5scale, -scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+6.5scale, -scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+2.5scale, -5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+3.5scale, -5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+2.5scale, -6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5.25hshift+3.5scale, -6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, (5.25hshift+3.5scale, -9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (0, vshift-i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=1) or (i=2) or (i=5) or (i=6): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (2.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (6.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (2.5scale, vshift-2scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3.5scale, vshift-2scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("20", center r);
	drawarrow center p2 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5scale, vshift-5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3.5scale, vshift-5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5scale, vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (3.5scale, vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);	
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(e)} etex, (3.5scale, vshift-9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (2.5hshift, vshift-i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=1) or (i=2) or (i=5) or (i=6): lightgray else: medgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p3 shifted (-.3scale, -.3scale)) -- (center p3 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+2.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+3.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+5.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+6.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+2.5scale, vshift-2scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+3.5scale, vshift-2scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("20", center r);
	drawarrow center p2 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+2.5scale, vshift-5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+3.5scale, vshift-5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+2.5scale, vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+3.5scale, vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("33", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+5.5scale, vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (2.5hshift+6.5scale, vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);	
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(f)} etex, (2.5hshift+3.5scale, vshift-9scale));
	
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (5hshift, vshift-i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=0) or (i=4) or (i=7) or (i=8): medgray else: lightgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));
	draw (center p8 shifted (-.3scale, -.3scale)) -- (center p8 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+2.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+3.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+5.5scale, vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+6.5scale, vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+2.5scale, vshift-2scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+3.5scale, vshift-2scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("20", center r);
	drawarrow center p2 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+2.5scale, vshift-3scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+3.5scale, vshift-3scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("12", center r);
	drawarrow center p3 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+2.5scale, vshift-5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+3.5scale, vshift-5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+2.5scale, vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+3.5scale, vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("33", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (5hshift+5.5scale, vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (5hshift+6.5scale, vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);	
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(g)} etex, (5hshift+3.5scale, vshift-9scale));
		
		
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (.5hshift, 2vshift-i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=0) or (i=4) or (i=7): medgray else: lightgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+5.5scale, 2vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+6.5scale, 2vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-2scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-2scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("20", center r);
	drawarrow center p2 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-3scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-3scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("12", center r);
	drawarrow center p3 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("33", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+5.5scale, 2vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+6.5scale, 2vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);	
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+2.5scale, 2vshift-8scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (.5hshift+3.5scale, 2vshift-8scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("17", center r);
	drawarrow center p8 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(h)} etex, (.5hshift+3.5scale, 2vshift-9scale));
	
	
	for i:=0 upto 8:
		p[i] := unitsquare xscaled 1.5scale yscaled scale shifted (4hshift, 2vshift-i*scale);
	endfor;

	for i:=0 upto 8:
		fill p[i] withcolor if (i=0) or (i=4) or (i=7): medgray else: lightgray fi;
		draw p[i];
		label(decimal i infont "cmr8", center p[i] + (-1.25scale, 0));
	endfor;

	label(btex $T$ etex, center p0 + (0, scale));

	draw (center p0 shifted (-.3scale, -.3scale)) -- (center p0 shifted (.3scale, .3scale));
	draw (center p4 shifted (-.3scale, -.3scale)) -- (center p4 shifted (.3scale, .3scale));
	draw (center p7 shifted (-.3scale, -.3scale)) -- (center p7 shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("10", center r);
	drawarrow center p1 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+5.5scale, 2vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+6.5scale, 2vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("19", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+8.5scale, 2vshift-scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+9.5scale, 2vshift-scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("28", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);

	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));

	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-2scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-2scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("20", center r);
	drawarrow center p2 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-3scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-3scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("12", center r);
	drawarrow center p3 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-5scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-5scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("5", center r);
	drawarrow center p5 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("33", center r);
	drawarrow center p6 -- center r shifted (-.5scale, 0);
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+5.5scale, 2vshift-6scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+6.5scale, 2vshift-6scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("15", center r);
	drawarrow center r shifted (-2scale, 0) -- center r shifted (-.5scale, 0);	
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	r := unitsquare xscaled scale yscaled .85scale shifted (4hshift+2.5scale, 2vshift-8scale+.075scale);
	s := unitsquare xscaled scale yscaled .85scale shifted (4hshift+3.5scale, 2vshift-8scale+.075scale);
	fill r withcolor lightgray;
	fill s withcolor lightgray;
	draw r;
	draw s;
	label("17", center r);
	drawarrow center p8 -- center r shifted (-.5scale, 0);
	
	draw (center s shifted (-.3scale, -.3scale)) -- (center s shifted (.3scale, .3scale));
	
	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(i)} etex, (4hshift+5scale, 2vshift-9scale));
	
endfig;

end.
