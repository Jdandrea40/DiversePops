// Player Movement
if (keyboard_check(ord("W")))
{
	y = y - 4;
}
if (keyboard_check(ord("S")))
{
	y = y + 4;
}

if (keyboard_check(ord("A"))) 
{
	x = x - 4;
}
if (keyboard_check(ord("D"))) 
{
	x = x + 4;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

// echo creation
if (keyboard_check_pressed(vk_space)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Instances",obj_echo);
	cooldown = 100;
}
cooldown = cooldown - 1;






