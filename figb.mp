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
	pa := (reverse fullcircle) rotated -180 scaled u shifted (v+u, 1.5u);
	pb := (reverse fullcircle) scaled u shifted (v+1.5u, 1.5u);
	pc := (reverse fullcircle) rotated -90 scaled u shifted (v+1.25u, u);
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
	color gray; gray := .8white;

	venn_base(scale, 0);
	fill pa withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z0 = (1.25scale, scale); z2 = z0 + (shift, 0); z1 = .5[z0, z2];
	label(btex $A$ etex, (x0, y0 + descshift));
	label(btex $\cap$ etex, z1);
	label(btex $\cap$ etex, (x1, y1 + descshift));
	
	venn_base(scale, shift);
	fill pb withcolor gray;
	fill pc withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z4 = z2 + (shift, 0); z3 = .5[z2, z4];
	label(btex $(B\cup C)$ etex, (x2, y2 + descshift));
	label(btex $=$ etex, z3);
	label(btex $=$ etex, (x3, y3 + descshift));
	
	venn_base(scale, 2shift);
	path area_ab;
	area_ab = buildcycle(pa, pb);
	fill area_ab withcolor gray;
	%fill buildcycle(pa, reverse pc) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	z6 = z4 + (shift, 0); z5 = .5[z4, z6];
	label(btex $(A\cap B)$ etex, (x4, y4 + descshift));
	label(btex $\cup$ etex, z5);
	label(btex $\cup$ etex, (x5, y5 + descshift));

	venn_base(scale, 3shift);
	fill buildcycle(pa, pc) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;

	label(btex $(A\cap C)$ etex, (x6, y6 + descshift));
endfig;

vardef graphnode(expr scale, shift) =
	color gray; gray := .8white;
	path pnd;
	pnd = fullcircle scaled scale shifted shift;
	fill pnd withcolor gray;
	draw pnd;
	pnd
enddef;

beginfig(2);
	scale := .6cm;
	numeric d;
	numeric dd;
	numeric f;

	for y:=-4 upto 4:
		for x:=-4 upto 4:
			if abs(x) > abs(y): d := abs(x)
			else: d := abs(y)
			fi;
			
			dd := (2d-1) * (2d-1) - 1;
			
			if x=d:  f := dd +  d + y fi;
			if y=d:  f := dd + 3d - x fi;
			if x=-d: f := dd + 5d - y fi;
			if y=-d: f := dd + 7d + x fi;

			if (y=-4) and (x=4): label(btex $\dots$ etex, (4.25scale, -4scale))
			else: label(decimal f, (x*scale, y*scale))
			fi;

			if (abs(x)<=y)  and (x<>y): draw ((.3scale, 0)--(.7scale, 0)) shifted (x*scale, y*scale) fi;
			if (abs(x)<=-y) and (x<>4): draw ((.3scale, 0)--(.7scale, 0)) shifted (x*scale, y*scale) fi;
		endfor;

		if y>0:
			for i:=y upto 4: draw ((0, -.3scale)--(0, -.7scale)) shifted (-i*scale, y*scale); endfor;
			for i:=y upto 4: draw ((0, -.3scale)--(0, -.7scale)) shifted (i*scale, y*scale); endfor;
		else:
			for i:=-y upto 3: draw ((0, -.3scale)--(0, -.7scale)) shifted ((-i-1)*scale, y*scale); endfor;
			for i:=-y+1 upto 3: draw ((0, -.3scale)--(0, -.7scale)) shifted ((i+1)*scale, y*scale); endfor;
		fi;
	endfor;

	interim ahangle := 30;
	interim linejoin := mitered;
    interim linecap := butt;

	draw (-6scale, 0)--(-4.5scale, 0) withpen pencircle scaled 1bp;
	drawarrow (4.5scale, 0)--(6scale, 0) withpen pencircle scaled 1bp;
	draw (0, -6scale)--(0, -4.5scale) withpen pencircle scaled 1bp;
	drawarrow (0, 4.5scale)--(0, 6scale) withpen pencircle scaled 1bp;

	label(btex $x$ etex, (5.75scale, .5scale));
	label(btex $y$ etex, (-.5scale, 5.75scale));
endfig;

beginfig(3);
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

beginfig(4);
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

beginfig(5);
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
endfig;

beginfig(7);
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

beginfig(8);
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

beginfig(9);
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

beginfig(10);
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
	p5 = graphnode(scale, (shift + 2.6edgelen, 1.3edgelen)); label(btex $B$ etex, center p5);
	draw point 5 of p3 -- point 1 of p4;
	draw point 7 of p3 -- point 3 of p5;
endfig;

beginfig(11);
	scale := .5cm;
	shift := 2scale;
	
	path p[];
	p0 = graphnode(scale, (0, 0)); label(btex $u_1$ etex, center p0);
	p1 = graphnode(scale, (4scale, 2scale)); label(btex $u_2$ etex, center p1);
	p2 = (-1.4scale, -2scale);
	p3 = (1.4scale, -2scale);

	draw point .5 of p0 -- point 4.5 of p1;
	draw point 5.25 of p0 -- point 1.25 of p2;
	draw point 6.75 of p0 -- point 2.75 of p3;
	draw point .5 of p1 -- center p1 shifted (scale, .5scale);
	draw point 7.5 of p1 -- center p1 shifted (scale, -.5scale);

	draw center p2 -- (center p2 shifted (-scale, -2.5scale)) -- (center p2 shifted (scale, -2.5scale)) -- cycle;
	draw center p3 -- (center p3 shifted (-scale, -2.5scale)) -- (center p3 shifted (scale, -2.5scale)) -- cycle;

	p3 := graphnode(scale, (1.4scale, -2scale)); label(btex $w$ etex, center p3);

	label.ulft(btex $e$ etex, .5[center p0, center p1]);
	label.urt(btex $e'$ etex, .5[center p0, center p3]);
	label(btex $T_1$ etex, center p2 + (0, -2scale));
	label(btex $T_2$ etex, center p3 + (0, -2scale));

	draw center p1 shifted (-1.5scale, 0) .. center p1 shifted (2scale, 2scale) .. center p1 shifted (5.5scale, 0) .. center p1 shifted (2scale, -2scale) .. cycle;
	draw center p0 shifted (0, 1.5scale) .. center p0 shifted (1.5scale, 0) .. center p3 shifted (1.5scale, 0) .. center p3 shifted (2scale, -3scale) .. center p0 shifted (0, -6.5scale) .. center p2 shifted (-2scale, -3scale) .. center p2 shifted (-1.5scale, 0) .. center p0 shifted (-1.5scale, 0) .. cycle;

	label(btex $A'$ etex, center p1 shifted (3scale, 0));
	label(btex $B'$ etex, center p0 shifted (0, -5.5scale));
endfig;

beginfig(12);
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
