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
	var chord,acc,acento,cont,n,release,vel=0.5;
	i=0;
	chord=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	acento=Pseq([0.6,0.3,0.4,0.2],inf).asStream;
    ~inicio.post;
	acc=0.35;
	inf.do({
		~i=i;
		//regula el reinicio segun el iterante o segun el tamano del poema
		if(~i<~a.size,{if(~poema.size<=~i,{~inicio.postln;i=0},{nil})},{~inicio.postln;i=0});
		~poema[i].post;//escribe lo que suena al post
		{
		//graficos
			~g.refresh;
		}.defer(0.05);
		//normalizamos la tesitura a escala musical
		if(~a[i].value == 32,{acc=0;n=nil},{acc=acento.next});//silencio y tiempo constante a los espacios del texto
		if((~a[i].value >= 33) || (~a[i].value <= 64),{acc=acento.next;n=~a[i].value+57});//notas altas F#6 -> C#9 //33 = '!' signos; 48 = 0 numeros;
		if((~a[i].value >= 65) || (~a[i].value <= 96), {acc=acento.next;~a[i].value-37});//notas graves E1 -> B3 //65 = A mayúsculas;
		if((~a[i].value >= 97) || (~a[i].value <= 126),{acc=acento.next;n=~a[i].value-37});//notas medias C4 -> F6 //97 = a minusculas;
		release=1/vel;//release del sinte mismo que el tiempo
		//suena sintetizador seleccionado
		switch(~sinte,
			0, {Synth(\single,[\gate,1,\nota,n,\rel,release,\amp,acc])},
			1, {Synth(\chords,[\gate,1,\nota,n,\chord,chord.next,\rel,release,\amp,acc])}
		);
		cont=i%~poema.size;
		//[~poema[i].ascii,~a[i], n].asString.postcln;//debug
		i=i+1;
		1.wait;
	});
}).quant_(1);
);
// Help.gui;
// " ".ascii.postcln //numero ascii del espacio
