//written by @joseCao5
//synesthetic synth, GUI
//
(
~w=Window("Make a song with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,245,180),true).front;
// play/stop
~b=Button(~w,Rect(10,10,40,338));
~b.states_([["PLAY",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["STOP",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~b.action={|val| if(val.value==1,{Tdef(\palabras).play},{Tdef(\palabras).stop})};
//boton entrada texto
~bt=Button(~w,Rect(60,10,100,100));
~bt.states_([["Input Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Close Input txt",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bt.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-input_text_GUI.scd").load;~t.front},{~t.close})};
//boton salida texto
~bo=Button(~w,Rect(60,128,100,100));
~bo.states_([["Output Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Close Output",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bo.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-output_text_GUI.scd").load;~o.front},{~o.close})};
//boton seleccion sintetizador
~boton_sintes=Button(~w,Rect(170,10,100,100));
~boton_sintes.states_([["Use Chords",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Use Single Note",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~boton_sintes.action={|val| if(val.value==1,{~sinte = 0},{~sinte = 1})};

//boton graficos
~bg=Button(~w,Rect(60,248,100,100));
~bg.states_([["Graphs On",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Graphs Off",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bg.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-graph_GUI.scd").load;~g.front},{~g.close})};
// texto escrito
~w.drawFunc = {
	//  ~poema.drawLeftJustIn(Rect(60,-100,690,350),Font("Sans", 12),Color.black(0.5, 0.75));
	//~poema[~i].asString.drawInRect(Rect(60,-100,690,350),Font("Sans", 12),Color.red(0.5, 0.75));
	};//escribe el poema;
// cerrar ventana
~w.onClose={Tdef(\palabras).stop;s.quit};
);
//
//.resizeToFit
// Help.gui