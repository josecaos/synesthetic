//written by @joseCao5
//synesthetic synth, GUI
//
(
~syn_w=Window("Play a songs with letters,written by @IllSlide",Rect.aboutPoint(Window.screenBounds.center,330,60),true).front;
// play/stop
~syn_b=Button(~syn_w,Rect(10,10,40,100));
~syn_b.states_([["PLAY",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["STOP",Color(0,0,0),Color(0,0.9,0)]]);
~syn_b.font_(Font("Sans",11,true));
~syn_b.action = {|val| if(val.value==1,{Tdef(\palabras).play},{Tdef(\palabras).stop})};
//boton entrada texto
~syn_bt=Button(~syn_w,Rect(60,10,100,100));
~syn_bt.states_([["Input Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Close Input txt",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~syn_bt.font_(Font("Helvetica",14,false));
~syn_bt.action = {|val| if(val.value==1,{(~syn_local +/+ "GUI/synesthetic-input_text_GUI.scd").load;~syn_t.front},{~syn_t.close})};
//boton salida texto
~syn_bo=Button(~syn_w,Rect(170,10,100,100));
~syn_bo.states_([["Rough Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Close Rough \n Preview",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~syn_bo.action = {|val| if(val.value==1,{(~syn_local +/+ "GUI/synesthetic-output_text_GUI.scd").load;~syn_o.front},{~syn_o.close})};
//seleccion sintetizador
~syn_sintes = PopUpMenu(~syn_w,Rect(500,10,150,50));
~syn_sintes.items = ["Use Single Note","Use Chords"];
~syn_sintes.action={|menu|
	var v;
	//checa si existe la clase de caosperclib
	if('CaosGuitChords'.asClass != nil, {v = menu.value},
		{v = 0;
			"\n /////////////WARNING:///////////////////".postln + " In order to use Chords you must install 'caosperclib' \n Download it here: \n https://github.com/josecaos/caosperclib \n install it here: ".postln + {Platform.userExtensionDir}.value.postln + " ////////////CONTINUE:////////////////// \n".postln});
	switch(v,0,{~syn_sinte = v},
		1,{~syn_sinte = v};
)};
// cambio de tiempo
StaticText(~syn_w, Rect(390,10,100,20)).string_("BPM").align_(\center)background_(Color(0,0.9,0));
~syn_bpm = NumberBox(~syn_w, Rect(390,30,100,80));
~syn_bpm.action = {|numb| TempoClock.tempo = numb.value/60};
~syn_bpm.valueAction_(60).clipLo_(0).clipHi_(320).align_(\center);
//boton graficos
~syn_bg=Button(~syn_w,Rect(280,10,100,100));
~syn_bg.states_([["Graphs On",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Graphs Off",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~syn_bg.action = {|val| if(val.value==1,{(~syn_local +/+ "GUI/synesthetic-graph_GUI.scd").load;~syn_g.front},{~syn_g.close})};
//  Cambia salida de sinte
StaticText(~syn_w, Rect(550,70,100,40)).string_("Synth Out").align_(\center).background_(Color(0,0.9,0));
~syn_out = NumberBox(~syn_w, Rect(500,70,50,40));
~syn_out.font(Font("Helvetica",30));
~syn_out.action = {|numb| ~syn_salida = numb.value; ("Output: " + numb.value.postln).postcln;};
~syn_out.valueAction_(0).clipLo_(0).clipHi_(128).align_(\center);
// cerrar ventana
// ~syn_w.onClose = {Tdef(\palabras).stop;s.quit};
);
//
//.resizeToFit
// Help.gui