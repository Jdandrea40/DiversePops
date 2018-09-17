// Player Movement
if (keyboard_check(vk_up) && place_free(x, y - player2Spd))
{
	y = y - player2Spd;
	visible = true
	sprite_index = spr_pvpPlayer2_Up;
}
else if (keyboard_check(vk_down) && place_free(x, y + player2Spd))
{
	y = y + player2Spd;
	visible = true;
	sprite_index = spr_pvpPlayer2_Down;

}

else if (keyboard_check(vk_left) && place_free(x - player2Spd, y)) 
{
	x = x - player2Spd;
	visible = true
	sprite_index = spr_pvpPlayer2_Left;

}
else if (keyboard_check(vk_right) && place_free(x + player2Spd, y)) 
{
	x = x + player2Spd;
	visible = true
	sprite_index = spr_pvpPlayer2_Right

}
else
{
	visible = false;	
}

// echo creation
if (keyboard_check_pressed(vk_shift)) && (pvp2Cooldown < 1)
{
	instance_create_layer(x,y,"Instances",obj_enemyEcho);
	pvp2Cooldown = 100;
}
pvp2Cooldown = pvp2Cooldown - 1;



