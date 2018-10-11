if (sprite_index = spr_mouseOnlyButton)
{
	global.normalControls = false;
	global.mouseOnlyControls = true;
}

if (global.mouseOnlyControls = true)
{
	sprite_index = spr_microTransSelectedButton
	global.controlChoice = 2;
	global.clickAvailable = true;
	audio_play_sound(sfx_buttonClick, 1, false);
}