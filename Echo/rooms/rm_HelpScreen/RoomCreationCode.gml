if (global.blindModeActivated == true)
{
	if (!audio_is_playing(sfx_helpScreenRead))
	{
		audio_play_sound(sfx_helpScreenRead, 1, false);
	}
}