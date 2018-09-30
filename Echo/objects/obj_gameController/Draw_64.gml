// draws total chests collected/avaiable
draw_set_color(c_white);
draw_text(64, 32, "Chests collected: " + string(global.chests)
		+ "/" + string(chestCount));
//draw_text(64,52, "Enemies Discovered: " + string(global.enemies) 
//		+ "/" + string(enemyCount));
		

// Displays Acheivement for collecting all chests
if(global.chestAchieve = true && chestAchieveActive = false)
{
	instance_create_depth(xPos, yPos, -1, obj_achievementBox);
	chestAchieveActive = true;
	with (obj_achievementBox)
	{
		text = "You've collected every chest!"
	}
}

draw_text(64, 52, "Ammo Remaining: " + string (global.p1AmmoCount));
if (global.p1AmmoCount < 1)
{
	draw_set_color(c_red)
	draw_text(64, 52, "Ammo Remaining: " + string (global.p1AmmoCount));
}
else if (global.p1AmmoCount < 3)
{
	draw_set_color(c_yellow)
	draw_text(64, 52, "Ammo Remaining: " + string (global.p1AmmoCount));
}
	