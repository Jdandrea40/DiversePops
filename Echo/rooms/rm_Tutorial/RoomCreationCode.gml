// Sets Tutorial Mode variable
global.tutorialActivated = true;

// Text positioning setup support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3;
viewHeightMid = view_yport[0]+ view_hport[0] * 0.3;


introText = noone;
// Standard Control Text Setup
if (global.controlChoice == 1)
{
	
	textArray[0] = "Welcome to Echo, press Enter to continue";
	textArray[1] = "You are lost in the dungeon, blind and alone. You must find the exit to escape this miserable place.";
	textArray[2] = "Move around with W, A, S, and D keys"
	textArray[3] = "In order to see, press SpaceBar to reveal your surroundings";
}
// Mouse Only Text
else if (global.controlChoice == 2)
{
	textArray[0] = "Welcome to Echo, press Enter to continue";
	textArray[1] = "You are lost in the dungeon, blind and alone. You must find the exit to escape this miserable place.";
	textArray[2] = "Use Left Click to move to a point on the map"
	textArray[3] = "In order to see, press Right Click to reveal your surroundings";
}

// Displays intro message
if (introText == noone)
{	
	introText = instance_create_layer(viewMidWidth, viewHeightMid, "Text", obj_textBox);
	introText.text = textArray;

}


		

