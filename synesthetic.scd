//written by @joseCao5 //
//13jul14
//synesthetic or synthesthetic
//Based in a poem remixed by Karla Guillen
////
s.boot;
s.scope(2,0);
//
(
SynthDef(\sonidos,{|nota=60,acorde,pan=0,gate=1|
	var chord = 'M9';
	acorde = chord;
	Out.ar(0,CaosGuitChords.ar(acorde,0.01,1,nota,1200,0.75,pan,gate,1));
	}).add;
);
//
(
Tdef(\palabras,{|i|
	var a,ac,arr,cont;
	i=0;
	ac=Pseq(['M','m','M7','m7','Mmaj7','mmaj7','M9','M9m','m9','m9m'],inf).asStream;
	arr=["Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
			sin vergüenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detrás de la puerta,
			te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
			en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
			paraisos aún presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
			las dimensiones. El recuerdo de este olor también es tu maestro, escucha atento sin dejar de mirar la realidad
			que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de ángel caído, de un dragón sin alas
			pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
			aprendas el arte de arrastrarse con poesía en la oscuridad... al fin la oscuridad sólo existe para
			alumbrarse...".clumps([1,1]).asCompileString.ascii];
	//~synth=Synth(\sonidos);
	inf.do({
		if(i==5191,{i=0});
		a = arr.flatten(1);
		//arr.postln;
		//a.postcln;
		Synth(\sonidos,[\gate,1,\nota,a[i].postln,\chord,ac.next]);
		i.postcln;
		i=i+1;
		cont=i%arr.size;
		0.25.wait;
	});
});
);
Tdef(\palabras).play;
////////////////////////////////////////////////////////
// prueba de poema -> array de strings -> array ascii:
(
		x=["Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
			sin verguenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detras de la puerta,
			te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
			en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
			paraisos aun presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
			las dimensiones. El recuerdo de este olor tambien es tu maestro, escucha atento sin dejar de mirar la realidad
			que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de angel caido, de un dragón sin alas
			pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
			aprendas el arte de arrastrarse con poesia en la oscuridad... al fin la oscuridad solo existe para
	        alumbrarse...".clumps([1,1]).asCompileString];
);
x.ascii.flatten(1);
y=x.ascii.flatten(1);
y[5191].postcln;//max num characters
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