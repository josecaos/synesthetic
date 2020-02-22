//written by @joseCao5
//20 July 2014
////////////////////////////////
//
//load files
//
///////////////////////////////
//
//
11.do{"Letters to sound, poems to music".postln};
//
//tiempo base
TempoClock.tempo = 60/60;
//
//files to load
//
(~syn_local +/+ "Data/synesthetic-vars.scd").load;
(~syn_local +/+ "Data/synesthetic-synth.scd").load;
(~syn_local +/+ "Data/synesthetic-seq.scd").load;
(~syn_local +/+ "GUI/synesthetic-graph_GUI.scd").load;
(~syn_local +/+ "GUI/synesthetic-input_text_GUI.scd").load;
(~syn_local +/+ "GUI/synesthetic-output_text_GUI.scd").load;
(~syn_local +/+ "GUI/synesthetic_GUI.scd").load;
//