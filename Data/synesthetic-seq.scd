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
	tiempo=Pwrand([0.25,0.5]/vel,[0.66,0.33],inf).asStream;
    ~inicio.post;
	a = ~poema.clumps([1,1]).ascii.flatten(1);//array con valor ascii
	inf.do({
		~i=i;
		if(~i<a.size,{if(~poema.size<=~i,{~inicio.postln;i=0},{nil})},{~inicio.postln;i=0});//regula el reinicio segun el iterante o segun el tamano del poema
		~poema[i].post;//escribe lo que suena al post
		{
		//texto de salida
		~g.refresh;
			~w.drawFunc = {~poema.[~i],Color.black(0.5, 0.75))}.refresh;
		}.defer(0.05);
		//normalizamos la tesitura a 2 octavas base
		if(a[i].value<33,{n=a[i].value+12});//33 =!; 49 = 0; 65 = A;
		if(a[i].value>=97,{n=a[i].value-32});//97 = a;
		if(a[i].value==32,{t=1;n=nil.asString},{t=tiempo.next});//asigna silencio y un valor de tiempo constante a los espacios del texto
		release=t/vel;//release del sinte mismo tiempo que lo que dura el tiempo
		Synth(\synth1,[\gate,1,\nota,n,\chord,ac.next,\rel,release,\amp,acento.next]);
		cont=i%~poema.size;
		[a[i], n].asString.postcln;
		i=i+1;
		t.wait;
	});
}).quant_(1);
);
s.scope(2,0);
// Help.gui;
// " ".ascii.postcln //numero ascii del espacio