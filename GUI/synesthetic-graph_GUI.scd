//written by @joseCao5
//
//a graphic pad for synesthetic synth
//Pen window
//all random, for now.
(
~syn_g=Window("Synesthetic Synth Graphs,written by @joseCao5",Rect.aboutPoint(Window.screenBounds.center,300,280),true,false);
~syn_g.view.background_(Color.fromHexString("#A3A3A3"));


// Help.gui;

~syn_g.drawFunc = {
	for ( 0, 36, {
		Pen.strokeColor = Color.fromHexString("#000000");
	  Pen.width = rrand(3,45);
    Pen.translate(rrand(10,300),rrand(10,300));
    Pen.scale(rrand(0.01,1), rrand(0.5,4));
	  Pen.moveTo(rrand(-10,400)@rrand(-10,400));
    Pen.lineTo(rrand(10,-700)@rrand(10,-300));
		Pen.strokeOval(Rect(100,800,800,100));
	  Pen.strokeOval(Rect(100,800,800,100));
	  Pen.strokeColor = Color.fromHexString("#00FF00");
  	Pen.width = rrand(1,15);
	//Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(-10,100)@rrand(10,-300));
	  Pen.moveTo(rrand(-10,300)@rrand(-10,400));
    Pen.lineTo(rrand(-10,400)@rrand(-10,-200));
    Pen.strokeColor = Color.fromHexString("#FF8000");
  	Pen.width = rrand(1,15)*3;
	//Pen.scale(rrand(0.1,1),  rrand(1,4));
	  Pen.lineTo(rrand(-10,300)@rrand(-10,400));
   	Pen.moveTo(rrand(10,-400)@rrand(-10,400));
	  Pen.strokeOval(Rect(100,800,800,100));
	  Pen.lineTo(rrand(-10,-400)@rrand(10,-400));
    Pen.strokeColor = Color.fromHexString("#FFFFFF");
	  Pen.width = rrand(1,15);
	//Pen.scale(rrand(0.1,1), rrand(1,4));
    Pen.lineTo(rrand(10,400)@rrand(10,400));
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-400));
  	Pen.width = rrand(1,15);
    Pen.lineTo(rrand(10,-400)@rrand(-10,-300));
  	Pen.width = rrand(1,8)*2;
    Pen.lineTo(rrand(-10,-400)@rrand(-10,-400));
		Pen.stroke;
	});
};
)