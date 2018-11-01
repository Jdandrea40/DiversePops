if(global.checkPoint2Reached == false)
{ 
	if (!audio_is_playing(sfx_checkpoint) && global.checkPoint2Reached == false)
	{
		audio_play_sound_on(checkPointEmitter, sfx_checkpoint, false, 1);
	}
	sprite_index = spr_checkPointUnlocked;
	global.checkPointReached = false;
	global.checkPoint2Reached = true;
}
