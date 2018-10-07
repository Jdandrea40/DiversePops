echoCooldown = 0;
stunCooldown = 30;
playerSpd = 4;
playerMoving = false;
global.p1AmmoCount = 3;

audio_listener_orientation(0,1,0,0,0,1);
global.mainEmitter = audio_emitter_create();


switch (global.characterSelect)
{
	case 0:
	sprite_index = spr_player1;
	break;
	
	case 1:
	sprite_index = spr_player1;
	break;
	
	case 2:
	sprite_index = spr_player1SmallHitBox;
	break;
	
	case 3:
	sprite_index = spr_player1BigBody;
	break;
}

enum mouse
{
	none
}
if (global.controlChoice = 2)
{
	xx = mouse.none;
	yy = mouse.none;
}
