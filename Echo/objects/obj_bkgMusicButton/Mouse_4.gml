event_inherited()

if (global.bkgMusicOn == true)
{
	global.bkgMusicOn = false;
	sprite_index = spr_offButton;
	if (audio_is_playing(sfx_ambience))
	{
		audio_stop_sound(sfx_ambience);	
	}
}
else if (global.bkgMusicOn == false)
{
	global.bkgMusicOn = true
	sprite_index = spr_onButton
}