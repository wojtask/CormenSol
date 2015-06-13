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
		label(btex ${\scriptstyle T(1)}$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, lowerspan)) dashed evenly;
	endfor;

	p7 := unitsquare scaled scale shifted (.73*7*span+leftspan, -.1levelspan);
	p8 := unitsquare scaled scale shifted (.73*8*span+leftspan, -.1levelspan);
	label(btex \dots etex, .5[center p7, center p8]);

	for i:=9 upto 11:
		p[i] := unitsquare scaled scale shifted (.73i*span+leftspan, -.1levelspan);
		label(btex ${\scriptstyle T(1)}$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, lowerspan)) dashed evenly;
	endfor;

	for i:=0 upto 8:
		p[i+12] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex $\frac{n}{4}$ etex, center p[i+12]);
	endfor;

	for i:=0 upto 8:
		draw (point .2 of p[i+12]) -- (point 0 of p[i+12]) + (0, -.4levelspan);
		draw (point .5 of p[i+12]) -- (point .5 of p[i+12]) + (0, -.4levelspan);
		draw (point .8 of p[i+12]) -- (point 1 of p[i+12]) + (0, -.4levelspan);
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
	label(btex $\Theta(n^{\lg 3})$ etex, center p25);

	p26 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\left(\frac{3}{2}\right)^2n$ etex, center p26);

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
		label(btex ${\scriptstyle T(1)}$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, 1.5lowerspan)) dashed evenly;
	endfor;

	p8 := unitsquare scaled scale shifted (1.15*8*span+leftspan, -.2levelspan);
	p9 := unitsquare scaled scale shifted (1.15*9*span+leftspan, -.2levelspan);
	label(btex \dots etex, .5[center p8, center p9]);

	for i:=10 upto 13:
		p[i] := unitsquare scaled scale shifted (1.15i*span+leftspan, -.2levelspan);
		label(btex ${\scriptstyle T(1)}$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, 1.5lowerspan)) dashed evenly;
	endfor;

	for i:=0 upto 15:
		p[i+14] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex $\frac{cn}{4}$ etex, center p[i+14]);
	endfor;

	for i:=0 upto 3:
		label(btex \vdots etex, (.5[center p[4i+15], center p[4i+16]] - (0, .4levelspan)));
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

	label(btex \vdots etex, center p36 - (0, .4levelspan));

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
	scale := .6cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 8span;
	lowerspan := .5span;
	levelspan := span;
	path p[];

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

	label(btex \vdots etex, (center p0 - (0, .3levelspan)));

	draw (point .2 of p2) -- (point 2.5 of p0);
	draw (point .8 of p2) -- (point 2.5 of p1);
	draw (point .2 of p4) -- (point 2.5 of p2);
	draw (point .8 of p4) -- (point 2.5 of p3);
	draw (point .2 of p6) -- (point 2.5 of p4);
	draw (point .8 of p6) -- (point 2.5 of p5);

	p7 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $c(n-2a)$ etex, center p7);

	label(btex \vdots etex, (center p7 - (0, .3levelspan)));

	p8 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $c(n-a)$ etex, center p8);
	
	p9 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex, center p9);

	p10 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $cn$ etex, center p10);

	drawarrow (center p1) shifted (.5span, 0) -- (center p7) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p3) shifted (.5span, 0) -- (center p8) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p5) shifted (.5span, 0) -- (center p9) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p6) shifted (.5span, 0) -- (center p10) shifted (-.7span, 0) dashed evenly;
endfig;

