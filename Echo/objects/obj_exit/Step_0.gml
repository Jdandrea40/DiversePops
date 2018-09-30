if (exitReveal <= 0)
{
	sprite_index = spr_invis;
	global.doorCue = false;
}

if (sprite_index = spr_exit)
{
	exitReveal = exitReveal - 1;	
	global.doorCue = true;
}