if (sprite_index = spr_microTransBuyButton && global.bigSelect = false)
{
	sprite_index = spr_microTransPurchasedButton;
	bigPurchased = true;
	audio_play_sound(sfx_buttonClick, 1, false);
}
else if (sprite_index = spr_microTransPurchasedButton)
{

	global.bigSelect = true;
	global.normalSelect = false;
	global.smallSelect = false;

}

if (global.bigSelect = true)
{
	sprite_index = spr_microTransSelectedButton
	global.characterSelect = 3;
	audio_play_sound(sfx_buttonClick, 1, false);
}
