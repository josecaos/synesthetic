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
SynthDef(\sonidos,{|nota=60,rel=0.25,acorde,pan=0,gate=1|
	var chord = 'M9';
	acorde = chord;
			//this class belongs to CaosPercLib v1.0:
			Out.ar(0,CaosGuitChords.ar(acorde,0.05,rel,nota,2200,0.5,pan,gate,1));
	}).add;
);
//
