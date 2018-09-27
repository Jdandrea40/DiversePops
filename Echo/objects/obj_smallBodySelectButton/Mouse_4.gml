if (sprite_index = spr_microTransBuyButton)
{
	sprite_index = spr_microTransPurchasedButton;
	smallPurchased = true;
	audio_play_sound(sfx_buttonClick, 1, false);

}
else if (sprite_index = spr_microTransPurchasedButton)
{
	global.bigSelect = false;
	global.normalSelect = false;
	global.smallSelect = true;
}

if (global.smallSelect = true)
{
	sprite_index = spr_microTransSelectedButton
	global.characterSelect = 2;
	audio_play_sound(sfx_buttonClick, 1, false);
}
