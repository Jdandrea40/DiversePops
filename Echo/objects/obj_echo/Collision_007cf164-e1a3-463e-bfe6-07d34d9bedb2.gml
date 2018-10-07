with (other)
{
	visible = true
	revealedTime = 100;
	//audio_play_sound(sfx_enemyGrunt, 1, false);

	if (global.enemyDiscovered = false)
	{
		global.enemyDiscovered = true;
		global.enemies = global.enemies + 1;
	}
}
