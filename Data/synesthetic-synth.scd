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
SynthDef(\synth1,{|nota=60,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var chord = 'm9m';
	acorde = chord;
			//class 'CaosGuitChords' belongs to CaosPercLib v1.1:
			Out.ar(out,CaosGuitChords.ar(acorde,0.05,rel,nota,1200,0.5,pan,gate,amp));
	}).add;
);
//