beginfig(4);
	scale := .5cm;
	span := 5scale;
	leftspan := .3span;
	rightcol := 4.5span;
	lowerspan := .2span;
	levelspan := .6span;
	path p[];
	
	drawarrow (0, levelspan+.1span) -- (0, 2.3levelspan);
	drawarrow (0, levelspan-.1span) -- (0, -.3levelspan);
	label(btex $\Theta(\lg n)$ etex, (0, levelspan));

	for i:=0 upto 3:
		p[i] := unitsquare scaled scale shifted (i*span+leftspan, 0);
	endfor;

	label(btex $c\alpha^2n$ etex, center p0);
	label(btex $c\alpha(1-\alpha)n$ etex, center p1);
	label(btex $c\alpha(1-\alpha)n$ etex, center p2);
	label(btex $c(1-\alpha)^2n$ etex, center p3);

	for i:=0 upto 3:
		label(btex \vdots etex, (center p[i] - (0, .3levelspan)));
	endfor;

	p4 := unitsquare scaled scale shifted (.5*span+leftspan, levelspan);
	label(btex $c\alpha n$ etex, center p4);

	p5 := unitsquare scaled scale shifted (2.5span+leftspan, levelspan);
	label(btex $c(1-\alpha)n$ etex, center p5);

	draw (point .2 of p4) -- (point 2.5 of p0);
	draw (point .8 of p4) -- (point 2.5 of p1);
	draw (point .2 of p5) -- (point 2.5 of p2);
	draw (point .8 of p5) -- (point 2.5 of p3);

	p6 := unitsquare scaled scale shifted (1.5span+leftspan, 2levelspan);
	label(btex $cn$ etex, center p6);

	draw (point .2 of p6) -- (point 2.5 of p4);
	draw (point .8 of p6) -- (point 2.5 of p5);

	p7 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $cn$ etex, center p7);

	label(btex \vdots etex, (center p7 - (0, .3levelspan)));

	p8 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $cn$ etex, center p8);
	
	p9 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex, center p9);

	drawarrow (center p3) shifted (.5span, 0) -- (center p7) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p5) shifted (.4span, 0) -- (center p8) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p6) shifted (.2span, 0) -- (center p9) shifted (-.2span, 0) dashed evenly;
endfig;

beginfig(5);
	scale := .5cm;
	span := 5scale;
	leftspan := .3span;
	rightcol := 4.5span;
	lowerspan := .2span;
	levelspan := .6span;
	path p[];
	
	drawarrow (0, levelspan+.1span) -- (0, 2.3levelspan);
	drawarrow (0, levelspan-.1span) -- (0, -.3levelspan);
	label(btex $\log_an$ etex, (0, levelspan));

	p0 := unitsquare scaled scale shifted (leftspan, 0);
	p1 := unitsquare scaled scale shifted (.5span + leftspan, 0);
	p2 := unitsquare scaled scale shifted (1.2span + leftspan, 0);
	p3 := unitsquare scaled scale shifted (2span + leftspan, 0);
	p4 := unitsquare scaled scale shifted (2.5span + leftspan, 0);
	p5 := unitsquare scaled scale shifted (3.2span + leftspan, 0);

	for i:=0 upto 5:
		label(btex $\frac{n/a^2}{\lg(n/a^2)}$ etex, center p[i]);
	endfor;
	
	label(btex \dots etex, .5[center p1, center p2]);
	label(btex \dots etex, .5[center p4, center p5]);

	for i:=0 upto 5:
		label(btex \vdots etex, (center p[i] - (0, .3levelspan)));
	endfor;

	p6 := unitsquare scaled scale shifted (.5*span+leftspan, levelspan);
	label(btex $\frac{n/a}{\lg(n/a)}$ etex, center p6);

	p7 := unitsquare scaled scale shifted (2.5span+leftspan, levelspan);
	label(btex $\frac{n/a}{\lg(n/a)}$ etex, center p7);
	
	label(btex \dots etex, .5[center p6, center p7]);

	path b[];

	b0 := (point .2 of p6) -- (point 2.5 of p0); draw b0;
	b1 := (point .4 of p6) -- (point 2.5 of p1); draw b1;
	b2 := (point .8 of p6) -- (point 2.5 of p2); draw b2;
	b3 := (point .2 of p7) -- (point 2.5 of p3); draw b3;
	b4 := (point .4 of p7) -- (point 2.5 of p4); draw b4;
	b5 := (point .8 of p7) -- (point 2.5 of p5); draw b5;

	b6 := (point .4 of b0){dir -30} .. {dir 30}(point .35 of b2); draw b6;
	b7 := (point .4 of b3){dir -30} .. {dir 30}(point .35 of b5); draw b7;
	label.top(btex ${\scriptstyle a}$ etex, (point .7 of b6));
	label.top(btex ${\scriptstyle a}$ etex, (point .7 of b7));

	p8 := unitsquare scaled scale shifted (1.5span+leftspan, 2levelspan);
	label(btex $\frac{n}{\lg n}$ etex, center p8);

	b8 := (point .2 of p8) -- (point 2.5 of p6); draw b8;
	b9 := (point .8 of p8) -- (point 2.5 of p7); draw b9;
	
	b10 := (point .3 of b8){dir -25} .. {dir 25}(point .3 of b9); draw b10;
	label.top(btex ${\scriptstyle a}$ etex, (point .7 of b10));

	p9 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\frac{n}{\lg n-2\lg a}$ etex, center p9);

	label(btex \vdots etex, (center p9 - (0, .3levelspan)));

	p10 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\frac{n}{\lg n-\lg a}$ etex, center p10);
	
	p11 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $\frac{n}{\lg n}$ etex, center p11);

	drawarrow (center p5) shifted (.3span, 0) -- (center p9) shifted (-.4span, 0) dashed evenly;
	drawarrow (center p7) shifted (.3span, 0) -- (center p10) shifted (-.4span, 0) dashed evenly;
	drawarrow (center p8) shifted (.2span, 0) -- (center p11) shifted (-.4span, 0) dashed evenly;
