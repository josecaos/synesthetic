//written by @joseCao5
//
//a graphic pad for synesthetic synth
//Window to input text and convert it to ascii
(
~t=Window("Synesthetic Synth Input Text to Note, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,200,120),true,false);
~t.view.background_(Color.fromHexString("#f4f4f4"));
// texto
~it=TextField(~t,Rect(0,0,400,240)).align_(\topLeft);
~it.string=~poema;
~it.action={|field| field.value.absoluteBounds=Rect(0,0,0,100)};
)
// ~t.close