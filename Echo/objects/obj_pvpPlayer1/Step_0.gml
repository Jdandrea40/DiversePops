// Player Movement
if (keyboard_check(ord("W")) && place_free(x, y - playerSpd))
{
	y = y - playerSpd;
	visible = true
	sprite_index = spr_pvpPlayer1_Up;
}
else if (keyboard_check(ord("S")) && place_free(x, y + playerSpd))
{
	y = y + playerSpd;
	visible = true
	sprite_index = spr_pvpPlayer1_Down;
}

else if (keyboard_check(ord("A")) && place_free(x - playerSpd, y)) 
{
	x = x - playerSpd;
	visible = true
	sprite_index = spr_pvpPlayer1_Left;
}
else if (keyboard_check(ord("D")) && place_free(x + playerSpd, y)) 
{
	x = x + playerSpd;
	visible = true
	sprite_index = spr_pvpPlayer1_Right;
}
else
{
	visible = false
}

// echo creation
if (keyboard_check_pressed(vk_space)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Instances",obj_echo);
	cooldown = 100;
}
cooldown = cooldown - 1;






