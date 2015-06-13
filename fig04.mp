prologues := 2;

beginfig(1);
	scale := .5cm;
	lblscale := .06scale;
	span := 2scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];
	
	drawarrow (0, 1.5levelspan+.4span) -- (0, 3levelspan+.4span);
	drawarrow (0, 1.5levelspan-.2span) -- (0, 0);
	label(btex $\lg n$ etex, (0, 1.5levelspan+.1span));

	for i:=0 upto 6:
		p[i] := unitsquare scaled scale shifted (0.73i*span+leftspan, 0);
		label(btex $T(1)$ etex scaled lblscale, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, lowerspan)) dashed evenly;
	endfor;

	p[7] := unitsquare scaled scale shifted (0.73*7*span+leftspan, 0);
	p[8] := unitsquare scaled scale shifted (0.73*8*span+leftspan, 0);
	label(btex $\dots$ etex, .5[center p[7], center p[8]]);

	for i:=9 upto 11:
		p[i] := unitsquare scaled scale shifted (0.73i*span+leftspan, 0);
		label(btex $T(1)$ etex scaled lblscale, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, lowerspan)) dashed evenly;
	endfor;

	for i:=0 upto 8:
		p[i+12] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex $n\over 4$ etex, center p[i+12]);
	endfor;

	for i:=0 upto 8:
		draw (point 0.2 of p[i+12]) -- (point 0 of p[i+12]) + (0, -.4levelspan);
		draw (point .5 of p[i+12]) -- (point .5 of p[i+12]) + (0, -.4levelspan);
		draw (point 0.8 of p[i+12]) -- (point 1 of p[i+12]) + (0, -.4levelspan);
	endfor;

	for i:=0 upto 2:
		p[i+21] := unitsquare scaled scale shifted ((3i+1)*span+leftspan, 2levelspan);
		label(btex $n\over 2$ etex, center p[i+21]);
	endfor;

	for i:=0 upto 2:
		draw (point 0.2 of p[i+21]) -- (point 2.5 of p[3i+12]);
		draw (point .5 of p[i+21]) -- (point 2.5 of p[3i+13]);
		draw (point 0.8 of p[i+21]) -- (point 2.5 of p[3i+14]);
	endfor;

	p[24] := unitsquare scaled scale shifted (4span+leftspan, 3levelspan);
	label(btex $n$ etex, center p[24]);

	draw (point 0.2 of p[24]) -- (point 2.5 of p[21]);
	draw (point .5 of p[24]) -- (point 2.5 of p[22]);
	draw (point 0.8 of p[24]) -- (point 2.5 of p[23]);

	p[25] := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\Theta\left(n^{\lg 3}\right)$ etex, center p[25]);

	p[26] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\left({3\over 2}\right)^2n$ etex, center p[26]);

	label(btex $\vdots$ etex, .5[center p[25], center p[26]]);
	
	p[27] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex ${3\over 2}n$ etex, center p[27]);

	p[28] := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $n$ etex, center p[28]);

	drawarrow (center p[11]) shifted (.5span, 0) -- (center p[25]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[20]) shifted (.5span, 0) -- (center p[26]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[23]) shifted (.5span, 0) -- (center p[27]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[24]) shifted (.5span, 0) -- (center p[28]) shifted (-.8span, 0) dashed evenly;

	draw (point 0 of p[0]) .. center p[3] - (0, .4span){right} .. .5[center p[5], center p[6]] - (0, .7span);
	draw (point 1 of p[11]) .. {left}center p[8] - (0, .4span) .. .5[center p[5], center p[6]] - (0, .7span);

	label(btex $n^{\lg 3}$ etex, .5[center p[5], center p[6]] - (0, span));
endfig;

