//written by @joseCao5
//
//input text
(
~t=Window("Click 'Enter' to input text as notes, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,350,10),false,true);
~t.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~it=TextField(~t,Rect(0,0,720,480)).align_(\topLeft);
~it.background_(Color.green(1,0.2));
~it.string=~poema;
~it.action={|field|
  (~local +/+ "Data/synesthetic-seq.scd").load;
	~poema=field.value;
  ~a = ~poema.clumps([1,1]).ascii.flatten(1);
	}
)