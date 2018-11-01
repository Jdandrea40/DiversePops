event_inherited();
global.pvpActivated = false;
if (global.clickAvailable == true)
{
	sprite_index = spr_microTransSelectedButton;
	global.bigSelect = false;
	global.normalSelect = false;
	global.smallSelect = false;
	global.hiddenChar1Select = false;
	global.hiddenChar2Select = true;

}
else if (global.clickAvailable == false)
{	if (!audio_is_playing(sfx_errorBeep))
	{
		audio_play_sound(sfx_errorBeep, 1, false);
	}
}

if (global.hiddenChar2Select = true)
{
	sprite_index = spr_microTransSelectedButton
	global.characterSelect = 5;
	audio_play_sound(sfx_buttonClick, 1, false);
}
