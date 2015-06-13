verbatimtex
%&latex
\documentclass{minimal}
\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\begin{document}
etex

prologues := 2;

def venn_base(expr u, v) =
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
	shift := 2.4scale;
	descshift := -scale;
	innershift := .25scale;
	color gray; gray := .8white;

	venn_base(scale, 0);
	fill pa withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;
	z0 = (1.25scale, scale); z2 = z0 + (shift, 0); z1 = .5[z0, z2];
	label(btex $A$ etex, (x0, y0 + descshift));
	
	label(btex $\cap$ etex, (x1, y1 + innershift));
	label(btex $\cap$ etex, (x1, y1 + descshift));
	
	venn_base(scale, shift);
	fill pb withcolor gray;
	fill pc withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;
	z4 = z2 + (shift, 0); z3 = .5[z2, z4];
	label(btex $(B\cup C)$ etex, (x2, y2 + descshift));
	
	label(btex $=$ etex, (x3, y3 + innershift));
	label(btex $=$ etex, (x3, y3 + descshift));

	venn_base(scale, 2shift);
	fill buildcycle(pa, pb) withcolor gray;
	fill buildcycle(pa, pc) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;
	z6 = z4 + (shift, 0); z5 = .5[z4, z6];
	label(btex $A\cap(B\cup C)$ etex, (x4, y4 + descshift));
	
	label(btex $=$ etex, (x5, y5 + innershift));
	label(btex $=$ etex, (x5, y5 + descshift));

	venn_base(scale, 3shift);
	fill buildcycle(pa, pb) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;
	z8 = z6 + (shift, 0); z7 = .5[z6, z8];
	label(btex $(A\cap B)$ etex, (x6, y6 + descshift));

	label(btex $\cup$ etex, (x7, y7 + innershift));
	label(btex $\cup$ etex, (x7, y7 + descshift));

	venn_base(scale, 4shift);
	fill buildcycle(pa, pc) withcolor gray;
	draw pa; draw pb; draw pc;
	venn_labels;
	label(btex $(A\cap C)$ etex, (x8, y8 + descshift));
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
	p4 = graphnode(scale, (0, 0)); label("4", center p4);
	p1 = graphnode(scale, (0, shift)); label("1", center p1);
	p5 = graphnode(scale, (shift, 0)); label("5", center p5);
	p2 = graphnode(scale, (shift, shift)); label("2", center p2);
	p6 = graphnode(scale, (shift + 2scale, 0)); label("6", center p6);
	p3 = graphnode(scale, (shift + 2scale, shift)); label("3", center p3);

	draw point 0 of p1 -- point 4 of p2;
	draw point 6 of p1 -- point 2 of p4;
	draw point 5 of p2 -- point 1 of p4;
	draw point 6 of p2 -- point 2 of p5;
	draw point 0 of p4 -- point 4 of p5;
	draw point 6 of p3 -- point 2 of p6;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (.5shift + scale, -2scale));

	curlshift := .5scale;
	hshift := 3.5shift;

	path p[];
	p4 = graphnode(scale, (hshift, 0)); label("4", center p4);
	p1 = graphnode(scale, (hshift, shift)); label("1", center p1);
	p5 = graphnode(scale, (hshift + shift, 0)); label("5", center p5);
	p2 = graphnode(scale, (hshift + shift, shift)); label("2", center p2);
	p6 = graphnode(scale, (hshift + shift + 2scale, 0)); label("6", center p6);
	p3 = graphnode(scale, (hshift + shift + 2scale, shift)); label("3", center p3);

	drawarrow point .5 of p1 {curl 1} .. (hshift + .5shift, shift + curlshift) .. {curl 1} point 3.5 of p2;
	drawarrow point 4.5 of p2 {curl 1} .. (hshift + .5shift, shift - curlshift) .. {curl 1} point 7.5 of p1;
	drawarrow point 6.5 of p2 {curl 1} .. (hshift + shift + curlshift, .5shift) .. {curl 1} point 1.5 of p5;
	drawarrow point 2.5 of p5 {curl 1} .. (hshift + shift - curlshift, .5shift) .. {curl 1} point 5.5 of p2;
	drawarrow point 6.5 of p3 {curl 1} .. (hshift + shift + 2scale + curlshift, .5shift) .. {curl 1} point 1.5 of p6;
	drawarrow point 2.5 of p6 {curl 1} .. (hshift + shift + 2scale - curlshift, .5shift) .. {curl 1} point 5.5 of p3;
	drawarrow point 7 of p1 {curl 1} .. (hshift + .5shift + .5curlshift, .5shift + .5curlshift) .. {curl 1} point 3 of p5;
	drawarrow point 3.5 of p5 {curl 1} .. (hshift + .5shift - curlshift, .5shift - curlshift) .. {curl 1} point 6.5 of p1;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (hshift + .5shift + scale, -2scale));
