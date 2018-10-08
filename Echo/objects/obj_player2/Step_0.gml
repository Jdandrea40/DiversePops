// Player Movement
if (keyboard_check(vk_up) && place_free(x, y - player2Spd))
{
	y = y - player2Spd;
	player2Moving = true;
	
}
else if (keyboard_check(vk_down) && place_free(x, y + player2Spd))
{
	y = y + player2Spd;
	player2Moving = true;
}

else if (keyboard_check(vk_left) && place_free(x - player2Spd, y)) 
{
	x = x - player2Spd;
	player2Moving = true;
}
else if (keyboard_check(vk_right) && place_free(x + player2Spd, y)) 
{
	x = x + player2Spd;
	player2Moving = true;
}
else
{
	player2Moving = false;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

// killShot creation
if (mouse_check_button(mb_left)) && (p2Cooldown < 1)
{
	instance_create_layer(x,y,"Instances",obj_killShot);
	p2Cooldown = 100;
}
p2Cooldown = p2Cooldown - 1;


if(player2Moving == true && !audio_is_playing(sfx_player2Walk))
{
	audio_play_sound(sfx_player2Walk, 1, true)
}
else if (player2Moving == false)
{
	audio_stop_sound(sfx_player2Walk)
}




