if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (enemyFirstKill == true && global.enemyFirstKillMessage == true)
	{
		if (enemyText == noone)
		{	
			enemyText = instance_create_layer(viewMidWidth, viewHeightMid, "Text", obj_textBox);
			enemyText.text = textArray;
		}
		global.enemyFirstKillMessage = false;
		
	}
}