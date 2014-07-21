//written by @joseCao5
//synesthetic GUI
//Help.gui;
//
(
~w=Window("Make songs with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,412,180),true).front.background=Color(255);
~t=TextField(~w,Rect(20,100,780,200)).align_(\topLeft);
~t.string=~poema.clumps([1,1]);
~t.action={|field| field.value = ~poema.clumps([1,1]);
//
~w.onClose={Tdef(\palabras).stop;s.quit};
}
);

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