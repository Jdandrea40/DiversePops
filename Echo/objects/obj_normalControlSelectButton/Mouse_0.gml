if (sprite_index = spr_standardContrButton)
{

	global.normalControls = true;
	global.mouseOnlyControls = false;
}

if (global.normalControls = true)
{
	sprite_index = spr_microTransSelectedButton
	global.controlChoice = 1;
	global.clickAvailable = true;
	audio_play_sound(sfx_buttonClick, 1, false);
}