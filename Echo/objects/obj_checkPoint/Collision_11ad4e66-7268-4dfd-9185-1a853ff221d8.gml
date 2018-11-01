if(global.checkPointReached == false)
{ 
	if (!audio_is_playing(sfx_checkpoint) && global.checkPointReached == false)
	{
		audio_play_sound_on(checkPointEmitter, sfx_checkpoint, false, 1);
	}
	sprite_index = spr_checkPointUnlocked;
	global.checkPointReached = true;
}
