with(other)
{
	image_alpha = 1;
}
if (global.blindModeActivated = true)
{
	buttonSoundName = "sfx_" + object_get_name(object_index);
	buttonSound = asset_get_index(buttonSoundName);
	audio_stop_sound(buttonSound)
}