//written by @joseCao5 //
//song notes determined by a poem
////////////////////////////////////
(
s.waitForBoot{

///////////////////load assets/////////////////////
	 ~local = thisProcess.nowExecutingPath.dirname;
	(~local +/+ "Data/synesthetic-load.scd").load};

);
//if the GUI is closed, the server quits

//caosperlib needed to full use, install here:
Platform.userExtensionDir
//end of file