if (global.chests >= chestCount)
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
if (global.blindModeActivated == true)
{
	if (noAmmoCue = true && mouse_check_button(mb_left))
	{
		{
			if (!audio_is_playing(sfx_outOfAmmo))
			{
				audio_play_sound(sfx_outOfAmmo, 1, false)
			}
		}
	}
	
	if (global.chestAchieve = true && playAchieveRead = true)
	{
		{
			if (!audio_is_playing(sfx_AchievementRead))
			{
				audio_play_sound(sfx_AchievementRead, 1, false)
				playAchieveRead = false;
			}
		}
	}	
	
}