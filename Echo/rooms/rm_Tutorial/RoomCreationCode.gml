// Text support
// Text setup support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0]* 0.3


introText = noone;
textArray[0] = "Welcome to Echo, press Enter to continue";
textArray[1] = "You are lost in the dungeon, blind and alone. You must find the exit to escape this miserable place.";
textArray[2] = "In order to see, press SpaceBar to reveal your surroundings";

if (introText == noone)
{	
	introText = instance_create_layer(viewMidWidth, viewHeightMid, "Text", obj_textBox);
	introText.text = textArray;

}

global.tutorialActivated = true;
		

