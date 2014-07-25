//written by @joseCao5
//20 July 2014
//
/////////////////////
//
//Synthetizers
//
/////////////////////
//Chord Synth -> needs CaosPercLib1.0
(
SynthDef(\synth1,{|nota=60,rel=0.25,acorde,pan=0,gate=1,amp=0.5,out=0|
	var chord = 'M9';
	acorde = chord;
			//this class 'CaosGuitChords' belongs to CaosPercLib v1.0:
			Out.ar(out,CaosGuitChords.ar(acorde,0.05,rel,nota,2200,0.5,pan,gate,amp));
	}).add;
);
//
