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