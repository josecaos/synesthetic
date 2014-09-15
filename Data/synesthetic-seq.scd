//written by @joseCao5
//20 July 2014
////////////////////////////////
//
//Sequence for Synesthetic synth
//
////////////////////////////////
//
(
Tdef(\palabras,{|i|
	var a,ac,acento,cont,n,release,tiempo,t,vel=0.85;
	i=0;
	ac=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	acento=Pseq([1,0.7,0.9,0.6],inf).asStream;
	tiempo=Pwrand([0.25,0.5,1]/vel,[0.63,0.23,0.13],inf).asStream;
    ~inicio.post;
	a = ~poema.clumps([1,1]).ascii.flatten(1);//array con valor ascii
	inf.do({
		~i=i;
		if(~i<=a.size,{
			if(a.size<=~i,{~inicio.postln;i=0;},{nil})
		   },{~inicio.postln;i=0});//regula el reinicio segun el iterante o segun el tamano del poema
		n=a[i];
		i.post+":".post;
		~poema[i].post;
		{
		//texto de salida
		~g.refresh;
		~w.refresh
		}.defer(0.05);
		t=tiempo.next;
		//minimizamos la tesitura
		if(a[i].value<36,{n=a[i].value+12});//normaliza los valores mas bajos de 28.midicps
		if(a[i].value>84,{n=a[i].value-48});//normaliza los valores mayores de 84.midicps
		release=t/vel;//esto hace lo mismo que lo comentado anteriormente
		//release.postln;
		//t.postcln;
		Synth(\synth1,[\gate,1,\nota,n,\chord,ac.next,\rel,release,\amp,acento.next]);
		cont=i%~poema.size;
		i=i+1;
		t.wait;
	});
}).quant_(1);
);
// Help.gui;
" ".ascii.postcln//numero ascii del espacio