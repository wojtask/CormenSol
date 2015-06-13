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
	span := 2scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 1.5span;
	path p[];
	
	drawarrow (0, 1.5levelspan+.4span) -- (0, 3levelspan+.4span);
	drawarrow (0, 1.5levelspan-.2span) -- (0, 0);
	label(btex $\lg n$ etex, (0, 1.5levelspan+.1span));

	for i:=0 upto 6:
		p[i] := unitsquare scaled scale shifted (.73i*span+leftspan, -.1levelspan);
		label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, .7lowerspan)) dashed evenly;
	endfor;

	p7 := unitsquare scaled scale shifted (.73*7*span+leftspan, -.1levelspan);
	p8 := unitsquare scaled scale shifted (.73*8*span+leftspan, -.1levelspan);
	label(btex \dots etex, .5[center p7, center p8]);

	for i:=9 upto 11:
		p[i] := unitsquare scaled scale shifted (.73i*span+leftspan, -.1levelspan);
		label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, .7lowerspan)) dashed evenly;
	endfor;

	for i:=0 upto 8:
		p[i+12] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex $\frac{n}{4}$ etex, center p[i+12]);
		if odd(i):
			label(btex \vdots etex, (center p[i+12] - (0, .55levelspan)))
		fi;
	endfor;

	for i:=0 upto 8:
		draw (point .3 of p[i+12]) -- (point 0 of p[i+12]) + (0, -.2levelspan);
		draw (point .5 of p[i+12]) -- (point .5 of p[i+12]) + (0, -.2levelspan);
		draw (point .7 of p[i+12]) -- (point 1 of p[i+12]) + (0, -.2levelspan);
	endfor;

	for i:=0 upto 2:
		p[i+21] := unitsquare scaled scale shifted ((3i+1)*span+leftspan, 2levelspan);
		label(btex $\frac{n}{2}$ etex, center p[i+21]);
	endfor;

	for i:=0 upto 2:
		draw (point .2 of p[i+21]) -- (point 2.5 of p[3i+12]);
		draw (point .5 of p[i+21]) -- (point 2.5 of p[3i+13]);
		draw (point .8 of p[i+21]) -- (point 2.5 of p[3i+14]);
	endfor;

	p24 := unitsquare scaled scale shifted (4span+leftspan, 3levelspan);
	label(btex $n$ etex, center p24);

	draw (point .2 of p24) -- (point 2.5 of p21);
	draw (point .5 of p24) -- (point 2.5 of p22);
	draw (point .8 of p24) -- (point 2.5 of p23);

	p25 := unitsquare scaled scale shifted (rightcol, -.1levelspan);
	label(btex $\Theta(n^{\lg3})$ etex, center p25);

	p26 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\bigl(\frac{3}{2}\bigr)^2n$ etex, center p26);

	label(btex \vdots etex, .5[center p25, center p26]);
	
	p27 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $\frac{3}{2}n$ etex, center p27);

	p28 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $n$ etex, center p28);

	drawarrow (center p11) shifted (.5span, 0) -- (center p25) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p20) shifted (.5span, 0) -- (center p26) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p23) shifted (.5span, 0) -- (center p27) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p24) shifted (.5span, 0) -- (center p28) shifted (-.8span, 0) dashed evenly;

	draw (point 0 of p0) .. center p3 - (0, .4span){right} .. .5[center p5, center p6] - (0, .7span);
	draw (point 1 of p11) .. {left}center p8 - (0, .4span) .. .5[center p5, center p6] - (0, .7span);

	label(btex $n^{\lg3}$ etex, .5[center p[5], center p[6]] - (0, span));
endfig;

