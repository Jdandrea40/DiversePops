with (other)
{
	image_alpha = image_alpha - .5;
}
if (global.blindModeActivated = true)
{
	buttonSoundName = "sfx_" + object_get_name(object_index);
	buttonSound = asset_get_index(buttonSoundName);
	audio_play_sound(buttonSound,1,false)
}