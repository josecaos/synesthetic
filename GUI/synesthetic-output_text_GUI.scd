//written by @joseCao5
//
//Window to input text and convert it to ascii
(
~o=Window("Synesthetic Synth Input Text to Notes, written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,350,125),false,false);
~o.view.background_(Color.fromHexString("#f1f1f1"));
// texto
~io=TextView(~o.asView,Rect(0,0,700,250)).focus(false);
~io.hasHorizontalScroller_(false);
~io.string=~poema;
)
// Help.gui;