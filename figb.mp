verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

def venn_base (expr u, v) =
	path pa, pb, pc;
	pa := fullcircle scaled u shifted (v+u, 1.5u);
	pb := fullcircle scaled u shifted (v+1.5u, 1.5u);
	pc := fullcircle scaled u shifted (v+1.25u, u);
enddef;

def venn_labels =
	label.ulft(btex $A$ etex, center pa);
	label.urt(btex $B$ etex, center pb);
	label.bot(btex $C$ etex, center pc);
enddef;

beginfig(1);
	scale := 1.3cm;
	shift := 2.5scale;
	descshift := -scale;
	color gray; gray := .7white;

	venn_base(scale, 0);
	fill pa withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z0 = (1.25scale, scale); z2 = z0 + (shift, 0); z1 = .5[z0, z2];
	label(btex $A$ etex, (x0, y0 + descshift));
	label(btex $\cup$ etex, z1);
	label(btex $\cup$ etex, (x1, y1 + descshift));
	
	venn_base(scale, shift);
	fill buildcycle(pb, pc) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z4 = z2 + (shift, 0); z3 = .5[z2, z4];
	label(btex $(B\cap C)$ etex, (x2, y2 + descshift));
	label(btex $=$ etex, z3);
	label(btex $=$ etex, (x3, y3 + descshift));
	
	venn_base(scale, 2shift);
	fill pa withcolor gray;
	fill pb withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z6 = z4 + (shift, 0); z5 = .5[z4, z6];
	label(btex $(A\cup B)$ etex, (x4, y4 + descshift));
	label(btex $\cap$ etex, z5);
	label(btex $\cap$ etex, (x5, y5 + descshift));

	venn_base(scale, 3shift);
	fill pa withcolor gray;
	fill pc withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	label(btex $(A\cup C)$ etex, (x6, y6 + descshift));
endfig;

vardef graphnode(expr scale, shift) =
	color gray; gray := .7white;
	path pnd;
	pnd = fullcircle scaled scale shifted shift;
	fill pnd withcolor gray;
	draw pnd;
	pnd
enddef;

beginfig(2);
	scale := .5cm;
	shift := 4scale;

	path p[];
	p4 = graphnode(scale, (0, 0)); label(btex 4 etex, center p4);
	p1 = graphnode(scale, (0, shift)); label(btex 1 etex, center p1);
	p5 = graphnode(scale, (shift, 0)); label(btex 5 etex, center p5);
	p2 = graphnode(scale, (shift, shift)); label(btex 2 etex, center p2);
	p6 = graphnode(scale, (shift + 2scale, 0)); label(btex 6 etex, center p6);
	p3 = graphnode(scale, (shift + 2scale, shift)); label(btex 3 etex, center p3);

	draw point 0 of p1 -- point 4 of p2;
	draw point 6 of p1 -- point 2 of p4;
	draw point 5 of p2 -- point 1 of p4;
	draw point 6 of p2 -- point 2 of p5;
	draw point 0 of p4 -- point 4 of p5;
	draw point 6 of p3 -- point 2 of p6;
endfig;

beginfig(3);
	scale := .5cm;
	shift := 4scale;
	curlshift := .5scale;

	path p[];
	p4 = graphnode(scale, (0, 0)); label(btex 4 etex, center p4);
	p1 = graphnode(scale, (0, shift)); label(btex 1 etex, center p1);
	p5 = graphnode(scale, (shift, 0)); label(btex 5 etex, center p5);
	p2 = graphnode(scale, (shift, shift)); label(btex 2 etex, center p2);
	p6 = graphnode(scale, (shift + 2scale, 0)); label(btex 6 etex, center p6);
	p3 = graphnode(scale, (shift + 2scale, shift)); label(btex 3 etex, center p3);

	drawarrow point .5 of p1 {curl 1} .. (.5shift, shift + curlshift) .. {curl 1} point 3.5 of p2;
	drawarrow point 4.5 of p2 {curl 1} .. (.5shift, shift - curlshift) .. {curl 1} point 7.5 of p1;
	drawarrow point 6.5 of p2 {curl 1} .. (shift + curlshift, .5shift) .. {curl 1} point 1.5 of p5;
	drawarrow point 2.5 of p5 {curl 1} .. (shift - curlshift, .5shift) .. {curl 1} point 5.5 of p2;
	drawarrow point 6.5 of p3 {curl 1} .. (shift + 2scale + curlshift, .5shift) .. {curl 1} point 1.5 of p6;
	drawarrow point 2.5 of p6 {curl 1} .. (shift + 2scale - curlshift, .5shift) .. {curl 1} point 5.5 of p3;
	drawarrow point 7 of p1 {curl 1} .. (.5shift + .5curlshift, .5shift + .5curlshift) .. {curl 1} point 3 of p5;
	drawarrow point 3.5 of p5 {curl 1} .. (.5shift - curlshift, .5shift - curlshift) .. {curl 1} point 6.5 of p1;
