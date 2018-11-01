audio_emitter_position(checkPointEmitter, x ,y, 0);

if (checkPointReveal <= 0 && global.checkPoint2Reached == false)
{
	visible = false;
	global.checkPoint2Cue = false;
	audio_stop_sound(sfx_checkPointDiscovered);
}

if (sprite_index = spr_checkPointLocked)
{
	checkPointReveal = checkPointReveal - 1;
	if (!audio_is_playing(sfx_checkPointDiscovered))
	{
		audio_play_sound_on(checkPointEmitter, sfx_checkPointDiscovered, false, 1);
	}
	global.checkPointCue = true;
}

if (!instance_exists(obj_player1) && global.checkPoint2Reached == true)
{
	instance_create_layer(x,y,"Instances", obj_player1)
}