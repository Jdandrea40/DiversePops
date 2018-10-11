if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (place_meeting(x, y, obj_player1))
	{
		if (wallText == noone)
		{	
			wallText = instance_create_layer(viewMidWidth, viewMidWidth, "Text", obj_textBox);
			wallText.text = textArray;
			instance_destroy();
		}
		
	}
}