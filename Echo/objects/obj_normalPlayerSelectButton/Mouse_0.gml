if (sprite_index = spr_microTransPurchasedButton)
{

	global.bigSelect = false;
	global.normalSelect = true;
	global.smallSelect = false;

}

if (global.normalSelect = true)
{
	sprite_index = spr_microTransSelectedButton
	global.characterSelect = 1;
	audio_play_sound(sfx_buttonClick, 1, false);
}