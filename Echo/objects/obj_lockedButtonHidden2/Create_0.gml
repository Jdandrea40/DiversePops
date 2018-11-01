global.hiddenChar2Select = false;

if (global.hiddenChar2 == false)
{
	sprite_index = spr_lockedButtonPicture;
	global.clickAvailable = false;
}
else if (global.hiddenChar2 == true)
{
	sprite_index = spr_unlockedButtonPicture
	global.clickAvailable = true;
}
