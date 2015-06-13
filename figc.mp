verbatimtex
%&latex
\documentclass{article}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

beginfig(1);
	scale := 2.2cm;
	bigscale := 1.8scale;
	shift := scale;
	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	color darkgray; darkgray := .4white;

	path p, r, pa, pb, ra, rb;
	
	p := (-2shift, -.7shift) -- (0, -.7shift) -- (0, shift) -- (-2shift, shift) -- cycle;
	pa := fullcircle scaled scale shifted (-.3scale-shift, 0);
	pb := fullcircle scaled scale shifted (.3scale-shift, 0);
	
	r := (2shift, -.7shift) -- (0, -.7shift) -- (0, shift) -- (2shift, shift) -- cycle;
	ra := fullcircle scaled scale shifted (-.3scale+shift, 0);
	rb := fullcircle scaled scale shifted (.3scale+shift, 0);
	
	draw p;
	fill pa withcolor lightgray;
	fill pb withcolor medgray;
	z0 = 
	fill buildcycle(pa, pb) withcolor darkgray;
	draw pa; draw pb;
	
	draw r;
	fill ra withcolor lightgray;
	fill rb withcolor medgray;
	fill buildcycle(ra, rb) withcolor darkgray;
	draw ra; draw rb;
	
	label(btex 377 etex, center p + (0, .35bigscale));
	label(btex 17 etex, center pa - (.2scale, 0));
	label(btex 3 etex, .5[center pa, center pb]);
	label(btex 3 etex, center pb + (.2scale, 0));
	
	label(btex \scriptsize{Programiści} etex, center pa - (0, .3scale));
	label(btex \scriptsize{Matematycy} etex, center pb + (0, .3scale));
	
	label(btex \scriptsize{Osoby poniżej 50. roku życia} etex, center p - (0, .6bigscale));
	
	label(btex 80 etex, center r + (0, .35bigscale));
	label(btex 10 etex, center ra - (.2scale, 0));
	label(btex 5 etex, .5[center ra, center rb]);
	label(btex 5 etex, center rb + (.2scale, 0));
	
	label(btex \scriptsize{Programiści} etex, center ra - (0, .3scale));
	label(btex \scriptsize{Matematycy} etex, center rb + (0, .3scale));
	
	label(btex \scriptsize{Osoby powyżej 50. roku życia} etex, center r - (0, .6bigscale));
	
endfig;

end.
