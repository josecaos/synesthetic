//written by joseCao5
//
//a graphic pad for synesthetic synth
//Pen window
//all random, for now.
(
~g=Window("Make songs with letters,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,0,0),true);
~g.view.background_(Color.rand);
~g.drawFunc = {
    Pen.strokeColor = Color.black;
    Pen.translate(rrand(10,300),rrand(10,300));
    Pen.scale(rrand(0.1,1), rrand(1,4));
	Pen.moveTo(rrand(10,100)@rrand(10,100));
    Pen.lineTo(rrand(10,300)@rrand(10,300));
	Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(10,400)@rrand(10,400));
    Pen.lineTo(rrand(10,400)@rrand(10,300));
	Pen.scale(rrand(0.1,1), rrand(1,4));
	Pen.lineTo(rrand(10,300)@rrand(10,300));
    Pen.lineTo(rrand(10,400)@rrand(10,400));
	Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(10,400)@rrand(10,300));
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-400));
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-300));
    Pen.lineTo(0@0);
    Pen.stroke
};
)