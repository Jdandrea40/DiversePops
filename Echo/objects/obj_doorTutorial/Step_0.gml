if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (place_meeting(x, y, obj_player1))
	{
		if (doorWinText == noone)
		{	
			doorWinText = instance_create_layer(viewMidWidth, viewMidWidth, "Text", obj_textBox);
			doorWinText.text = textArray;
			instance_destroy();
		}
		
	}
}