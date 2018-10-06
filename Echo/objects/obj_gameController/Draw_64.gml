// draws total chests collected/avaiable
draw_set_font(fnt_Impact_15);
draw_set_color(c_white);
draw_text(64, 32, "Chests collected: " + string(global.chests)
		+ "/" + string(chestCount));
	

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

// draws ammo remain
draw_text(64, 52, "Ammo Remaining: " + string (global.p1AmmoCount));

// Changes color based on amount left
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

// Door cue
if (global.doorCue = true)
{
	draw_set_color(c_green)
	draw_text(300, 700,"The door has been located, get to it before it dissapears!");
}

// Enemy Cue
if (global.enemyVisCue = true)
{
	draw_set_color(c_red)
	draw_text(350,640,"You've spotted an enemy, BE CAREFUL!")
}

// Draws ambience cue onto screen
if (ambienceText = true)
{
	draw_set_color(c_white);
	draw_text(400, 733, "Eerie music plays" )
}	

// Draws No Ammo
if (global.controlChoice = 1)
{
	if (noAmmoCue = true && mouse_check_button(mb_left))
	{
		draw_set_color(c_red);
		draw_text(370, 600, "You are out of Ammo!" )
	}
}
else if (global.controlChoice = 2)
{
	if (noAmmoCue = true && mouse_check_button(mb_middle))
	{
		draw_set_color(c_red);
		draw_text(370, 600, "You are out of Ammo!" )
	}
}