beginfig(2);
	scale := .5cm;
	lblscale := .06scale;
	span := 1.2scale;
	leftspan := .7span;
	rightcol := 18span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];
	
	drawarrow (0, 1.8levelspan+.4span) -- (0, 3levelspan);
	drawarrow (0, 1.8levelspan-.4span) -- (0, .6levelspan);
	label(btex $\lg n$ etex scaled lblscale, (0, 1.8levelspan));

	for i:=0 upto 15:
		p[i] := unitsquare scaled scale shifted (i*span+leftspan, levelspan);
		label(btex ${cn\over 4}$ etex scaled lblscale, center p[i]);
	endfor;

	for i:=0 upto 3:
		label(btex $\vdots$ etex scaled lblscale, (.5[center p[4i+1], center p[4i+2]] - (0, .4levelspan)));
	endfor;

	for i:=0 upto 3:
		p[i+16] := unitsquare scaled scale shifted ((4i+1.5)*span+leftspan, 2levelspan);
		label(btex ${cn\over 2}$ etex scaled lblscale, center p[i+16]);
	endfor;

	for i:=0 upto 3:
		draw (point 0.15 of p[i+16]) -- (point 2.5 of p[4i]);
		draw (point 0.35 of p[i+16]) -- (point 2.5 of p[4i+1]);
		draw (point 0.65 of p[i+16]) -- (point 2.5 of p[4i+2]);
		draw (point 0.85 of p[i+16]) -- (point 2.5 of p[4i+3]);
	endfor;

	p[20] := unitsquare scaled scale shifted (7.5span+leftspan, 3levelspan);
	label(btex $cn$ etex scaled lblscale, center p[20]);

	draw (point 0.15 of p[20]) -- (point 2.5 of p[16]);
	draw (point 0.35 of p[20]) -- (point 2.5 of p[17]);
	draw (point 0.65 of p[20]) -- (point 2.5 of p[18]);
	draw (point 0.85 of p[20]) -- (point 2.5 of p[19]);

	p[21] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $4cn$ etex scaled lblscale, center p[21]);

	label(btex $\vdots$ etex scaled lblscale, center p[21] - (0, .4levelspan));

	p[22] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $2cn$ etex scaled lblscale, center p[22]);

	p[23] := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $cn$ etex scaled lblscale, center p[23]);

	drawarrow (center p[15]) shifted (.5span, 0) -- (center p[21]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[19]) shifted (.5span, 0) -- (center p[22]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[20]) shifted (.5span, 0) -- (center p[23]) shifted (-.8span, 0) dashed evenly;

	draw ((point 0 of p[0]){dir 340} .. center p[3] - (0, .4span){right} .. .5[center p[7], center p[8]] - (0, span)) shifted (0, -.5levelspan);
	draw ((point 1 of p[15]){dir 200} .. {left}center p[12] - (0, .4span) .. .5[center p[7], center p[8]] - (0, span)) shifted (0, -.5levelspan);

	label(btex $n$ etex scaled lblscale, .5[center p[7], center p[8]] - (0, 1.25levelspan));
endfig;

beginfig(3);
	scale := .6cm;
	lblscale := .05scale;
	span := 2scale;
	leftspan := .7span;
	rightcol := 8span;
	lowerspan := .5span;
	levelspan := span;
	path p[];

	p[0] := unitsquare scaled scale shifted (leftspan, 0);
	p[1] := unitsquare scaled scale shifted (leftspan+span, 0);
	p[2] := unitsquare scaled scale shifted (leftspan+.5span, levelspan);
	p[3] := unitsquare scaled scale shifted (leftspan+2.5span, levelspan);
	p[4] := unitsquare scaled scale shifted (leftspan+1.5span, 2levelspan);
	p[5] := unitsquare scaled scale shifted (leftspan+5.5span, 2levelspan);
	p[6] := unitsquare scaled scale shifted (leftspan+3.5span, 3levelspan);

	label(btex $c(n-3a)$ etex scaled lblscale, center p[0]);
	label(btex $ca$ etex scaled lblscale, center p[1]);
	label(btex $c(n-2a)$ etex scaled lblscale, center p[2]);
	label(btex $ca$ etex scaled lblscale, center p[3]);
	label(btex $c(n-a)$ etex scaled lblscale, center p[4]);
	label(btex $ca$ etex scaled lblscale, center p[5]);
	label(btex $cn$ etex scaled lblscale, center p[6]);

	label(btex $\vdots$ etex scaled lblscale, (.5[center p[0], center p[1]] - (0, .3levelspan)));

	draw (point 0.2 of p[2]) -- (point 2.5 of p[0]);
	draw (point 0.8 of p[2]) -- (point 2.5 of p[1]);
	draw (point 0.2 of p[4]) -- (point 2.5 of p[2]);
	draw (point 0.8 of p[4]) -- (point 2.5 of p[3]);
	draw (point 0.2 of p[6]) -- (point 2.5 of p[4]);
	draw (point 0.8 of p[6]) -- (point 2.5 of p[5]);

	p[7] := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $c(n-2a)$ etex scaled lblscale, center p[7]);

	label(btex $\vdots$ etex scaled lblscale, (center p[7] - (0, .3levelspan)));

	p[8] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $c(n-a)$ etex scaled lblscale, center p[8]);
	
	p[9] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex scaled lblscale, center p[9]);

	p[10] := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $cn$ etex scaled lblscale, center p[10]);

	drawarrow (center p[1]) shifted (.5span, 0) -- (center p[7]) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p[3]) shifted (.5span, 0) -- (center p[8]) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p[5]) shifted (.5span, 0) -- (center p[9]) shifted (-.7span, 0) dashed evenly;
	drawarrow (center p[6]) shifted (.5span, 0) -- (center p[10]) shifted (-.7span, 0) dashed evenly;
