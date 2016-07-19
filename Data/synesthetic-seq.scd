//written by @joseCao5
//20 July 2014
////////////////////////////////
//
//Sequence for Synesthetic synth
//
///////////////////////////////
//
(
Tdef(\palabras,{|i|
	var chord,acc,acento,cont,n,release,tiempo,t,vel=0.5;
	i=0;
	chord=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	acento=Pseq([1,0.6,0.8,0.5],inf).asStream;
	tiempo=Pwrand([0.125,0.25]/vel,[0.66,0.33],inf).asStream;
    ~inicio.post;
	acc=0.5;
	inf.do({
		~i=i;
		//regula el reinicio segun el iterante o segun el tamano del poema
		if(~i<~a.size,{if(~poema.size<=~i,{~inicio.postln;i=0},{nil})},{~inicio.postln;i=0});
		~poema[i].post;//escribe lo que suena al post
		{
		//graficos
			~g.refresh;
		}.defer(0.05);
		//normalizamos la tesitura a 2 octavas base
		if(~a[i].value<33,{acc=acento.next;n=~a[i].value+12});//33 = '!' signos; 48 = 0 numeros; 65 = A letras;
		if(~a[i].value>=97,{acc=acento.next;n=~a[i].value-32});//97 = a;
		if(~a[i].value==32,{acc=0;t=1;n=nil},{acc=acento.next;t=tiempo.next});//silencio y tiempo constante a los espacios del texto
		release=t/vel;//release del sinte mismo que el tiempo
		//suena sintetizador seleccionado
		switch(~sinte,
			0, {Synth(\single,[\gate,1,\nota,n,\rel,release,\amp,acc])},
			1, {Synth(\chords,[\gate,1,\nota,n,\chord,chord.next,\rel,release,\amp,acc])}
		);
		cont=i%~poema.size;
		//[~poema[i].ascii,~a[i], n].asString.postcln;//debug
		i=i+1;
		t.wait;
	});
}).quant_(1);
);
// Help.gui;
// " ".ascii.postcln //numero ascii del espacio
