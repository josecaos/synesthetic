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
//
//Revisa si esta instalada la libreria caosperclib
// sino esta instalada, no tirara error
(
SynthDef(\chords,{|nota=60,att=0.01,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var chord = 'M';
	var caosguitchords = 'CaosGuitChords'.asClass;
	acorde = chord;
	if(caosguitchords != nil, {
		Out.ar(out,caosguitchords.ar(acorde,0.05,rel,nota,1200,0.5,pan,gate,amp));
		},{
			Out.ar(out,ar(SinOsc));"You'll need 'caosperclib' to use chords".warn;
	});
}).add;
);
 