endfig;

beginfig(6);
	scale := .5cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 1.5span;
	path p[];

	drawarrow (0, levelspan+.3span) -- (0, 2.3levelspan);
	drawarrow (0, levelspan-.3span) -- (0, -.3levelspan);
	label(btex $\lg n$ etex, (0, levelspan));

	p0 := unitsquare scaled scale shifted (leftspan, 0);
	label(btex $\frac{n}{4}$ etex, center p0);
	p1 := unitsquare scaled scale shifted (span+leftspan, 0);
	label(btex $\frac{n}{8}$ etex, center p1);
	p2 := unitsquare scaled scale shifted (2span+leftspan, 0);
	label(btex $\frac{n}{16}$ etex, center p2);
	p3 := unitsquare scaled scale shifted (3span+leftspan, 0);
	label(btex $\frac{n}{8}$ etex, center p3);
	p4 := unitsquare scaled scale shifted (4span+leftspan, 0);
	label(btex $\frac{n}{16}$ etex, center p4);
	p5 := unitsquare scaled scale shifted (5span+leftspan, 0);
	label(btex $\frac{n}{32}$ etex, center p5);
	p6 := unitsquare scaled scale shifted (6span+leftspan, 0);
	label(btex $\frac{n}{16}$ etex, center p6);
	p7 := unitsquare scaled scale shifted (7span+leftspan, 0);
	label(btex $\frac{n}{32}$ etex, center p7);
	p8 := unitsquare scaled scale shifted (8span+leftspan, 0);
	label(btex $\frac{n}{64}$ etex, center p8);

	for i:=0 upto 2:
		label(btex \vdots etex, (center p[3i+1] - (0, .3levelspan)));
	endfor;

	p9 := unitsquare scaled scale shifted (span+leftspan, levelspan);
	label(btex $\frac{n}{2}$ etex, center p9);
	p10 := unitsquare scaled scale shifted (4span+leftspan, levelspan);
	label(btex $\frac{n}{4}$ etex, center p10);
	p11 := unitsquare scaled scale shifted (7span+leftspan, levelspan);
	label(btex $\frac{n}{8}$ etex, center p11);

	for i:=0 upto 2:
		draw (point .2 of p[i+9]) -- (point 2.5 of p[3i]);
		draw (point .5 of p[i+9]) -- (point 2.5 of p[3i+1]);
		draw (point .8 of p[i+9]) -- (point 2.5 of p[3i+2]);
	endfor;

	p12 := unitsquare scaled scale shifted (4span+leftspan, 2levelspan);
	label(btex $n$ etex, center p12);

	draw (point .2 of p12) -- (point 2.5 of p9);
	draw (point .5 of p12) -- (point 2.5 of p10);
	draw (point .8 of p12) -- (point 2.5 of p11);

	p13 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\left(\frac{7}{8}\right)^2n$ etex, center p13);

	label(btex \vdots etex, (center p[13] - (0, .3levelspan)));

	p14 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\frac{7}{8}n$ etex, center p14);

	p15 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $n$ etex, center p15);

	drawarrow (center p8) shifted (.5span, 0) -- (center p13) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p11) shifted (.5span, 0) -- (center p14) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p12) shifted (.5span, 0) -- (center p15) shifted (-.8span, 0) dashed evenly;
endfig;

