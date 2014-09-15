//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~t=Window("Click 'Enter' to input text as notes, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,350,10),false,true);
~t.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~it=TextField(~t,Rect(0,0,700,20)).align_(\topLeft);
~it.background_(Color.green(1,0.2));
~it.string=~poema;
~it.action={|field| (~local +/+ "Data/synesthetic-seq.scd").load; ~poema=field.value};
)
//~t.close;
//~t.refresh;
// Help.gui;