beginfig(2);
	scale := .5cm;
	span := 1.2scale;
	leftspan := .7span;
	rightcol := 18span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];
	
	drawarrow (-.5leftspan, 1.5levelspan+.4span) -- (-.5leftspan, 3.2levelspan);
	drawarrow (-.5leftspan, 1.5levelspan-.4span) -- (-.5leftspan, -.1levelspan);
	label(btex $\lg n$ etex, (-.5leftspan, 1.5levelspan));

	for i:=0 upto 7:
		p[i] := unitsquare scaled scale shifted (1.15i*span+leftspan, -.2levelspan);
		label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, 1.5lowerspan)) dashed evenly;
	endfor;

	p8 := unitsquare scaled scale shifted (1.15*8*span+leftspan, -.2levelspan);
	p9 := unitsquare scaled scale shifted (1.15*9*span+leftspan, -.2levelspan);
	label(btex \dots etex, .5[center p8, center p9]);

	for i:=10 upto 13:
		p[i] := unitsquare scaled scale shifted (1.15i*span+leftspan, -.2levelspan);
		label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, 1.5lowerspan)) dashed evenly;
	endfor;

	for i:=0 upto 15:
		p[i+14] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex $\frac{cn}{4}$ etex, center p[i+14]);
		draw (point .35 of p[i+14]) -- (point .2 of p[i+14]) + (0, -.2levelspan);
		draw (point .45 of p[i+14]) -- (point .4 of p[i+14]) + (0, -.2levelspan);
		draw (point .55 of p[i+14]) -- (point .6 of p[i+14]) + (0, -.2levelspan);
		draw (point .65 of p[i+14]) -- (point .8 of p[i+14]) + (0, -.2levelspan);
	endfor;

	for i:=0 upto 3:
		label(btex \vdots etex, (.5[center p[4i+15], center p[4i+16]] - (0, .6levelspan)));
	endfor;

	for i:=0 upto 3:
		p[i+30] := unitsquare scaled scale shifted ((4i+1.5)*span+leftspan, 2levelspan);
		label(btex $\frac{cn}{2}$ etex, center p[i+30]);
	endfor;

	for i:=0 upto 3:
		draw (point .15 of p[i+30]) -- (point 2.5 of p[4i+14]);
		draw (point .35 of p[i+30]) -- (point 2.5 of p[4i+15]);
		draw (point .65 of p[i+30]) -- (point 2.5 of p[4i+16]);
		draw (point .85 of p[i+30]) -- (point 2.5 of p[4i+17]);
	endfor;

	p34 := unitsquare scaled scale shifted (7.5span+leftspan, 3levelspan);
	label(btex $cn$ etex, center p34);

	draw (point .15 of p34) -- (point 2.5 of p30);
	draw (point .35 of p34) -- (point 2.5 of p31);
	draw (point .65 of p34) -- (point 2.5 of p32);
	draw (point .85 of p34) -- (point 2.5 of p33);

	p35 := unitsquare scaled scale shifted (rightcol, -.2levelspan);
	label(btex $\Theta(n^2)$ etex, center p35);

	p36 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $4cn$ etex, center p36);

	label(btex \vdots etex, center p36 - (0, .6levelspan));

	p37 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $2cn$ etex, center p37);

	p38 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $cn$ etex, center p38);

	drawarrow (center p13) shifted (.8span, 0) -- (center p35) shifted (-span, 0) dashed evenly;
	drawarrow (center p29) shifted (.8span, 0) -- (center p36) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p33) shifted (.8span, 0) -- (center p37) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p34) shifted (.8span, 0) -- (center p38) shifted (-.8span, 0) dashed evenly;
	
	draw ((point 0 of p14) .. center p17 - (0, .6span){right} .. .5[center p21, center p22] - (0, 1.2span)) shifted (0, -1.3levelspan);
	draw ((point 1 of p29) .. {left}center p26 - (0, .6span) .. .5[center p21, center p22] - (0, 1.2span)) shifted (0, -1.3levelspan);

	label(btex $n^2$ etex, .5[center p21, center p22] - (0, 2.2levelspan));
endfig;

