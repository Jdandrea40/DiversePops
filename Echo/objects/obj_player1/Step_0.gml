if (global.controlChoice = 1)
{
	// Player Movement
	if (keyboard_check(ord("W")) && place_free(x, y - playerSpd))
	{
		y = y - playerSpd;
	}
	if (keyboard_check(ord("S")) && place_free(x, y + playerSpd))
	{
		y = y + playerSpd;
	}

	if (keyboard_check(ord("A")) && place_free(x - playerSpd, y)) 
	{
		x = x - playerSpd;
	}
	if (keyboard_check(ord("D")) && place_free(x + playerSpd, y)) 
	{
		x = x + playerSpd;
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
	mouseDistance = point_distance(x,y,obj_moveToX.x,obj_moveToX.y)
	mp_potential_step(obj_moveToX.x, obj_moveToX.y, min(4, mouseDistance), false);
	}
	
	if(mouse_check_button(mb_right))
	{
		instance_create_layer(x,y,"Instances",obj_echo);
	}
		
	/*mouseMoveSpeed = 5; 
	if (xx != mouse.none && yy != mouse.none)
	{
		if (place_free(x + mouseMoveSpeed, y + mouseMoveSpeed))
		{
			move_towards_point(xx,yy,mouseMoveSpeed)
		}
	}
	else
	{
		speed = 0
	}
	
	if (distance_to_point(xx,yy) < mouseMoveSpeed + 2)
	{
		xx = mouse.none;
		yy = mouse.none;
	}
	*/
}