endfig;

beginfig(4);
	scale := .5cm;
	span := 5scale;
	leftspan := .3span;
	rightcol := 4.5span;
	lowerspan := .2span;
	levelspan := 0.6span;
	path p[];
	
	drawarrow (0, levelspan+.1span) -- (0, 2.3levelspan);
	drawarrow (0, levelspan-.1span) -- (0, -.3levelspan);
	label(btex $h$ etex scaled lblscale, (0, levelspan));

	for i:=0 upto 3:
		p[i] := unitsquare scaled scale shifted (i*span+leftspan, 0);
	endfor;

	label(btex $c\alpha^2n$ etex scaled lblscale, center p[0]);
	label(btex $c\alpha(1-\alpha)n$ etex scaled lblscale, center p[1]);
	label(btex $c\alpha(1-\alpha)n$ etex scaled lblscale, center p[2]);
	label(btex $c(1-\alpha)^2n$ etex scaled lblscale, center p[3]);

	for i:=0 upto 3:
		label(btex $\vdots$ etex scaled lblscale, (center p[i] - (0, .3levelspan)));
	endfor;

	p[4] := unitsquare scaled scale shifted (.5*span+leftspan, levelspan);
	label(btex $c\alpha n$ etex scaled lblscale, center p[4]);

	p[5] := unitsquare scaled scale shifted (2.5span+leftspan, levelspan);
	label(btex $c(1-\alpha)n$ etex scaled lblscale, center p[5]);

	draw (point 0.2 of p[4]) -- (point 2.5 of p[0]);
	draw (point 0.8 of p[4]) -- (point 2.5 of p[1]);
	draw (point 0.2 of p[5]) -- (point 2.5 of p[2]);
	draw (point 0.8 of p[5]) -- (point 2.5 of p[3]);

	p[6] := unitsquare scaled scale shifted (1.5span+leftspan, 2levelspan);
	label(btex $cn$ etex scaled lblscale, center p[6]);

	draw (point 0.2 of p[6]) -- (point 2.5 of p[4]);
	draw (point 0.8 of p[6]) -- (point 2.5 of p[5]);

	p[7] := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $cn$ etex scaled lblscale, center p[7]);

	label(btex $\vdots$ etex scaled lblscale, (center p[7] - (0, .3levelspan)));

	p[8] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $cn$ etex scaled lblscale, center p[8]);
	
	p[9] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $cn$ etex scaled lblscale, center p[9]);

	drawarrow (center p[3]) shifted (.5span, 0) -- (center p[7]) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p[5]) shifted (.4span, 0) -- (center p[8]) shifted (-.2span, 0) dashed evenly;
	drawarrow (center p[6]) shifted (.2span, 0) -- (center p[9]) shifted (-.2span, 0) dashed evenly;
endfig;

