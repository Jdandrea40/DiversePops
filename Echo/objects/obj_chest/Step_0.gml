if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (place_meeting(x, y, obj_player1))
	{
		if (chestText == noone)
		{	
			chestText = instance_create_layer(x, y, "Text", obj_textBox);
			chestText.text = textArray;
		}
		
	}
}

// Chest visibilty
if (visible = true)
{
	chestVisDur = chestVisDur - 1;	
}

if (chestVisDur > 0)
{
	chestVisDur = chestVisDur - 1;
}

if(chestVisDur < 1)
{
	visible = false;	
}

// Sound for chests
if (chestVisDur > 0 && !audio_exists(chestSound))
{
	chestSound = audio_play_sound_at(sfx_chestFound, x, y, 0, 30, 100, 1, true, 1)
}
else if (chestVisDur < 0)
{
	audio_stop_sound(sfx_chestFound)
}