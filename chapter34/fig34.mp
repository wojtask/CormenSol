verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

vardef not_gate(expr scale, shift) =
	color gray; gray := .8white;
	path p, r, s;
	p = ((0, 0) -- dir 90 -- dir 30 -- cycle) scaled scale shifted shift;
	r = fullcircle scaled .35scale shifted ((point 2 of p) + (.175scale, 0));
	s = ((-.2, .5) -- (1.4, .5)) scaled scale shifted shift;
	draw s;
	fill p withcolor gray;
	fill r withcolor gray;
	draw p;
	draw r;
	s
enddef;

vardef and_gate(expr scale, shift) =
	color gray; gray := .8white;
	path p, r, s, t;
	p = ((0, 0) -- (0, 1) -- (.7, 1){right} .. (1.2, .5) .. {left}(.7, 0) -- cycle) scaled scale shifted shift;
	r = ((-.2, .2) -- (0, .2)) scaled scale shifted shift;
	s = ((-.2, .8) -- (0, .8)) scaled scale shifted shift;
	t = ((1.2, .5) -- (1.4, .5)) scaled scale shifted shift;
	draw r;
	draw s;
	draw t;
	fill p withcolor gray;
	draw p;
	r -- s -- t
enddef;

vardef threeway_and_gate(expr scale, shift) =
	color gray; gray := .8white;
	path p, r, s, t, u;
	numeric m;
	m = 1.25;
	p = ((0, 0) -- (0, m) -- (.7, m){right} .. (1.2, .5m) .. {left}(.7, 0) -- cycle) scaled scale shifted (shift - (0, .125) scaled scale);
	r = ((-.2, .2m) -- (0, .2m)) scaled scale shifted (shift - (0, .125) scaled scale);
	s = ((-.2, .5m) -- (0, .5m)) scaled scale shifted (shift - (0, .125) scaled scale);
	t = ((-.2, .8m) -- (0, .8m)) scaled scale shifted (shift - (0, .125) scaled scale);
	u = ((1.2, .5m) -- (1.4, .5m)) scaled scale shifted (shift - (0, .125) scaled scale);
	draw r;
	draw s;
	draw t;
	draw u;
	fill p withcolor gray;
	draw p;
	r -- s -- t -- u
enddef;

vardef or_gate(expr scale, shift) =
	color gray; gray := .8white;
	path p, r, s, t;
	p = ((0, 0){dir 60} .. {dir 120}(0, 1){right} .. {dir -60}(1.2, .5){dir -120} .. {left}cycle) scaled scale shifted shift;
	r = ((-.2, .2) -- (.15, .2)) scaled scale shifted shift;
	s = ((-.2, .8) -- (.15, .8)) scaled scale shifted shift;
	t = ((1.2, .5) -- (1.4, .5)) scaled scale shifted shift;
	draw r;
	draw s;
	draw t;
	fill p withcolor gray;
	draw p;
	r -- s -- t
enddef;

vardef threeway_or_gate(expr scale, shift) =
	color gray; gray := .8white;
	path p, r, s, t, u;
	numeric m;
	m = 1.25;
	p = ((0, 0){dir 60} .. {dir 120}(0, m){right} .. {dir -60}(1.2, .5m){dir -120} .. {left}cycle) scaled scale shifted (shift - (0, .125) scaled scale);
	r = ((-.2, .2m) -- (.16, .2m)) scaled scale shifted (shift - (0, .125) scaled scale);
	s = ((-.2, .5m) -- (.16, .5m)) scaled scale shifted (shift - (0, .125) scaled scale);
	t = ((-.2, .8m) -- (.16, .8m)) scaled scale shifted (shift - (0, .125) scaled scale);
	u = ((1.2, .5m) -- (1.4, .5m)) scaled scale shifted (shift - (0, .125) scaled scale);
	draw r;
	draw s;
	draw t;
	draw u;
	fill p withcolor gray;
	draw p;
	r -- s -- t -- u
enddef;

beginfig(1);
	scale := 1cm;
	path p[];

	p0 = not_gate(scale, (0, 0));
	p1 = or_gate(scale, (2.5scale, 4scale));
	p2 = not_gate(scale, (2.5scale, 2scale));
	p3 = threeway_and_gate(scale, (2.5scale, 0));
	p4 = and_gate(scale, (5scale, 3scale));
	p5 = or_gate(scale, (5scale, scale));
	p6 = threeway_and_gate(scale, (7.5scale, scale));
	
	draw point 2 of p1 + (-2.7scale, 0) -- point 2 of p1;
	draw point 0 of p1 + (-2.7scale, 0) -- point 0 of p1;
	draw point 0 of p0 + (-.2scale, 0) -- point 0 of p0;
	draw point 1 of p0 -- point 2 of p3;
	draw point 0 of p3 -- point 0 of p3 - (.8scale, 0) -- point 0 of p1 - (.8scale, 0);
	draw point 2 of p3 - (.5scale, 0) -- point 0 of p2 - (.5scale, 0) -- point 0 of p2;
	draw point 4 of p3 -- point 4 of p3 - (1.1scale, 0) -- point 2 of p1 - (1.1scale, 0);
	draw point 5 of p1 -- point 5 of p1 + (.4scale, 0) -- point 2 of p4 - (.5scale, 0) -- point 2 of p4;
	draw point 2 of p2 -- point 2 of p2 + (.4scale, 0) -- point 0 of p4 - (.5scale, 0) -- point 0 of p4;
	draw point 2 of p2 + (.4scale, 0) -- point 2 of p5 - (.5scale, 0) -- point 2 of p5;
	draw point 7 of p3 -- point 7 of p3 + (.4scale, 0) -- point 0 of p5 - (.5scale, 0) -- point 0 of p5;
	draw point 7 of p3 + (.4scale, 0) -- point 7 of p3 + (2.9scale, 0) -- point 0 of p6 - (.5scale, 0) -- point 0 of p6;
	draw point 5 of p4 -- point 5 of p4 + (.4scale, 0) -- point 4 of p6 - (.5scale, 0) -- point 4 of p6;
	draw point 6 of p5 -- point 2 of p6;
	draw point 7 of p6 -- point 7 of p6 + (.2scale, 0);

	draw point 2 of p3 - (.5scale, 0) withpen pencircle scaled 4bp;
	draw point 0 of p1 - (.8scale, 0) withpen pencircle scaled 4bp;
	draw point 2 of p1 - (1.1scale, 0) withpen pencircle scaled 4bp;
	draw point 2 of p2 + (.4scale, 0) withpen pencircle scaled 4bp;
	draw point 7 of p3 + (.4scale, 0) withpen pencircle scaled 4bp;

	label(btex $x_1$ etex, point 2 of p1 + (-3scale, 0));
	label(btex $x_2$ etex, point 0 of p1 + (-3scale, 0));
	label(btex $x_3$ etex, point 0 of p0 + (-.5scale, 0));

	label(btex $g_1$ etex, point 0 of p0 + (.5scale, 0));
	label(btex $g_2$ etex, point 4 of p1 + (-.6scale, 0));
	label(btex $g_3$ etex, point 0 of p2 + (.5scale, 0));
	label(btex $g_4$ etex, point 6 of p3 + (-.6scale, 0));
	label(btex $g_5$ etex, point 4 of p4 + (-.6scale, 0));
	label(btex $g_6$ etex, point 4 of p5 + (-.6scale, 0));
	label(btex $g_7$ etex, point 6 of p6 + (-.6scale, 0));
endfig;

end.
