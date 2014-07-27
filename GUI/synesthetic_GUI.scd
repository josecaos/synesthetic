//written by @joseCao5
//synesthetic synth, GUI
//
(
~w=Window("Make songs with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,412,180),true).front.background=Color(50);
~b=Button(~w,Rect(10,10,40,338));
~b.states_([["PLAY",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["STOP",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~b.action={|val| if(val.value==1,{Tdef(\palabras).play},{Tdef(\palabras).stop})};
//boton graficos
~bg=Button(~w,Rect(740,317,75,30));
~bg.states_([["Graphs On",Color.fromHexString("#D9D1D9"),Color.fromHexString("#A0A0A0")],
	            ["Graphs Off",Color.fromHexString("#A0A0A0"),Color.fromHexString("#F8F8F8")]]);
~bg.action={|val| if(val.value==1,{(~local +/+ "GUI/synesthetic-graph_GUI.scd").load;~g.front},{~g.close})};
//texto de entrada
~t=TextField(~w,Rect(55,148,680,200)).align_(\topLeft);
~t.string=~poema;
~t.action={|field| field.value.absoluteBounds=Rect(0,0,0,100)};
//
~w.onClose={Tdef(\palabras).stop;s.quit};
);
//
//.resizeToFit
//
/*
//ej:
(
w = Window.new.front;
a = TextField(w, Rect(10, 10, 150, 20));
a.string = "hi there";
a.action = {arg field; field.value.postln; };
)

// does not do the action
a.value = "yo";
a.string = "oy";

a.valueAction_("this is not a pipe"); //does the action, if the value has changed
a.doAction; //evaluates the action with the content of the text field as an argument

a.background_(Color.grey);
a.stringColor_(Color.white);
a.align_(\center);
*/