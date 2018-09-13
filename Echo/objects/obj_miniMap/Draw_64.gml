// Help received from https://www.youtube.com/watch?v=j3JDCPnil7Q

draw_set_alpha(0.3)
draw_rectangle(xPos, yPos, xPos + width, yPos + height, false);

// draws enemies on map
draw_set_color(c_green);
draw_set_alpha(.80);
var enemyCount;
enemyCount = instance_number(obj_basicEnemy.visible);

if (obj_basicEnemy.visible)
{
	for (i = 0; i < enemyCount; i = i + 1)
	{
		enemyID = instance_find(obj_basicEnemy, i);
		var whereX = xPos + enemyID.x * (xscale);
		var whereY = yPos + enemyID.y * (yscale);
		draw_circle(whereX, whereY, 2, false);
	}
}

// draws walls on map
draw_set_color(c_orange);
draw_set_alpha(.80);
var wallCount;
wallCount = instance_number(obj_wall.visible);

if (obj_wall.visible == true)
{
	for (i = 0; i < wallCount; i = i + 1)
	{
		wallID = instance_find(obj_wall, i)
		var whereX = xPos + wallID.x * (xscale);
		var whereY = yPos + wallID.y * (yscale);
		draw_circle(whereX, whereY, 2, false);
	
	}
}