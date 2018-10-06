if (blindModeTimer > 0)
{
	blindModeTimer = blindModeTimer - 1;
}
if (blindModeTimer < 1 && !audio_is_playing(sfx_BlindModeNotification) && blindModeCue = true)
{
	blindModeCue = false;
	audio_play_sound(sfx_BlindModeNotification, 1, false)
}