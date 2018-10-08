//audio_emitter_position(chestEmitter, x ,y, 0);

if (visible = true)
{
	chestVisDur = chestVisDur - 1;	
}

if (chestVisDur > 0)
{
	chestVisDur = chestVisDur - 1;
}

if(chestVisDur < 1)
{
	visible = false;	
}

if (chestVisDur > 0 && !audio_exists(chestSound))
{
	chestSound = audio_play_sound_at(sfx_chestFound, x, y, 0, 30, 100, 1, true, 1)
}
else if (chestVisDur < 0)
{
	audio_stop_sound(sfx_chestFound)
}