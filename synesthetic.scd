//written by @joseCao5 //
//song notes determined by letters
/////////////To start execute this function/////////////////
(
s.waitForBoot{
	///////////////////load assets/////////////////////
	~local = thisProcess.nowExecutingPath.dirname;
	(~local +/+ "Data/synesthetic-load.scd").load;
};
);
//if the GUI is closed, the server quits
