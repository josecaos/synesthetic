//written by @joseCao5
//20 July 2014
//
/////////////////////
//
//Synthetizers
//
/////////////////////
// single synthesizer
(
SynthDef(\single,{|nota=60,att=0.01,rel=0.25,pan=0,gate=1,amp=0.5,out=0|
	var signal,envelope;
	signal = SinOsc.ar(nota.midicps,-0.35,amp)+LFTri.ar(nota.midicps+12,0.35,amp-0.2);
	envelope = EnvGen.ar(Env.perc(att,rel),gate,doneAction:2);
	Out.ar(out,Pan2.ar(signal*envelope,[0.09,-1]));
	}).add;
);
//Chord -> needs CaosPercLib1.1
//checa si existen los acordes de caosperclib
if('CaosGuitChords'.asClass == nil, {
	(
		SynthDef(\chords,{|nota=60,att=0.01,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
			var chord = 'M';
			acorde = chord;
			//class 'CaosGuitChords' belongs to CaosPercLib v1.1:
			Out.ar(out,CaosGuitChords.ar(acorde,0.05,rel,nota,1200,0.5,pan,gate,amp));
		}).add;
	);
},{"Necesitaras la libreria 'caosperclib' para hacer uso de los acordes".postcln});

/*(
SynthDef(\chords,{|nota=60,att=0.01,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var chord = 'M';
	acorde = chord;
			//class 'CaosGuitChords' belongs to CaosPercLib v1.1:
			Out.ar(out,CaosGuitChords.ar(acorde,0.05,rel,nota,1200,0.5,pan,gate,amp));
	}).add;
);*/
// 