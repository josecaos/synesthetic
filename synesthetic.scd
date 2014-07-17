//written by @joseCao5 //
//13jul14
//song notes determined by text poem
//Based in a poem remixed by Karla Guillen
////
s.boot;
s.scope(2,0);
//
( //* evalua todo esto
(
SynthDef(\sonidos,{|nota=60,rel=0.25,acorde,pan=0,gate=1|
	var chord = 'M9';
	acorde = chord;
	Out.ar(0,CaosGuitChords.ar(acorde,0.05,rel,nota,2200,0.5,pan,gate,1));//this class belongs to CaosPercLib v1.0
	}).add;
);
//
(
Tdef(\palabras,{|i|
	var a,ac,arr,cont,n,tiempo;
	i=0;
	ac=Pxrand(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	tiempo=Pwrand([0.25,0.5,1],[0.53,0.33,0.13],inf).asStream;
	arr="Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
			sin verguenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detras de la puerta,
			te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
			en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
			paraisos aun presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
			las dimensiones. El recuerdo de este olor tambien es tu maestro, escucha atento sin dejar de mirar la realidad
			que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de angel caido, de un dragón sin alas
			pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
			aprendas el arte de arrastrarse con poesia en la oscuridad... al fin la oscuridad solo existe para
			alumbrarse...".clumps([1,1]).ascii;
	a = arr.flatten(1);
	inf.do({
		if(i==1029,{i=0});
		n=a[i];
		if(a[i].value<36,{n=a[i].value+12},{nil});//normaliza lo valores mas bajos de 28.midicps
		if(a[i].value>84,{n=a[i].value-24},{nil});//normaliza los valores mayores de 84.midicps
		Synth(\sonidos,[\gate,1,\nota,n.postln,\chord,ac.next,\rel,rrand(0.25,1)]);
		i=i+1;
		cont=i%arr.size;
		tiempo.next.wait;
	});
});
);
Tdef(\palabras).play;
);
////////////////////////////////////////////////////////
// prueba de poema -> array de strings -> array ascii:
(
		x="Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
			sin verguenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detras de la puerta,
			te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
			en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
			paraisos aun presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
			las dimensiones. El recuerdo de este olor tambien es tu maestro, escucha atento sin dejar de mirar la realidad
			que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de angel caido, de un dragón sin alas
			pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
			aprendas el arte de arrastrarse con poesia en la oscuridad... al fin la oscuridad solo existe para
alumbrarse...".clumps([1,1]);
);
x.asCompileString;
x.size;
x=x.ascii;
x.size;
y=x.flatten(1);
x.size;//mismo tamano del array
y.size//mismo tamano del array
y[1029].postcln;//max num characters
//
Help.gui;
/*
//Serpentario: key words
[ secreta soledad al interior de la serpiente, vé ligero como aire al cosmos, invisible danza de alas rotas,
ancestrales paraísos sin principio ni final, recuerdo-maestro, realidad-dualidad, eco de ángel, fuego, dragón,
serpiente, poesía en la oscuridad para alumbrarse... ]
//Poema:
Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
sin vergüenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detrás de la puerta,
te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
paraisos aún presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
las dimensiones. El recuerdo de este olor también es tu maestro, escucha atento sin dejar de mirar la realidad
que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de ángel caído, de un dragón sin alas
pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
aprendas el arte de arrastrarse con poesía en la oscuridad... al fin la oscuridad sólo existe para alumbrarse...
*/