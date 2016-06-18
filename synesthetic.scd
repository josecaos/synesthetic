//written by @joseCao5 //
//13jul14
//song notes determined by a poem
////////////////////////////////////
(
s.waitForBoot{

///////////////////`load assets/////////////////////
	 ~local = thisProcess.nowExecutingPath.dirname;
	(~local +/+ "Data/synesthetic-load.scd").load};

);
//if the GUI is closed, the server quits
//install caosperlib here -> Platform.userExtensionDir
//end of file