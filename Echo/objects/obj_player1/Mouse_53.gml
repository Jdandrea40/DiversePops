if (global.controlChoice = 2)
{
	if(!instance_exists(obj_moveToX))
	{
		instance_create_layer(mouse_x, mouse_y,"Instances",obj_moveToX)
	}
}
global.textBoxActive = false;