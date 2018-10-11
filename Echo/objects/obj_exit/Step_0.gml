audio_emitter_position(doorEmitter, x ,y, 0);

if (global.tutorialActivated = true)
{
	// Displays first chest collected
	if (doorFound == true && global.doorFirstFoundMessage == true)
	{
		if (doorText == noone)
		{	
			doorText = instance_create_layer(viewMidWidth, viewHeightMid, "Text", obj_textBox);
			doorText.text = textArray;
		}
		global.doorFirstFoundMessage = false;
		
	}
}

if (exitReveal <= 0)
{
	sprite_index = spr_invis;
	global.doorCue = false;
	audio_stop_sound(sfx_doorDiscovered);
}

if (sprite_index = spr_exit)
{
	exitReveal = exitReveal - 1;
	if (!audio_is_playing(sfx_doorDiscovered))
	{
		audio_play_sound_on(doorEmitter, sfx_doorDiscovered, true, 1);
	}
	global.doorCue = true;
}