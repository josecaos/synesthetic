//written by @joseCao5
//20 July 2014
//
/////////////////////
//
//Synthetizers
//
/////////////////////
//Chord Synth1 -> needs CaosPercLib1.1
(
SynthDef(\synth1,{|nota=60,att=0.01,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var chord = 'm';
	acorde = chord;
			//class 'CaosGuitChords' belongs to CaosPercLib v1.1:
			Out.ar(out,CaosGuitChords.ar(acorde,0.05,rel,nota,1200,0.5,pan,gate,amp));
	}).add;
);
//
// Synth2 -> single synthesizer
(
SynthDef(\synth2,{|nota=60,att=0.01,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var signal,envelope;
	signal = SinOsc.ar(nota.midicps,0,0.7)+LFTri.ar(nota.midicps+12,0.5,0.3).lag(0.012);
	envelope = EnvGen.ar(Env.perc(att,rel),gate,doneAction:2);
	Out.ar(out,Pan2.ar(signal*envelope,[0.09,-1]));
	}).add;
);
