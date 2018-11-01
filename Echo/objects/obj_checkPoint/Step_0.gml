audio_emitter_position(checkPointEmitter, x ,y, 0);

if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (checkPointFound == true && global.checkPointFirstFoundMessage == true)
	{
		if (checkPointText == noone)
		{	
			checkPointText = instance_create_layer(viewMidWidth, viewHeightMid, "Text", obj_textBox);
			checkPointText.text = textArray;
		}
		global.checkPointFoundMessage = false;
		
	}
}

if (checkPointReveal <= 0 && global.checkPointReached == false)
{
	visible = false;
	global.checkPointCue = false;
	audio_stop_sound(sfx_checkPointDiscovered);
}

if (global.checkPointReached == false)
{
	checkPointReveal = checkPointReveal - 1;
	if (!audio_is_playing(sfx_checkPointDiscovered))
	{
		audio_play_sound_on(checkPointEmitter, sfx_checkPointDiscovered, false, 1);
	}
	global.doorCue = true;
}

if (!instance_exists(obj_player1) && global.checkPointReached == true)
{
	instance_create_layer(x,y,"Instances", obj_player1)
}