endfig;

beginfig(4);
	scale := .5cm;
	hshift := 2scale;
	vshift := 2scale;
	
	path p[];

	p0 = graphnode(scale, (0, 0)); label(btex $A$ etex, center p0);
	p1 = graphnode(scale, (0, -vshift)); label(btex $B$ etex, center p1);
	p2 = graphnode(scale, (0, -2vshift)); label(btex $C$ etex, center p2);
	draw point 6 of p0 -- point 2 of p1;
	draw point 6 of p1 -- point 2 of p2;

	p3 = graphnode(scale, (hshift, 0)); label(btex $A$ etex, center p3);
	p4 = graphnode(scale, (hshift, -vshift)); label(btex $C$ etex, center p4);
	p5 = graphnode(scale, (hshift, -2vshift)); label(btex $B$ etex, center p5);
	draw point 6 of p3 -- point 2 of p4;
	draw point 6 of p4 -- point 2 of p5;

	p6 = graphnode(scale, (2hshift, 0)); label(btex $B$ etex, center p6);
	p7 = graphnode(scale, (2hshift, -vshift)); label(btex $A$ etex, center p7);
	p8 = graphnode(scale, (2hshift, -2vshift)); label(btex $C$ etex, center p8);
	draw point 6 of p6 -- point 2 of p7;
	draw point 6 of p7 -- point 2 of p8;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(a)} etex, (hshift, -3vshift));

	hspace := 2hshift+5scale;
	
	p9 = graphnode(scale, (hspace, 0)); label(btex $A$ etex, center p9);
	p10 = graphnode(scale, (hspace, -vshift)); label(btex $B$ etex, center p10);
	p11 = graphnode(scale, (hspace, -2vshift)); label(btex $C$ etex, center p11);
	draw point 6 of p9 -- point 2 of p10;
	draw point 6 of p10 -- point 2 of p11;

	p12 = graphnode(scale, (hspace + hshift, 0)); label(btex $A$ etex, center p12);
	p13 = graphnode(scale, (hspace + hshift, -vshift)); label(btex $C$ etex, center p13);
	p14 = graphnode(scale, (hspace + hshift, -2vshift)); label(btex $B$ etex, center p14);
	draw point 6 of p12 -- point 2 of p13;
	draw point 6 of p13 -- point 2 of p14;
	
	p15 = graphnode(scale, (hspace + 2.6hshift, 0)); label(btex $A$ etex, center p15);
	p16 = graphnode(scale, (hspace + 2.6hshift - .7hshift, -.7vshift)); label(btex $B$ etex, center p16);
	p17 = graphnode(scale, (hspace + 2.6hshift + .7hshift, -.7vshift)); label(btex $C$ etex, center p17);
	draw point 5 of p15 -- point 1 of p16;
	draw point 7 of p15 -- point 3 of p17;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(b)} etex, (hspace + 1.3hshift + .35hshift, -3vshift));

	hspace2 := hspace+3hshift+5scale;

	p18 = graphnode(scale, (hspace2, 0)); label(btex $A$ etex, center p18);
	p19 = graphnode(scale, (hspace2, -vshift)); label(btex $B$ etex, center p19);
	p20 = graphnode(scale, (hspace2, -2vshift)); label(btex $C$ etex, center p20);
	draw point 6 of p18 -- point 2 of p19;
	draw point 6 of p19 -- point 2 of p20;

	p21 = graphnode(scale, (hspace2 + hshift, 0)); label(btex $A$ etex, center p21);
	p22 = graphnode(scale, (hspace2 + hshift, -vshift)); label(btex $C$ etex, center p22);
	p23 = graphnode(scale, (hspace2 + hshift, -2vshift)); label(btex $B$ etex, center p23);
	draw point 6 of p21 -- point 2 of p22;
	draw point 6 of p22 -- point 2 of p23;
	
	p24 = graphnode(scale, (hspace2 + 2.6hshift, 0)); label(btex $A$ etex, center p24);
	p25 = graphnode(scale, (hspace2 + 2.6hshift - .7hshift, -.7vshift)); label(btex $B$ etex, center p25);
	p26 = graphnode(scale, (hspace2 + 2.6hshift + .7hshift, -.7vshift)); label(btex $C$ etex, center p26);
	draw point 5 of p24 -- point 1 of p25;
	draw point 7 of p24 -- point 3 of p26;

	p27 = graphnode(scale, (hspace2 + 2.6hshift, -1.3vshift)); label(btex $A$ etex, center p27);
	p28 = graphnode(scale, (hspace2 + 2.6hshift - .7hshift, -2vshift)); label(btex $C$ etex, center p28);
	p29 = graphnode(scale, (hspace2 + 2.6hshift + .7hshift, -2vshift)); label(btex $B$ etex, center p29);
	draw point 5 of p27 -- point 1 of p28;
	draw point 7 of p27 -- point 3 of p29;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(c)} etex, (hspace2 + 1.3hshift + .35hshift, -3vshift));

	totshift := 3.4scale;

	p30 = graphnode(scale, (totshift + 1.4hshift, -4.6vshift)); label(btex $A$ etex, center p30);
	p31 = graphnode(scale, (totshift + .7hshift, -5.3vshift)); label(btex $B$ etex, center p31);
	p32 = graphnode(scale, (totshift, -6vshift)); label(btex $C$ etex, center p32);
	draw point 5 of p30 -- point 1 of p31;
	draw point 5 of p31 -- point 1 of p32;

	totshift := totshift + 2.4hshift;

	p33 = graphnode(scale, (totshift + .7hshift, -4.6vshift)); label(btex $A$ etex, center p33);
	p34 = graphnode(scale, (totshift, -5.3vshift)); label(btex $B$ etex, center p34);
	p35 = graphnode(scale, (totshift + .7hshift, -6vshift)); label(btex $C$ etex, center p35);
	draw point 5 of p33 -- point 1 of p34;
	draw point 7 of p34 -- point 3 of p35;
	
	totshift := totshift + 2hshift;

	p36 = graphnode(scale, (totshift, -4.6vshift)); label(btex $A$ etex, center p36);
	p37 = graphnode(scale, (totshift + .7hshift, -5.3vshift)); label(btex $B$ etex, center p37);
	p38 = graphnode(scale, (totshift, -6vshift)); label(btex $C$ etex, center p38);
	draw point 7 of p36 -- point 3 of p37;
	draw point 5 of p37 -- point 1 of p38;

	totshift := totshift + 1.7hshift;

	p39 = graphnode(scale, (totshift, -4.6vshift)); label(btex $A$ etex, center p39);
	p40 = graphnode(scale, (totshift + .7hshift, -5.3vshift)); label(btex $B$ etex, center p40);
	p41 = graphnode(scale, (totshift + 1.4hshift, -6vshift)); label(btex $C$ etex, center p41);
	draw point 7 of p39 -- point 3 of p40;
	draw point 7 of p40 -- point 3 of p41;

	totshift := totshift + 2.4hshift;

	p42 = graphnode(scale, (totshift + .7hshift, -4.6vshift)); label(btex $A$ etex, center p42);
	p43 = graphnode(scale, (totshift, -5.3vshift)); label(btex $B$ etex, center p43);
	p44 = graphnode(scale, (totshift + 1.4hshift, -5.3vshift)); label(btex $C$ etex, center p44);
	draw point 5 of p42 -- point 1 of p43;
	draw point 7 of p42 -- point 3 of p44;

	totshift := 3.4scale;

	p45 = graphnode(scale, (totshift + 1.4hshift, -7vshift)); label(btex $A$ etex, center p45);
	p46 = graphnode(scale, (totshift + .7hshift, -7.7vshift)); label(btex $C$ etex, center p46);
	p47 = graphnode(scale, (totshift, -8.4vshift)); label(btex $B$ etex, center p47);
	draw point 5 of p45 -- point 1 of p46;
	draw point 5 of p46 -- point 1 of p47;

	totshift := totshift + 2.4hshift;

	p48 = graphnode(scale, (totshift + .7hshift, -7vshift)); label(btex $A$ etex, center p48);
	p49 = graphnode(scale, (totshift, -7.7vshift)); label(btex $C$ etex, center p49);
	p50 = graphnode(scale, (totshift + .7hshift, -8.4vshift)); label(btex $B$ etex, center p50);
	draw point 5 of p48 -- point 1 of p49;
	draw point 7 of p49 -- point 3 of p50;
	
	totshift := totshift + 2hshift;

	p51 = graphnode(scale, (totshift, -7vshift)); label(btex $A$ etex, center p51);
	p52 = graphnode(scale, (totshift + .7hshift, -7.7vshift)); label(btex $C$ etex, center p52);
	p53 = graphnode(scale, (totshift, -8.4vshift)); label(btex $B$ etex, center p53);
	draw point 7 of p51 -- point 3 of p52;
	draw point 5 of p52 -- point 1 of p53;

	totshift := totshift + 1.7hshift;

	p54 = graphnode(scale, (totshift, -7vshift)); label(btex $A$ etex, center p54);
	p55 = graphnode(scale, (totshift + .7hshift, -7.7vshift)); label(btex $C$ etex, center p55);
	p56 = graphnode(scale, (totshift + 1.4hshift, -8.4vshift)); label(btex $B$ etex, center p56);
	draw point 7 of p54 -- point 3 of p55;
	draw point 7 of p55 -- point 3 of p56;

	totshift := totshift + 2.4hshift;

	p57 = graphnode(scale, (totshift + .7hshift, -7vshift)); label(btex $A$ etex, center p57);
	p58 = graphnode(scale, (totshift, -7.7vshift)); label(btex $C$ etex, center p58);
	p59 = graphnode(scale, (totshift + 1.4hshift, -7.7vshift)); label(btex $B$ etex, center p59);
	draw point 5 of p57 -- point 1 of p58;
	draw point 7 of p57 -- point 3 of p59;

	label(btex \fontsize{9}{11}\selectfont{\sffamily\bfseries(d)} etex, (13.3scale, -9.4vshift));
endfig;

beginfig(5);
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

beginfig(6);
	scale := .5cm;
	hshift := .7scale;
	vshift := 2scale;
	
	path p[];

	p0 = graphnode(scale, (0, 0));
	p1 = graphnode(scale, (-4hshift, -vshift));
	p2 = graphnode(scale, (-6hshift, -2vshift));
	p3 = graphnode(scale, (-2hshift, -2vshift));

	draw point 4.75 of p0 -- point .75 of p1;
	draw point 5.25 of p1 -- point 1.25 of p2;
	draw point 6.75 of p1 -- point 2.75 of p3;
endfig;

end.
