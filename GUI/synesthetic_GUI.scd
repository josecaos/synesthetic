//written by @joseCao5
//synesthetic synth, GUI
//
(
~w=Window("Play a songs with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,245,180),true).front;
// play/stop
~b=Button(~w,Rect(10,10,40,338));
~b.states_([["PLAY",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["STOP",Color(0,0,0),Color(0,0.9,0)]]);
~b.action = {|val| if(val.value==1,{Tdef(\palabras).play},{Tdef(\palabras).stop})};
//boton entrada texto
~bt=Button(~w,Rect(60,10,100,100));
~bt.states_([["Input Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Close Input txt",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bt.action = {|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-input_text_GUI.scd").load;~t.front},{~t.close})};
//boton salida texto
~bo=Button(~w,Rect(60,128,100,100));
~bo.states_([["Preview \n Output Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Close Output \n Preview",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bo.action = {|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-output_text_GUI.scd").load;~o.front},{~o.close})};
//seleccion sintetizador
~sintes = PopUpMenu(~w,Rect(170,10,150,40));
~sintes.items = ["Use Single Note","Use Chords"];
~sintes.action={|menu|
	var v;
	//checa si existe la clase de caosperclib
	if('CaosGuitChords'.asClass != nil, {v = menu.value},
		{v = 0;"In order to user Chords you must install 'caosperclib' \n Download here: \n https://github.com/josecaos/caosperclib \n install here: ".postln + {Platform.userExtensionDir}.value.postln});
	switch(v,0,{~sinte = v},
		1,{~sinte = v};
)};
// cambio de tiempo
StaticText(~w, Rect(220,60,100,40)).string_("BPM").align_(\center).background_(Color(0,0.9,0));
~bpm = NumberBox(~w, Rect(170,60,50,40));
~bpm.action = {|numb| TempoClock.tempo = numb.value/60};
~bpm.valueAction_(60).clipLo_(20).clipHi_(260).align_(\center);
//boton graficos
~bg=Button(~w,Rect(60,248,100,100));
~bg.states_([["Graphs On",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	["Graphs Off",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bg.action = {|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-graph_GUI.scd").load;~g.front},{~g.close})};
// cerrar ventana
~w.onClose = {Tdef(\palabras).stop;s.quit};
);
//
//.resizeToFit
// Help.gui