//written by @joseCao5 //
//13jul14
//song notes determined by a poem
////////////////////////////////////
(
s.waitForBoot{
	 ~local="/home/josecao5/Documents/Repos/synesthetic/";/* <--- Change for your local URL to synesthetic folder location*/
	////////////////////////////////////////////////////////
	(~local +/+ "Data/synesthetic-load.scd").load};
    s.scope(2,0);
);
//if the GUI is closed, the server quits
//end of file
// Help.gui