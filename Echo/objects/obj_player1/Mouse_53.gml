if (global.controlChoice = 2)
{
	if (global.textBoxActive == false)
	if(!instance_exists(obj_moveToX) && global.textBoxActive == false)
	{
		instance_create_layer(mouse_x, mouse_y,"Instances",obj_moveToX)
	}
}
