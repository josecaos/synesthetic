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
	var a,ac,acento,cont,n,release,tiempo,t,vel=0.5;
	i=0;
	ac=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	acento=Pseq([1,0.7,0.9,0.6],inf).asStream;
	tiempo=Pwrand([0.25,0.5,1]/vel,[0.63,0.23,0.13],inf).asStream;
    ~inicio.post;
	a = ~poema.clumps([1,1]).ascii.flatten(1);
	inf.do({
		~i=i;
		if(i>=~poema,{"Starting Again: \n".postcln;i=0});
		n=a[i];
		~poema[i].post;
		t=tiempo.next;//unificar ~poema[i].post;el resultado del tiempo
		//minimizamos la tesitura
		if(a[i].value<36,{n=a[i].value+12});//normaliza los valores mas bajos de 28.midicps
		if(a[i].value>84,{n=a[i].value-48});//normaliza los valores mayores de 84.midicps
		/*
		if(t==0.25,{release=0.25},{
				if(t==0.5,{release=0.5},{
						release=1})
				});//estos condicionales igualan la duracion del tiempo con la del release del SynthDef
		*/
		release=t/vel;//esto hace lo mismo que lo comentado anteriormente
		//release.postln;
		//t.postcln;
		Synth(\synth1,[\gate,1,\nota,n,\chord,ac.next,\rel,release,\amp,acento.next]);
		i=i+1;
		cont=i%~poema.size;
		{
		//texto de salida
		~g.refresh;
		~w.refresh}.defer(0.05);
		t.wait;
	});
});
);
// Help.gui;