//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~o=Window("Sounding text preview",Rect.aboutPoint(Window.screenBounds.center,350,125),false,true);
~o.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~io=TextView(~o.asView,Rect(0,0,700,250)).focus(false).editable_(false);
~io.hasHorizontalScroller_(false);
~io.string=~poema;
)
// Help.gui;