endfig;

beginfig(4);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	
	path p[];
	p0 = graphnode(scale, (0, 0)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (edgelen, 0)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (2edgelen, 0)); label(btex $C$ etex, center p2);
	draw point 0 of p0 -- point 4 of p1;
	draw point 0 of p1 -- point 4 of p2;

	p3 = graphnode(scale, (shift + 2edgelen, 0)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (shift + 3edgelen, 0)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (shift + 4edgelen, 0)); label(btex $B$ etex, center p5);
	draw point 0 of p3 -- point 4 of p4;
	draw point 0 of p4 -- point 4 of p5;
	
	p6 = graphnode(scale, (2shift + 4edgelen, 0)); label(btex $B$ etex, center p6);
	p7 = graphnode(scale, (2shift + 5edgelen, 0)); label(btex $A$ etex, center p7);
	p8 = graphnode(scale, (2shift + 6edgelen, 0)); label(btex $C$ etex, center p8);
	draw point 0 of p6 -- point 4 of p7;
	draw point 0 of p7 -- point 4 of p8;
endfig;

beginfig(5);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	
	path p[];
	p0 = graphnode(scale, (0, 2edgelen)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (0, edgelen)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (0, 0)); label(btex $C$ etex, center p2);
	draw point 6 of p0 -- point 2 of p1;
	draw point 6 of p1 -- point 2 of p2;

	p3 = graphnode(scale, (shift, 2edgelen)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (shift, edgelen)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (shift, 0)); label(btex $B$ etex, center p5);
	draw point 6 of p3 -- point 2 of p4;
	draw point 6 of p4 -- point 2 of p5;
	
	p6 = graphnode(scale, (2.3shift, 2edgelen)); label(btex $A$ etex, center p6);
	p7 = graphnode(scale, (2.3shift - .7edgelen, 1.3edgelen)); label(btex $B$ etex, center p7);
	p8 = graphnode(scale, (2.3shift + .7edgelen, 1.3edgelen)); label(btex $C$ etex, center p8);
	draw point 5 of p6 -- point 1 of p7;
	draw point 7 of p6 -- point 3 of p8;
endfig;

beginfig(6);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	
	path p[];
	p0 = graphnode(scale, (0, 2edgelen)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (0, edgelen)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (0, 0)); label(btex $C$ etex, center p2);
	draw point 6 of p0 -- point 2 of p1;
	draw point 6 of p1 -- point 2 of p2;

	p3 = graphnode(scale, (shift, 2edgelen)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (shift, edgelen)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (shift, 0)); label(btex $B$ etex, center p5);
	draw point 6 of p3 -- point 2 of p4;
	draw point 6 of p4 -- point 2 of p5;
	
	p6 = graphnode(scale, (2.3shift, 2edgelen)); label(btex $A$ etex, center p6);
	p7 = graphnode(scale, (2.3shift - .7edgelen, 1.3edgelen)); label(btex $B$ etex, center p7);
	p8 = graphnode(scale, (2.3shift + .7edgelen, 1.3edgelen)); label(btex $C$ etex, center p8);
	draw point 5 of p6 -- point 1 of p7;
	draw point 7 of p6 -- point 3 of p8;

	p9 = graphnode(scale, (3.8shift, 2edgelen)); label(btex $A$ etex, center p9);
	p10 = graphnode(scale, (3.8shift - .7edgelen, 1.3edgelen)); label(btex $C$ etex, center p10);
	p11 = graphnode(scale, (3.8shift + .7edgelen, 1.3edgelen)); label(btex $B$ etex, center p11);
	draw point 5 of p9 -- point 1 of p10;
	draw point 7 of p9 -- point 3 of p11;
endfig;

