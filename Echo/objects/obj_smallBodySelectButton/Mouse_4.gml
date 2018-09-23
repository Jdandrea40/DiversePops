if (sprite_index = spr_microTransBuyButton)
{
	sprite_index = spr_microTransPurchasedButton;
	smallPurchased = true;

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
}