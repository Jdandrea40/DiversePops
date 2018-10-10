if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (place_meeting(x, y, obj_player1))
	{
		if (enemyText == noone)
		{	
			enemyText = instance_create_layer(viewMidWidth, viewMidWidth, "Text", obj_textBox);
			enemyText.text = textArray;
			instance_destroy();
		}
		
	}
}