beginfig(3);
	scale := .55cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 8.5span;
	lowerspan := .5span;
	levelspan := span;
	path p[];

	drawarrow (-.7leftspan, 1.25levelspan+.3span) -- (-.7leftspan, 3.4levelspan);
	drawarrow (-.7leftspan, 1.25levelspan-.3span) -- (-.7leftspan, -.8levelspan);
	label(btex $n/a$ etex, (-.7leftspan, 1.25levelspan));

	p0 := unitsquare scaled scale shifted (leftspan, 0);
	p1 := unitsquare scaled scale shifted (leftspan+span, 0);
	p2 := unitsquare scaled scale shifted (leftspan+.5span, levelspan);
	p3 := unitsquare scaled scale shifted (leftspan+2.5span, levelspan);
	p4 := unitsquare scaled scale shifted (leftspan+1.5span, 2levelspan);
	p5 := unitsquare scaled scale shifted (leftspan+5.5span, 2levelspan);
	p6 := unitsquare scaled scale shifted (leftspan+3.5span, 3levelspan);

	label(btex $c(n-3a)$ etex, center p0);
	label(btex $ca$ etex, center p1);
	label(btex $c(n-2a)$ etex, center p2);
	label(btex $ca$ etex, center p3);
	label(btex $c(n-a)$ etex, center p4);
	label(btex $ca$ etex, center p5);
	label(btex $cn$ etex, center p6);

	label(btex \vdots etex, (center p0 - (0, .4levelspan)));

	draw (point .2 of p2) -- (point 2.5 of p0);
	draw (point .8 of p2) -- (point 2.5 of p1);
	draw (point .2 of p4) -- (point 2.5 of p2);
	draw (point .8 of p4) -- (point 2.5 of p3);
	draw (point .2 of p6) -- (point 2.5 of p4);
	draw (point .8 of p6) -- (point 2.5 of p5);

	p7 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $c(n-2a)$ etex, center p7);

	label(btex \vdots etex, (center p7 - (0, .4levelspan)));

	p8 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $c(n-a)$ etex, center p8);
	
	p9 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex, center p9);

	p10 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $cn$ etex, center p10);

	p11 := unitsquare scaled scale shifted (leftspan, -levelspan);
	label(btex $T(1)$ etex, center p11);

	p12 := unitsquare scaled scale shifted (rightcol, -levelspan);
	label(btex $\Theta(1)$ etex, center p12);

	drawarrow (center p1) shifted (.5span, 0) -- (center p7) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p3) shifted (.5span, 0) -- (center p8) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p5) shifted (.5span, 0) -- (center p9) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p6) shifted (.5span, 0) -- (center p10) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p11) shifted (.5span, 0) -- (center p12) shifted (-.8span, 0) dashed evenly;
endfig;

