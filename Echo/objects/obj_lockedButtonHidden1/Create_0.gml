global.hiddenChar1Select = false;

if (global.hiddenChar1 == false)
{
	sprite_index = spr_lockedButtonPicture;
	global.clickAvailable = false;
}
else if (global.hiddenChar1 == true)
{
	sprite_index = spr_unlockedButtonPicture
	global.clickAvailable = true;
}
