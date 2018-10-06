if (global.controlChoice = 1)
{
	// Player Movement
	if (keyboard_check(ord("W")) && place_free(x, y - playerSpd))
	{
		y = y - playerSpd;
		playerMoving = true;	
	}
	else if (keyboard_check(ord("S")) && place_free(x, y + playerSpd))
	{
		y = y + playerSpd;
		playerMoving = true;
	}

	else if (keyboard_check(ord("A")) && place_free(x - playerSpd, y)) 
	{
		x = x - playerSpd;
		playerMoving = true;
	}
	else if (keyboard_check(ord("D")) && place_free(x + playerSpd, y)) 
	{
		x = x + playerSpd;
		playerMoving = true;
	}
	else
	{
		playerMoving = false;
	}

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	// echo creation
	if (keyboard_check_pressed(vk_space)) && (echoCooldown < 1)
	{
		audio_play_sound(sfx_echoLocate, 1, false);	
		instance_create_layer(x,y,"Instances",obj_echo);
		echoCooldown = 100;
	}
	echoCooldown = echoCooldown - 1;

	// killShot creation
	if (mouse_check_button(mb_left) && global.p1AmmoCount > 0 && stunCooldown< 1)
	{
		audio_play_sound(sfx_shoot, 1, false);
		global.p1AmmoCount = global.p1AmmoCount - 1;
		instance_create_layer(x,y,"Instances",obj_stunShot);
		stunCooldown = 60;
	}
	stunCooldown = stunCooldown - 1;
}

if (global.controlChoice = 2)
{
	if(instance_exists(obj_moveToX))
	{
		mouseDistance = point_distance(x,y,obj_moveToX.x,obj_moveToX.y);
		mp_potential_step(obj_moveToX.x, obj_moveToX.y, min(4, mouseDistance), false);
		playerMoving = true;
	}
	else
	{
		playerMoving = false;
	}
	
	if (mouse_check_button(mb_right) && echoCooldown < 1)
	{
		audio_play_sound(sfx_echoLocate, 1, false);	
		instance_create_layer(x,y,"Instances",obj_echo);
		echoCooldown = 100;
	}
	echoCooldown = echoCooldown - 1;
	
	// killShot creation
	if (mouse_check_button(mb_middle) && global.p1AmmoCount > 0 && stunCooldown< 1)
	{
		audio_play_sound(sfx_shoot, 1, false);
		global.p1AmmoCount = global.p1AmmoCount - 1;
		instance_create_layer(x,y,"Instances",obj_stunShot);
		stunCooldown = 60;
	}
	stunCooldown = stunCooldown - 1;
}


if(playerMoving == true && !audio_is_playing(sfx_player1Walk))
{
	audio_play_sound(sfx_player1Walk, 1, true)
}
else if (playerMoving == false)
{
	audio_stop_sound(sfx_player1Walk)
}


	