beginfig(4);
	scale := .5cm;
	span := 5scale;
	leftspan := .3span;
	rightcol := 4.7span;
	lowerspan := .2span;
	levelspan := .5span;
	path p[];
	
	drawarrow (0, .8levelspan+.1span) -- (0, 2.3levelspan);
	drawarrow (0, .8levelspan-.1span) -- (0, -.7levelspan);
	label(btex $\log_{1/\alpha}n$ etex, (0, .8levelspan));

	drawarrow (-.5span, .15levelspan+.1span) -- (-.5span, 2.3levelspan);
	drawarrow (-.5span, .15levelspan-.1span) -- (-.5span, -1.8levelspan);
	label(btex $\log_{1/(1-\alpha)}n$ etex, (-.5span, .15levelspan));

	p0 := unitsquare scaled scale shifted (2.5span+leftspan, -levelspan);
	label(btex $c\alpha(1-\alpha)^2n$ etex, center p0);
	p1 := unitsquare scaled scale shifted (3.5span+leftspan, -levelspan);
	label(btex $c(1-\alpha)^3n$ etex, center p1);

	draw (point .4 of p0) -- (point 0 of p0) + (0, -.2levelspan);
	draw (point .6 of p0) -- (point 1 of p0) + (0, -.2levelspan);
	draw (point .4 of p1) -- (point 0 of p1) + (0, -.2levelspan);
	draw (point .6 of p1) -- (point 1 of p1) + (0, -.2levelspan);

	for i:=2 upto 5:
		p[i] := unitsquare scaled scale shifted ((i-2)*span+leftspan, 0);
	endfor;

	draw (point .4 of p3) -- (point 0 of p3) + (0, -.2levelspan);
	draw (point .6 of p3) -- (point 1 of p3) + (0, -.2levelspan);

	draw (point .4 of p4) -- (point 0 of p4) + (0, -.2levelspan);
	draw (point .6 of p4) -- (point 1 of p4) + (0, -.2levelspan);

	label(btex $c\alpha^2n$ etex, center p2);
	label(btex $c\alpha(1-\alpha)n$ etex, center p3);
	label(btex $c\alpha(1-\alpha)n$ etex, center p4);
	label(btex $c(1-\alpha)^2n$ etex, center p5);

	draw (point .2 of p5) -- (point 2.5 of p0);
	draw (point .8 of p5) -- (point 2.5 of p1);

	p6 := unitsquare scaled scale shifted (.5*span+leftspan, levelspan);
	label(btex $c\alpha n$ etex, center p6);

	p7 := unitsquare scaled scale shifted (2.5span+leftspan, levelspan);
	label(btex $c(1-\alpha)n$ etex, center p7);

	draw (point .2 of p6) -- (point 2.5 of p2);
	draw (point .8 of p6) -- (point 2.5 of p3);
	draw (point .2 of p7) -- (point 2.5 of p4);
	draw (point .8 of p7) -- (point 2.5 of p5);

	p8 := unitsquare scaled scale shifted (1.5span+leftspan, 2levelspan);
	label(btex $cn$ etex, center p8);

	draw (point .2 of p8) -- (point 2.5 of p6);
	draw (point .8 of p8) -- (point 2.5 of p7);

	p9 := unitsquare scaled scale shifted (leftspan, -.8levelspan);
	p10 := unitsquare scaled scale shifted (1.5span+leftspan, -1.4levelspan);
	p11 := unitsquare scaled scale shifted (3.5span+leftspan, -2levelspan);
	
	for i:=0 upto 2:
		label(btex $T(1)$ etex, center p[i+9]);
		label(btex \vdots etex, (center p[i+9] + (0, .5levelspan)));
	endfor;

	p12 := unitsquare scaled scale shifted (rightcol, -2levelspan);
	label(btex $\Theta(1)$ etex, center p12);

	p13 := unitsquare scaled scale shifted (rightcol, -levelspan);
	label(btex $\le cn$ etex, center p13);

	label(btex \vdots etex, (center p13 - (0, .5levelspan)));

	p14 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $cn$ etex, center p14);

	label(btex \vdots etex, (center p14 - (0, .5levelspan)));

	p15 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $cn$ etex, center p15);
	
	p16 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex, center p16);

	drawarrow (center p11) shifted (.3span, 0) -- (center p12) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p1) shifted (.4span, 0) -- (center p13) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p5) shifted (.5span, 0) -- (center p14) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p7) shifted (.4span, 0) -- (center p15) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p8) shifted (.2span, 0) -- (center p16) shifted (-.2span, 0) dashed evenly;
endfig;

