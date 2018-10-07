if (global.blindModeActivated = false)
{
	global.blindModeActivated = true;
	if (!audio_is_playing(sfx_blindModeActivated))
	{
		audio_play_sound(sfx_blindModeActivated,1,false);
	}
}
else
{
	global.blindModeActivated = false
	if (!audio_is_playing(sfx_blindModeDeactivated))
	{
		audio_play_sound(sfx_blindModeDeactivated, 1 , false)
	}
}