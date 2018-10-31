// Displays first chest collected
if (place_meeting(x, y, obj_player1))
{
	if (charChestText == noone)
	{	
		charChestText = instance_create_layer(viewMidWidth, viewHeightMid, "Instances", obj_textBox);
		charChestText.text = textArray;
	}

		
}

// Chest visibilty
if (visible = true)
{
	charChestVisDur = charChestVisDur - 1;	
}

if (charChestVisDur > 0)
{
	charChestVisDur = charChestVisDur - 1;
}

if(charChestVisDur < 1)
{
	visible = false;	
}

// Sound for chests
if (charChestVisDur > 0 && !audio_exists(charChestSound))
{
	charChestSound = audio_play_sound_at(sfx_chestFound, x, y, 0, 30, 100, 1, true, 1)
}
else if (charChestVisDur < 0)
{
	audio_stop_sound(sfx_chestFound)
}