beginfig(5);
	scale := .5cm;
	span := 2scale;
	lblscale := .06scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];

	p[0] := unitsquare scaled scale shifted (leftspan, 0);
	label(btex $n\over 4$ etex scaled lblscale, center p[0]);
	p[1] := unitsquare scaled scale shifted (span+leftspan, 0);
	label(btex $n\over 8$ etex scaled lblscale, center p[1]);
	p[2] := unitsquare scaled scale shifted (2span+leftspan, 0);
	label(btex $n\over 16$ etex scaled lblscale, center p[2]);
	p[3] := unitsquare scaled scale shifted (3span+leftspan, 0);
	label(btex $n\over 8$ etex scaled lblscale, center p[3]);
	p[4] := unitsquare scaled scale shifted (4span+leftspan, 0);
	label(btex $n\over 16$ etex scaled lblscale, center p[4]);
	p[5] := unitsquare scaled scale shifted (5span+leftspan, 0);
	label(btex $n\over 32$ etex scaled lblscale, center p[5]);
	p[6] := unitsquare scaled scale shifted (6span+leftspan, 0);
	label(btex $n\over 16$ etex scaled lblscale, center p[6]);
	p[7] := unitsquare scaled scale shifted (7span+leftspan, 0);
	label(btex $n\over 32$ etex scaled lblscale, center p[7]);
	p[8] := unitsquare scaled scale shifted (8span+leftspan, 0);
	label(btex $n\over 64$ etex scaled lblscale, center p[8]);

	for i:=0 upto 2:
		label(btex $\vdots$ etex scaled lblscale, (center p[3i+1] - (0, .3levelspan)));
	endfor;

	p[9] := unitsquare scaled scale shifted (span+leftspan, levelspan);
	label(btex $n\over 2$ etex scaled lblscale, center p[9]);
	p[10] := unitsquare scaled scale shifted (4span+leftspan, levelspan);
	label(btex $n\over 4$ etex scaled lblscale, center p[10]);
	p[11] := unitsquare scaled scale shifted (7span+leftspan, levelspan);
	label(btex $n\over 8$ etex scaled lblscale, center p[11]);

	for i:=0 upto 2:
		draw (point 0.2 of p[i+9]) -- (point 2.5 of p[3i]);
		draw (point .5 of p[i+9]) -- (point 2.5 of p[3i+1]);
		draw (point 0.8 of p[i+9]) -- (point 2.5 of p[3i+2]);
	endfor;

	p[12] := unitsquare scaled scale shifted (4span+leftspan, 2levelspan);
	label(btex $n$ etex scaled lblscale, center p[12]);

	draw (point 0.2 of p[12]) -- (point 2.5 of p[9]);
	draw (point .5 of p[12]) -- (point 2.5 of p[10]);
	draw (point 0.8 of p[12]) -- (point 2.5 of p[11]);

	p[13] := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\left({7\over 8}\right)^2n$ etex scaled lblscale, center p[13]);

	label(btex $\vdots$ etex scaled lblscale, (center p[13] - (0, .3levelspan)));

	p[14] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex ${7\over 8}n$ etex scaled lblscale, center p[14]);

	p[15] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex $n$ etex scaled lblscale, center p[15]);

	drawarrow (center p[8]) shifted (.5span, 0) -- (center p[13]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[11]) shifted (.5span, 0) -- (center p[14]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[12]) shifted (.5span, 0) -- (center p[15]) shifted (-.8span, 0) dashed evenly;
endfig;

