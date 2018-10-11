viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0]* 0.3
enemyFirstKill = true;
enemyText = noone;

textArray[0] = "Good Job! Not all enemies need to be kill though";
textArray[1] = "Your ammo is limited to 3 shots, so try and use their weakness against them";
textArray[2] = "Enemies will follow you if you get close, but will stop chasing if you get too far";
textArray[3] = "Be smart, and use your ammo wisely";
	
var spd = 10;

move_towards_point(mouse_x, mouse_y, spd);


