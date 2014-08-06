//written by @joseCao5
//synesthetic synth, GUI
//
(
~w=Window("Make a song with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,412,180),true).front;
~b=Button(~w,Rect(10,10,40,338));
~b.states_([["PLAY",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["STOP",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~b.action={|val| if(val.value==1,{Tdef(\palabras).play},{Tdef(\palabras).stop})};
//boton graficos
~bg=Button(~w,Rect(740,317,75,30));
~bg.states_([["Graphs On",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Graphs Off",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bg.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-graph_GUI.scd").load;~g.front},{~g.close})};
//boton entrada texto
~bt=Button(~w,Rect(55,117,110,30));
~bt.states_([["Input Text",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Close Input Text",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bt.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-input_text_GUI.scd").load;~t.front},{~t.close})};
~w.drawFunc = {~poema.drawLeftJustIn(Rect(60,50,680,350),Font("Sans", 11),Color.black(0.5, 0.75))};//escribe el poema
// cerrar ventana
~w.onClose={Tdef(\palabras).stop;s.quit};
);
//
//.resizeToFit
// Help.gui