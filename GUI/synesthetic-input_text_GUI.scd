//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~t=Window("Synesthetic Synth Input Text to Notes, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,500,15),false,true);
~t.view.background_(Color.fromHexString("#f1f1f1")).front;
// texto
~it=TextField(~t,Rect(0,0,1000,30)).align_(\topLeft);
~it.background_(Color.green(1,0.2));
~it.string=~poema;
~it.action={|field| field.value=~poema.postln};
)
//~t.close;
//~t.refresh;