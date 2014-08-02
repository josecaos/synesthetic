//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~t=Window("Synesthetic Synth Input Text to Notes, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,250,250),false,true);
~t.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~it=TextField(~t,Rect(0,0,500,500)).align_(\topLeft);
~it.background_(Color.green(1,0.2));
~it.string=~poema;
~it.action={|field| ~poema=field.value};
)
//~t.close;
//~t.refresh;
// Help.gui;