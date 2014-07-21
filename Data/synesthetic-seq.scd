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
	var a,ac,cont,n,release,tiempo,t,vel=0.5;
	i=0;
	ac=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	tiempo=Pwrand([0.25,0.5,1]/vel,[0.63,0.23,0.13],inf).asStream;
    ~inicio.postln;
	a = ~poema.ascii.flatten(1);
	inf.do({
		if(i==1028,{"Starting Again: \n".postcln;i=0});
		n=a[i];
		~poema[i].post;
		t=tiempo.next;//igualamos
		if(a[i].value<36,{n=a[i].value+12},{nil});//normaliza lo valores mas bajos de 28.midicps
		if(a[i].value>84,{n=a[i].value-48},{nil});//normaliza los valores mayores de 84.midicps
		/*
		if(t==0.25,{release=0.25},{
				if(t==0.5,{release=0.5},{
						release=1})
				});//estos condicionales igualan la duracion del tiempo con la del release del SynthDef
		*/
		release=t/vel;//esto hace lo mismo que lo comentado anteriormente
		//release.postln;
		//t.postcln;
				Synth(\sonidos,[\gate,1,\nota,n,\chord,ac.next,\rel,release]);
		i=i+1;
		cont=i%~poema.size;
		t.wait;
	});
});
);
Tdef(\palabras).play;