beginfig(7);
	scale := .5cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];
	
	drawarrow (0, 1.5levelspan+.4span) -- (0, 3levelspan+.2span);
	drawarrow (0, 1.5levelspan-.2span) -- (0, .2span);
	label(btex $\Theta(\lg\lg n)$ etex, (0, 1.5levelspan+.1span));

	path pp;

	for i:=0 upto 10:
		pp := unitsquare scaled scale shifted (.8*i*span+leftspan, 0);
		label(btex ${\scriptstyle T(1)}$ etex, center pp);
		draw (point 2.5 of pp) -- (center pp + (0, lowerspan)) dashed evenly;
	endfor;

	p0 := unitsquare scaled scale shifted (leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p0);
	p1 := unitsquare scaled scale shifted (.8span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p1);
	p2 := unitsquare scaled scale shifted (2span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p2);
	p3 := unitsquare scaled scale shifted (2.8span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p3);
	p4 := unitsquare scaled scale shifted (3.6span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p4);
	p5 := unitsquare scaled scale shifted (4.8span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p5);
	p6 := unitsquare scaled scale shifted (6span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p6);
	p7 := unitsquare scaled scale shifted (6.8span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p7);
	p8 := unitsquare scaled scale shifted (8span+leftspan, levelspan);
	label(btex $n^{1/4}$ etex, center p8);

	for i:=0 upto 8:
		draw (point .2 of p[i]) -- (point 0 of p[i]) + (0, -.4levelspan);
		draw (point .5 of p[i]) -- (point .5 of p[i]) + (0, -.4levelspan);
		draw (point .8 of p[i]) -- (point 1 of p[i]) + (0, -.4levelspan);
	endfor;

	p9 := unitsquare scaled scale shifted (span+leftspan, 2levelspan);
	label(btex $n^{1/2}$ etex, center p9);
	p10 := unitsquare scaled scale shifted (3.6span+leftspan, 2levelspan);
	label(btex $n^{1/2}$ etex, center p10);
	p11 := unitsquare scaled scale shifted (7span+leftspan, 2levelspan);
	label(btex $n^{1/2}$ etex, center p11);

	p12 := unitsquare scaled scale shifted (4span+leftspan, 3levelspan);
	label(btex $n$ etex, center p12);

	path b[];

	for i:=0 upto 3:
		b[3i] := (point .2 of p[i+9]) -- (point 2.5 of p[3i]); draw b[3i];
		b[3i+1] := (point .5 of p[i+9]) -- (point 2.5 of p[3i+1]); draw b[3i+1];
		b[3i+2] := (point .8 of p[i+9]) -- (point 2.5 of p[3i+2]); draw b[3i+2];
	endfor;
	
	b12 := (point .55 of b0){dir -30} .. {dir 30}(point .55 of b2); draw b12;
	b13 := (point .55 of b3){dir -30} .. {dir 30}(point .53 of b5); draw b13;
	b14 := (point .55 of b6){dir -30} .. {dir 30}(point .55 of b8); draw b14;
	b15 := (point .3 of b9){dir -25} .. {dir 25}(point .3 of b11); draw b15;
	label.top(btex ${\scriptstyle n^{1/4}}$ etex, (point .7 of b12));
	label.top(btex ${\scriptstyle n^{1/4}}$ etex, (point .7 of b13));
	label.top(btex ${\scriptstyle n^{1/4}}$ etex, (point .7 of b14));
	label.top(btex ${\scriptstyle n^{1/2}}$ etex, (point .7 of b15));

	p13 := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\Theta(n)$ etex, center p13);

	p14 := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $n$ etex, center p14);

	label(btex \vdots etex, .5[center p13, center p14]);
	
	p15 := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $n$ etex, center p15);

	p16 := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $n$ etex, center p16);

	drawarrow (center pp) shifted (.6span, 0) -- (center p13) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p8) shifted (.6span, 0) -- (center p14) shifted (-.5span, 0) dashed evenly;
	drawarrow (center p11) shifted (.6span, 0) -- (center p15) shifted (-.5span, 0) dashed evenly;
	drawarrow (center p12) shifted (.6span, 0) -- (center p16) shifted (-.5span, 0) dashed evenly;
	
	label(btex \dots etex, .5[center p1, center p2] - (0, .05levelspan));
	label(btex \dots etex, .5[center p4, center p5] - (0, .05levelspan));
	label(btex \dots etex, .5[center p7, center p8] - (0, .05levelspan));
	label(btex \dots etex, .5[center p10, center p11] - (0, .05levelspan));
endfig;

end.