beginfig(6);
	scale := .5cm;
	span := 2scale;
	leftspan := .7span;
	rightcol := 10.5span;
	lowerspan := .5span;
	levelspan := 2span;
	path p[];
	
	drawarrow (0, 1.5levelspan+.4span) -- (0, 3levelspan+.2span);
	drawarrow (0, 1.5levelspan-.2span) -- (0, .2span);
	label(btex $\log_4n$ etex, (0, 1.5levelspan+.1span));

	for i:=0 upto 8:
		p[i] := unitsquare scaled scale shifted (i*span+leftspan, 0);
		label(btex $T(1)$ etex, center p[i]);
		draw (point 2.5 of p[i]) -- (center p[i] + (0, lowerspan)) dashed evenly;
	endfor;

	p[9] := unitsquare scaled scale shifted (leftspan, levelspan);
	label(btex $n\over 4$ etex, center p[9]);
	p[10] := unitsquare scaled scale shifted (span+leftspan, levelspan);
	label(btex $n\over 8$ etex, center p[10]);
	p[11] := unitsquare scaled scale shifted (2span+leftspan, levelspan);
	label(btex $n\over 16$ etex, center p[11]);
	p[12] := unitsquare scaled scale shifted (3span+leftspan, levelspan);
	label(btex $n\over 8$ etex, center p[12]);
	p[13] := unitsquare scaled scale shifted (4span+leftspan, levelspan);
	label(btex $n\over 16$ etex, center p[13]);
	p[14] := unitsquare scaled scale shifted (5span+leftspan, levelspan);
	label(btex $n\over 32$ etex, center p[14]);
	p[15] := unitsquare scaled scale shifted (6span+leftspan, levelspan);
	label(btex $n\over 16$ etex, center p[15]);
	p[16] := unitsquare scaled scale shifted (7span+leftspan, levelspan);
	label(btex $n\over 32$ etex, center p[16]);
	p[17] := unitsquare scaled scale shifted (8span+leftspan, levelspan);
	label(btex $n\over 64$ etex, center p[17]);

	for i:=0 upto 8:
		draw (point 0.2 of p[i+9]) -- (point 0 of p[i+9]) + (0, -.5levelspan);
		draw (point .5 of p[i+9]) -- (point .5 of p[i+9]) + (0, -.5levelspan);
		draw (point 0.8 of p[i+9]) -- (point 1 of p[i+9]) + (0, -.5levelspan);
	endfor;

	p[18] := unitsquare scaled scale shifted (span+leftspan, 2levelspan);
	label(btex $n\over 2$ etex, center p[18]);
	p[19] := unitsquare scaled scale shifted (4span+leftspan, 2levelspan);
	label(btex $n\over 4$ etex, center p[19]);
	p[20] := unitsquare scaled scale shifted (7span+leftspan, 2levelspan);
	label(btex $n\over 8$ etex, center p[20]);

	for i:=0 upto 2:
		draw (point 0.2 of p[i+18]) -- (point 2.5 of p[3i+9]);
		draw (point .5 of p[i+18]) -- (point 2.5 of p[3i+10]);
		draw (point 0.8 of p[i+18]) -- (point 2.5 of p[3i+11]);
	endfor;

	p[21] := unitsquare scaled scale shifted (4span+leftspan, 3levelspan);
	label(btex $n$ etex, center p[21]);

	draw (point 0.2 of p[21]) -- (point 2.5 of p[18]);
	draw (point .5 of p[21]) -- (point 2.5 of p[19]);
	draw (point 0.8 of p[21]) -- (point 2.5 of p[20]);

	p[22] := unitsquare scaled scale shifted (rightcol, 0);
	label(btex $\Theta\left(n^{\lg 3}\right)$ etex, center p[22]);

	p[23] := unitsquare scaled scale shifted (rightcol, levelspan);
	label(btex $\left({7\over 8}\right)^2n$ etex, center p[23]);

	label(btex $\vdots$ etex, .5[center p[22], center p[23]]);
	
	p[24] := unitsquare scaled scale shifted (rightcol, 2levelspan);
	label(btex ${7\over 8}n$ etex, center p[24]);

	p[25] := unitsquare scaled scale shifted (rightcol, 3levelspan);
	label(btex $n$ etex, center p[25]);

	drawarrow (center p[8]) shifted (.5span, 0) -- (center p[22]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[17]) shifted (.5span, 0) -- (center p[23]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[20]) shifted (.5span, 0) -- (center p[24]) shifted (-.8span, 0) dashed evenly;
	drawarrow (center p[21]) shifted (.5span, 0) -- (center p[25]) shifted (-.8span, 0) dashed evenly;

	draw (point 0 of p[0]) .. center p[2] - (0, .4span){right} .. center p[4] - (0, .7span);
	draw (point 1 of p[8]) .. {left}center p[6] - (0, .4span) .. center p[4] - (0, .7span);

	label(btex $n^{\log_43}$ etex, center p[4] - (0, span));
endfig;

end.
