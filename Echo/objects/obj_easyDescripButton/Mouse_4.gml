event_inherited()
if (!audio_is_playing(sfx_easyDescrip))
{
	audio_play_sound(sfx_easyDescrip, 1, 0)
}

if(audio_is_playing(sfx_hardDescrip) || audio_is_playing(sfx_mediumDescrip))
{
	audio_stop_sound(sfx_hardDescrip)
	audio_stop_sound(sfx_mediumDescrip)
}