beginfig(7);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	totshift := 0;

	path p[];
	p0 = graphnode(scale, (1.4edgelen, 1.4edgelen)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (.7edgelen, .7edgelen)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (0, 0)); label(btex $C$ etex, center p2);
	draw point 5 of p0 -- point 1 of p1;
	draw point 5 of p1 -- point 1 of p2;

	totshift := shift + 1.2edgelen;

	p3 = graphnode(scale, (totshift + .7edgelen, 1.4edgelen)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (totshift, .7edgelen)); label(btex $B$ etex, center p4);
	p5 = graphnode(scale, (totshift + .7edgelen, 0)); label(btex $C$ etex, center p5);
	draw point 5 of p3 -- point 1 of p4;
	draw point 7 of p4 -- point 3 of p5;
	
	totshift := totshift + shift + .7edgelen;

	p6 = graphnode(scale, (totshift, 1.4edgelen)); label(btex $A$ etex, center p6);
	p7 = graphnode(scale, (totshift + .7edgelen, .7edgelen)); label(btex $B$ etex, center p7);
	p8 = graphnode(scale, (totshift, 0)); label(btex $C$ etex, center p8);
	draw point 7 of p6 -- point 3 of p7;
	draw point 5 of p7 -- point 1 of p8;

	totshift := totshift + shift + .5edgelen;

	p9 = graphnode(scale, (totshift, 1.4edgelen)); label(btex $A$ etex, center p9);
	p10 = graphnode(scale, (totshift + .7edgelen, .7edgelen)); label(btex $B$ etex, center p10);
	p11 = graphnode(scale, (totshift + 1.4edgelen, 0)); label(btex $C$ etex, center p11);
	draw point 7 of p9 -- point 3 of p10;
	draw point 7 of p10 -- point 3 of p11;
endfig;

beginfig(8);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	totshift := 0;

	path p[];
	p0 = graphnode(scale, (1.4edgelen, 1.4edgelen)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (.7edgelen, .7edgelen)); label(btex $C$ etex, center p1);
	p2 = graphnode(scale, (0, 0)); label(btex $B$ etex, center p2);
	draw point 5 of p0 -- point 1 of p1;
	draw point 5 of p1 -- point 1 of p2;

	totshift := shift + 1.2edgelen;

	p3 = graphnode(scale, (totshift + .7edgelen, 1.4edgelen)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (totshift, .7edgelen)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (totshift + .7edgelen, 0)); label(btex $B$ etex, center p5);
	draw point 5 of p3 -- point 1 of p4;
	draw point 7 of p4 -- point 3 of p5;
	
	totshift := totshift + shift + .7edgelen;

	p6 = graphnode(scale, (totshift, 1.4edgelen)); label(btex $A$ etex, center p6);
	p7 = graphnode(scale, (totshift + .7edgelen, .7edgelen)); label(btex $C$ etex, center p7);
	p8 = graphnode(scale, (totshift, 0)); label(btex $B$ etex, center p8);
	draw point 7 of p6 -- point 3 of p7;
	draw point 5 of p7 -- point 1 of p8;

	totshift := totshift + shift + .5edgelen;

	p9 = graphnode(scale, (totshift, 1.4edgelen)); label(btex $A$ etex, center p9);
	p10 = graphnode(scale, (totshift + .7edgelen, .7edgelen)); label(btex $C$ etex, center p10);
	p11 = graphnode(scale, (totshift + 1.4edgelen, 0)); label(btex $B$ etex, center p11);
	draw point 7 of p9 -- point 3 of p10;
	draw point 7 of p10 -- point 3 of p11;
endfig;

beginfig(9);
	scale := .5cm;
	edgelen := 2scale;
	shift := 4scale;
	totshift := 0;

	path p[];
	p0 = graphnode(scale, (.7edgelen, 2edgelen)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (0, 1.3edgelen)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (1.4edgelen, 1.3edgelen)); label(btex $C$ etex, center p2);
	draw point 5 of p0 -- point 1 of p1;
	draw point 7 of p0 -- point 3 of p2;

	p3 = graphnode(scale, (shift + 1.9edgelen, 2edgelen)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (shift + 1.2edgelen, 1.3edgelen)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (shift + 2.5edgelen, 1.3edgelen)); label(btex $B$ etex, center p5);
	draw point 5 of p3 -- point 1 of p4;
	draw point 7 of p3 -- point 3 of p5;
endfig;

