
if (global.wallSoundCD > 0)
{
	global.wallSoundCD = global.wallSoundCD - 1;
	global.wallSoundPlay = true;
}
if (global.wallSoundCD < 1 )
{
	global.wallSoundPlay = false
}
