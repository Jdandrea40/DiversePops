if ( global.chests >= chestCount)
{
	global.chestAchieve = true;	
}

if (ambienceCue > 0)
{
	ambienceText = true
	ambienceCue = ambienceCue - 1;
}
else
{
	ambienceText = false
}

if (global.p1AmmoCount < 1)
{
	noAmmoCue = true;
}