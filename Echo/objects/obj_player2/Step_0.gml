// Player Movement
if (keyboard_check(vk_up) && place_free(x, y - player2Spd))
{
	y = y - player2Spd;
}
if (keyboard_check(vk_down) && place_free(x, y + player2Spd))
{
	y = y + player2Spd;
}

if (keyboard_check(vk_left) && place_free(x - player2Spd, y)) 
{
	x = x - player2Spd;
}
if (keyboard_check(vk_right) && place_free(x + player2Spd, y)) 
{
	x = x + player2Spd;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

// killShot creation
if (mouse_check_button(mb_left)) && (p2Cooldown < 1)
{
	instance_create_layer(x,y,"Instances",obj_killShot);
	p2Cooldown = 100;
}
p2Cooldown = p2Cooldown - 1;






