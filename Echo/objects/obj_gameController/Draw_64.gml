
draw_set_color(c_white);
draw_text(64, 32, "Chests collected: " + string(global.points)
		+ "/" + string(chestCount));
		

	if(global.chestAchieve = true /*&& instance_number(obj_achievementBox < 1)*/)
	{
		instance_create_layer(x, y, "Achievements", obj_achievementBox);
		with (obj_achievementBox)
		{
			text = "You've collected every chests!"
		}
	}
