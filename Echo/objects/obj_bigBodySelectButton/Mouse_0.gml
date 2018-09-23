if (sprite_index = spr_microTransBuyButton && global.bigSelect = false)
{
	sprite_index = spr_microTransPurchasedButton;
	bigPurchased = true;
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
}