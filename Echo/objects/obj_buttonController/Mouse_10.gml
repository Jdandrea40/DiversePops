with (other)
{
	if (object_index == obj_continue || object_index == obj_tutorialButton || object_index == obj_lockedButtonHidden1 || object_index == obj_hiddenChar2)
	{
		if (global.clickAvailable == false)
		{
			image_blend = make_color_rgb(255,0,0);
			image_alpha = image_alpha -.5
		}
		else if (global.clickAvailable == true)
		{
			image_blend = make_color_rgb(255,255,255);
			image_alpha = image_alpha - .5
		}
	}
	else
	{
		image_alpha = image_alpha - .5;
	}
	
}
if (global.blindModeActivated = true)
{
	buttonSoundName = "sfx_" + object_get_name(object_index);
	buttonSound = asset_get_index(buttonSoundName);
	audio_play_sound(buttonSound,1,false)
}