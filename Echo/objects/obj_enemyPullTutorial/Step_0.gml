if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (place_meeting(x, y, obj_player1))
	{
		if (enemyPullText == noone)
		{	
			enemyPullText = instance_create_layer(viewMidWidth, viewMidWidth, "Text", obj_textBox);
			enemyPullText.text = textArray;
			instance_destroy();
		}
		
	}
}