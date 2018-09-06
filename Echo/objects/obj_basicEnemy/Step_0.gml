var range = 40

if (instance_exists(obj_player1) && distance_to_object(obj_player1) < range)
{
	spd = 1.5
	move_towards_point(obj_player1.x, obj_player1.y, spd)
}
if (distance_to_object(obj_player1) > range)
{
	spd = 0;	
}
image_angle = direction;
 if (revealedTime <= 0)
 {
	 sprite_index = spr_enemyEcho;
 }
 
 if (sprite_index = spr_basicEnemy)
 {
	revealedTime = revealedTime - 1;	 
 }
