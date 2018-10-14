event_inherited()

if (global.shootSFXOn == true)
{
	global.shootSFXOn = false;
	sprite_index = spr_offButton;
}
else if (global.shootSFXOn == false)
{
	global.shootSFXOn = true
	sprite_index = spr_onButton
}