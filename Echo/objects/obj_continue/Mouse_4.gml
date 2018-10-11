event_inherited()
if (global.clickAvailable == true)
{
	room_goto_next()
}
else if (global.clickAvailable == false)
{	if (!audio_is_playing(sfx_errorBeep))
	{
		audio_play_sound(sfx_errorBeep, 1, false);
	}
}
