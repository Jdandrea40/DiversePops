
wallSound = noone;


if (!audio_exists(wallSound))
{
	wallSound = audio_play_sound_at(sfx_wallThud, x, y, 0, 1, 10, 1, false, 1)
}