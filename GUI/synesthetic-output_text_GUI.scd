//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~syn_o=Window("Sounding text preview",Rect.aboutPoint(Window.screenBounds.center,350,125),false,true);
~syn_o.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~syn_io=TextView(~syn_o.asView,Rect(0,0,700,250)).focus(false).editable_(false);
~syn_io.hasHorizontalScroller_(false);
~syn_io.string=~syn_poema;
)
// Help.gui;