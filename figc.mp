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
	
	p := (-1.25scale, -scale) -- (-1.25scale, scale) -- (.75scale, scale) -- (.75scale, -scale) -- cycle;
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
	
	label("277", (-.25scale, .75scale));
	label("80", (1.75scale, .75scale));
	
	label("17", (-.75scale, 0));
	label("3", (-.25scale, 0));
	label("3", (.25scale, 0));
	
	label(btex \fontsize{8}{10}\selectfont Programiści etex, (-.5scale, .25scale));
	label(btex \fontsize{8}{10}\selectfont Matematycy etex, (0, -.25scale));
	
	label("15", (1.25scale, 0));
	label("5", (1.75scale, 0));
	label("5", (2.25scale, 0));
	
	label(btex \fontsize{8}{10}\selectfont Programiści etex, (1.5scale, .25scale));
	label(btex \fontsize{8}{10}\selectfont Matematycy etex, (2scale, -.25scale));
	
	label(btex \fontsize{8}{10}\selectfont Osoby poniżej 50.\ roku życia etex, (-.25scale, -.8scale));
	label(btex \fontsize{8}{10}\selectfont Osoby powyżej 50.\ roku życia etex, (1.75scale, -.8scale));
endfig;

end.
