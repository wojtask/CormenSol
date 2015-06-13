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

	color lightgray; lightgray := .8white;
	color medgray; medgray := .6white;
	color darkgray; darkgray := .4white;

	picture pp;
	path p, pa, pb;
	
	p := (-1.25scale, -.75scale) -- (-1.25scale, scale) -- (.75scale, scale) -- (.75scale, -.75scale) -- cycle;
	pa := fullcircle scaled scale;
	pb := pa shifted (0, .5scale);

	pp := image(
		draw p;
		fill pa rotated 90 withcolor lightgray;
		fill pb rotated 90 withcolor medgray;
		fill buildcycle(pa, pb) rotated 90 withcolor darkgray;
		draw pa rotated 90; draw pb rotated 90;
	);

	draw pp;
	draw pp shifted (2scale, 0);
	
	label(btex 377 etex, (-.25scale, .75scale));
	label(btex 80 etex, (1.75scale, .75scale));
	
	label(btex 17 etex, (-.75scale, 0));
	label(btex 3 etex, (-.25scale, 0));
	label(btex 3 etex, (.25scale, 0));
	
	label(btex \scriptsize{Programiści} etex, (-.5scale, .25scale));
	label(btex \scriptsize{Matematycy} etex, (0, -.25scale));
	
	label(btex 10 etex, (1.25scale, 0));
	label(btex 5 etex, (1.75scale, 0));
	label(btex 5 etex, (2.25scale, 0));
	
	label(btex \scriptsize{Programiści} etex, (1.5scale, .25scale));
	label(btex \scriptsize{Matematycy} etex, (2scale, -.25scale));
	
	label(btex \scriptsize{Osoby poniżej 50.\ roku życia} etex, (-.25scale, -scale));
	label(btex \scriptsize{Osoby powyżej 50.\ roku życia} etex, (1.75scale, -scale));
endfig;

end.
