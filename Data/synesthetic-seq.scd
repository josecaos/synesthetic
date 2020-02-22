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
	chord=Prand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	acento=Pseq([0.4,0.25,0.3,0.15],inf).asStream;
	~syn_inicio.post;
	acc=0.35;
	inf.do({
		~syn_i=i;
		//regula el reinicio segun el iterante o segun el tamano del poema
		if(~syn_i<~syn_a.size,{if(~syn_poema.size<=~syn_i,{~syn_inicio.postln;i=0},{nil})},{~syn_inicio.postln;i=0});
		~syn_poema[i].post;//escribe lo que suena al post
		{
			//graficos
			~syn_g.refresh;
		}.defer(0.05);
		//normalizamos la tesitura a escala musical
		if(~syn_a[i].value == 32,{acc=0;n=nil},{acc=acento.next});//silencio y tiempo constante a los espacios del texto
		if((~syn_a[i].value >= 33) || (~syn_a[i].value <= 64),{acc=acento.next;n=~syn_a[i].value+57});//notas altas F#6 -> C#9 //33 = '!' signos; 48 = 0 numeros;
		if((~syn_a[i].value >= 65) || (~syn_a[i].value <= 96), {acc=acento.next;~syn_a[i].value-37});//notas graves E1 -> B3 //65 = A mayúsculas;
		if((~syn_a[i].value >= 97) || (~syn_a[i].value <= 126),{acc=acento.next;n=~syn_a[i].value-37});//notas medias C4 -> F6 //97 = a minusculas;
		release=1/vel;//release del sinte mismo que el tiempo
		//suena sintetizador seleccionado
		~syn_salida.postcln;
		switch(~syn_sinte,
			0, {Synth(\single,[\gate,1,\nota,n,\rel,release,\amp,acc,\out,~syn_salida])},
			1, {Synth(\chords,[\gate,1,\nota,n,\chord,chord.next,\rel,release,\amp,acc,\out,~syn_salida])}
		);
		cont=i%~syn_poema.size;
		//[~syn_poema[i].ascii,~syn_a[i], n].asString.postcln;//debug
		i=i+1;
		1.wait;
	});
}).quant_(1);
);
// " ".ascii.postcln //numero ascii del espacio
