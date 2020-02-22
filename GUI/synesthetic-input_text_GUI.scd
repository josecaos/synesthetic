//written by @joseCao5
//
//input text
(
~syn_t=Window("Write something and Click 'Enter' to input text as notes",Rect.aboutPoint(Window.screenBounds.center,350,10),false,true);
~syn_t.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~syn_it=TextField(~syn_t,Rect(0,0,720,480)).align_(\topLeft);
~syn_it.background_(Color.green(1,0.2));
~syn_it.string=~syn_poema;
~syn_it.action={|field|
  (~syn_local +/+ "Data/synesthetic-seq.scd").load;
	~syn_poema=field.value;
  ~syn_a = ~syn_poema.clumps([1,1]).ascii.flatten(1);
	}
)