//written by @joseCao5
//20 July 2014
/////////////////////////
//
//variables globales
//
////////////////////////
//iteracion global
~i=0;
//barra de inicio
~inicio="\n /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/Starting:\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ \n".postln;
//Poema por default, esta variable cambia de acuerdo al texto introducido en el GUI
~poema="Existe una puerta secreta en los brazos de la soledad que te conduce al interior de un abismo donde juegas
sin verguenza a domar la serpiente que habita en ti, cuando nadie te ve, cuelgas las mentiras detras de la puerta,
te quedas ligero como una personalidad de aire y develas al cosmos los secretos de un existir invisible que llevas
en tus silencios, la serpiente danza con su traje de alas rotas y en cada movimiento el perfume de ancestrales
paraisos aun presentes se puede oler, es un aroma sin principio ni final que se esparce desde siempre en todas
las dimensiones. El recuerdo de este olor tambien es tu maestro, escucha atento sin dejar de mirar la realidad
que refleja el espejo de la Dualidad. La voz de este abismo tiene un eco de angel caido, de un dragon sin alas
pero con el poder del fuego en el consejo de su boca que te pide entres en la serpiente para cambiar de piel y
aprendas el arte de arrastrarse con poesia en la oscuridad... al fin la oscuridad solo existe para
alumbrarse...";
//indice del poema
~a = ~poema.clumps([1,1]).ascii.flatten(1);//array con valor ascii
/*
//Based in a poem remixed by Karla Guillen
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