beginfig(10);
	scale := .5cm;
	shift := 2scale;

	path p[];
	p31 = graphnode(scale, (0, 0));
	p32 = graphnode(scale, (shift, 0));
	p33 = graphnode(scale, (2shift, 0));
	p34 = graphnode(scale, (0, shift));
	p35 = graphnode(scale, (shift, shift));
	p36 = graphnode(scale, (2shift, shift));

	draw point 0 of p31 -- point 4 of p32;
	draw point 0 of p32 -- point 4 of p33;
	draw point 2 of p33 -- point 6 of p36;
	draw point 2 of p32 -- point 6 of p35;
	draw point 4 of p35 -- point 0 of p34;
	draw point 6 of p34 -- point 2 of p31;
	draw point 0 of p35 -- point 4 of p36;

	p1 = graphnode(scale, (4shift, 0));
	p2 = graphnode(scale, (5shift, 0));
	p3 = graphnode(scale, (6shift, 0));
	p4 = graphnode(scale, (4shift, shift));
	p5 = graphnode(scale, (5shift, shift));
	p6 = graphnode(scale, (6shift, shift));

	draw point 0 of p1 -- point 4 of p2;
	draw point 0 of p2 -- point 4 of p3;
	draw point 2 of p3 -- point 6 of p6;
	draw point 3 of p3 -- point 7 of p5;
	draw point 4 of p5 -- point 0 of p4;
	draw point 6 of p4 -- point 2 of p1;

	p7 = graphnode(scale, (8shift, 0));
	p8 = graphnode(scale, (9shift, 0));
	p9 = graphnode(scale, (10shift, 0));
	p10 = graphnode(scale, (8shift, shift));
	p11 = graphnode(scale, (9shift, shift));
	p12 = graphnode(scale, (10shift, shift));

	draw point 0 of p7 -- point 4 of p8;
	draw point 0 of p8 -- point 4 of p9;
	draw point 2 of p9 -- point 6 of p12;
	draw point 4 of p12 -- point 0 of p11;
	draw point 4 of p11 -- point 0 of p10;
	draw point 6 of p10 -- point 2 of p7;

	p13 = graphnode(scale, (0, 2shift));
	p14 = graphnode(scale, (shift, 2shift));
	p15 = graphnode(scale, (2shift, 2shift));
	p16 = graphnode(scale, (0, 3shift));
	p17 = graphnode(scale, (shift, 3shift));
	p18 = graphnode(scale, (2shift, 3shift));

	draw point 0 of p13 -- point 4 of p14;
	draw point 0 of p14 -- point 4 of p15;
	draw point 2 of p14 -- point 6 of p17;
	draw point 4 of p18 -- point 0 of p17;
	draw point 4 of p17 -- point 0 of p16;
	draw point 6 of p16 -- point 2 of p13;

	p19 = graphnode(scale, (4shift, 2shift));
	p20 = graphnode(scale, (5shift, 2shift));
	p21 = graphnode(scale, (6shift, 2shift));
	p22 = graphnode(scale, (4shift, 3shift));
	p23 = graphnode(scale, (5shift, 3shift));
	p24 = graphnode(scale, (6shift, 3shift));

	draw point 0 of p19 -- point 4 of p20;
	draw point 6 of p24 -- point 2 of p21;
	draw point 2 of p20 -- point 6 of p23;
	draw point 4 of p24 -- point 0 of p23;
	draw point 4 of p23 -- point 0 of p22;
	draw point 6 of p22 -- point 2 of p19;

	p25 = graphnode(scale, (8shift, 2shift));
	p26 = graphnode(scale, (9shift, 2shift));
	p27 = graphnode(scale, (10shift, 2shift));
	p28 = graphnode(scale, (8shift, 3shift));
	p29 = graphnode(scale, (9shift, 3shift));
	p30 = graphnode(scale, (10shift, 3shift));

	draw point 0 of p25 -- point 4 of p26;
	draw point 7 of p29 -- point 3 of p27;
	draw point 2 of p26 -- point 6 of p29;
	draw point 4 of p30 -- point 0 of p29;
	draw point 0 of p28 -- point 4 of p29;
	draw point 6 of p28 -- point 2 of p25;
endfig;

beginfig(11);
	scale := .5cm;
	shift := 2scale;
	
	path p[];
	p0 = graphnode(scale, (0, shift));
	p1 = graphnode(scale, (0, 0));
	p2 = graphnode(scale, (-.866shift, -.5shift));
	p3 = graphnode(scale, (.866shift, -.5shift));

	draw point 6 of p0 -- point 2 of p1;
	draw point .65 of p2 -- point 4.65 of p1;
	draw point 3.35 of p3 -- point 7.35 of p1;
endfig;

end.
