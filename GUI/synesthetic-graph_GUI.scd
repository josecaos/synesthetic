//written by @joseCao5
//
//a graphic pad for synesthetic synth
//Pen window
//all random, for now.
(
~g=Window("Synesthetic Synth Graphs,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,300,280),true,false);
~g.view.background_(Color.fromHexString("#A3A3A3"));
~g.drawFunc = {
    Pen.strokeColor = Color.rand;
	  Pen.width = rrand(3,45);
    Pen.translate(rrand(10,300),rrand(10,300));
    Pen.scale(rrand(0.01,1), rrand(0.5,4));
	  Pen.moveTo(rrand(-10,400)@rrand(-10,400));
    Pen.lineTo(rrand(10,-700)@rrand(10,-300));
		Pen.strokeOval(Rect(100,800,800,100));
	  Pen.strokeOval(Rect(100,800,800,100));
	  Pen.strokeColor = Color.rand;
  	Pen.width = rrand(1,15);
	//Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(-10,700)@rrand(10,-400));
	  Pen.moveTo(rrand(-10,400)@rrand(-10,400));
    Pen.lineTo(rrand(-10,400)@rrand(-10,-300));
    Pen.strokeColor = Color.rand;
  	Pen.width = rrand(1,15);
	//Pen.scale(rrand(0.1,1),  rrand(1,4));
	  Pen.lineTo(rrand(-10,300)@rrand(-10,400));
   	Pen.moveTo(rrand(10,-400)@rrand(-10,400));
	  Pen.strokeOval(Rect(100,800,800,100));
	  Pen.lineTo(rrand(-10,-400)@rrand(10,-400));
    Pen.strokeColor = Color.rand;
	  Pen.width = rrand(1,15);
	//Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(10,400)@rrand(10,400));
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-400));
  	Pen.width = rrand(1,15);
    Pen.lineTo(rrand(10,-400)@rrand(-10,-300));
  	Pen.width = rrand(1,15);
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-400));
    Pen.stroke
};
)