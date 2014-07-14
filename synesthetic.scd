//written by @joseCao5 //
//13jul14
//synesthetic or synthesthetic
//Based in a poem remixed by Karla Guillen
//// me quede probando con el intercambio de array string y ascii
s.boot;
Help.gui;
// Tarea para probar el comportamiento del poema
(
Task({|i|
	var arr,z;
	i=0;
	inf.do({
		i=i+1;
		z=3;
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
		if(i>300,{i=0});
		arr.flatten(1);
		arr[i].postcln;
		~res=i%arr.size;
		//arr.postcln;
		i.postln;
		0.25.wait;
	});
}).play;
);
// pruebas:
(
		x=["Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
			sin vergüenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detrás de la puerta,
			te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
			en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
			paraisos aún presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
			las dimensiones. El recuerdo de este olor también es tu maestro, escucha atento sin dejar de mirar la realidad
			que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de ángel caído, de un dragón sin alas
			pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
			aprendas el arte de arrastrarse con poesía en la oscuridad... al fin la oscuridad sólo existe para
			alumbrarse...".clumps([1,1]).asCompileString];
);
x.ascii;
x.flatten(8);
x[1].postcln;
//
////
a=["ka","rl","it","aa"].join.ascii.join;
(
b=[
	"Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas".clumps([1,1]).asCompileString.ascii;
];
b.flatten(1);
);
[1, 2, 1, 2, 3, 1, 2, 1, 3].separate({ arg a, b; (b - a) > 1 }).postcs;
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