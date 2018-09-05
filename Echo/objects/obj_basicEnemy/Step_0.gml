if (instance_exists(obj_player1))
{
	move_towards_point(obj_player1.x, obj_player1.y, spd)
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