beginfig(5);
	scale := .5cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 11span;
	lowerspan := .5span;
	levelspan := 1.5span;
	path p[];

	drawarrow (-.8span, 2levelspan+.3span) -- (-.8span, 3.3levelspan);
	drawarrow (-.8span, 2levelspan-.3span) -- (-.8span, .6levelspan);
	label(btex $\log_8n$ etex, (-.8span, 2levelspan));

	drawarrow (-1.6span, 1.15levelspan+.3span) -- (-1.6span, 3.3levelspan);
	drawarrow (-1.6span, 1.15levelspan-.3span) -- (-1.6span, -.9levelspan);
	label(btex $\lg n$ etex, (-1.6span, 1.15levelspan));

	p0 := unitsquare scaled scale shifted (-span+leftspan, 0);
	label(btex $\frac{n}{8}$ etex, center p0);
	p1 := unitsquare scaled scale shifted (leftspan, 0);
	label(btex $\frac{n}{16}$ etex, center p1);
	p2 := unitsquare scaled scale shifted (span+leftspan, 0);
	label(btex $\frac{n}{32}$ etex, center p2);

	p3 := unitsquare scaled scale shifted (leftspan, levelspan);
	label(btex $\frac{n}{4}$ etex, center p3);
	p4 := unitsquare scaled scale shifted (span+leftspan, levelspan);
	label(btex $\frac{n}{8}$ etex, center p4);
	p5 := unitsquare scaled scale shifted (2span+leftspan, levelspan);
	label(btex $\frac{n}{16}$ etex, center p5);
	p6 := unitsquare scaled scale shifted (3span+leftspan, levelspan);
	label(btex $\frac{n}{8}$ etex, center p6);
	p7 := unitsquare scaled scale shifted (4span+leftspan, levelspan);
	label(btex $\frac{n}{16}$ etex, center p7);
	p8 := unitsquare scaled scale shifted (5span+leftspan, levelspan);
	label(btex $\frac{n}{32}$ etex, center p8);
	p9 := unitsquare scaled scale shifted (6span+leftspan, levelspan);
	label(btex $\frac{n}{16}$ etex, center p9);
	p10 := unitsquare scaled scale shifted (7span+leftspan, levelspan);
	label(btex $\frac{n}{32}$ etex, center p10);
	p11 := unitsquare scaled scale shifted (8span+leftspan, levelspan);
	label(btex $\frac{n}{64}$ etex, center p11);

	draw (point .2 of p3) -- (point 2.5 of p0);
	draw (point .5 of p3) -- (point 2.5 of p1);
	draw (point .8 of p3) -- (point 2.5 of p2);

	p12 := unitsquare scaled scale shifted (span+leftspan, 2levelspan);
	label(btex $\frac{n}{2}$ etex, center p12);
	p13 := unitsquare scaled scale shifted (4span+leftspan, 2levelspan);
	label(btex $\frac{n}{4}$ etex, center p13);
	p14 := unitsquare scaled scale shifted (7span+leftspan, 2levelspan);
	label(btex $\frac{n}{8}$ etex, center p14);

	for i:=0 upto 2:
		draw (point .2 of p[i+12]) -- (point 2.5 of p[3i+3]);
		draw (point .5 of p[i+12]) -- (point 2.5 of p[3i+4]);
		draw (point .8 of p[i+12]) -- (point 2.5 of p[3i+5]);
	endfor;

	for i:=0 upto 2:
		draw (point .35 of p[i]) -- (point .2 of p[i]) + (0, -.15levelspan);
		draw (point .5 of p[i]) -- (point .5 of p[i]) + (0, -.15levelspan);
		draw (point .65 of p[i]) -- (point .8 of p[i]) + (0, -.15levelspan);
	endfor;

	for i:=4 upto 10:
		draw (point .35 of p[i]) -- (point .2 of p[i]) + (0, -.15levelspan);
		draw (point .5 of p[i]) -- (point .5 of p[i]) + (0, -.15levelspan);
		draw (point .65 of p[i]) -- (point .8 of p[i]) + (0, -.15levelspan);
	endfor;

	p15 := unitsquare scaled scale shifted (4span+leftspan, 3levelspan);
	label(btex $n$ etex, center p15);

	draw (point .2 of p15) -- (point 2.5 of p12);
	draw (point .5 of p15) -- (point 2.5 of p13);
	draw (point .8 of p15) -- (point 2.5 of p14);

	p16 := unitsquare scaled scale shifted (rightcol, -levelspan);
	label(btex $\Theta(1)$ etex, center p16);

	p17 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\le\bigl(\frac{7}{8}\bigr)^in$ etex, center p17);

	label(btex \vdots etex, (center p17 - (0, .5levelspan)));

	p18 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\bigl(\frac{7}{8}\bigr)^2n$ etex, center p18);

	label(btex \vdots etex, (center p18 - (0, .5levelspan)));

	p19 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $\frac{7}{8}n$ etex, center p19);

	p20 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $n$ etex, center p20);

	label(btex \vdots etex, center p0 - (0, .6levelspan));
	p21 := unitsquare scaled scale shifted (-span+leftspan, -levelspan);
	label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p21);

	label(btex \vdots etex, center p6 - (0, 1.2levelspan));
	p22 := unitsquare scaled scale shifted (3span+leftspan, -.6levelspan);
	label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p22);

	label(btex \vdots etex, center p8 - (0, .6levelspan));
	p23 := unitsquare scaled scale shifted (5span+leftspan, 0);
	label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p23);

	label(btex \vdots etex, center p11 - (0, .25levelspan));
	p24 := unitsquare scaled scale shifted (8span+leftspan, .35levelspan);
	label(btex \fontsize{8}{10}\selectfont$T(1)$ etex, center p24);

	drawarrow (center p21) shifted (.5span, 0) -- (center p16) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p23) shifted (.5span, 0) -- (center p17) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p11) shifted (.5span, 0) -- (center p18) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p14) shifted (.5span, 0) -- (center p19) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p15) shifted (.5span, 0) -- (center p20) shifted (-.8span, 0) dashed evenly;
endfig;

end.