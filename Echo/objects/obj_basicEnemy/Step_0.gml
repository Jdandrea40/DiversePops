audio_emitter_position(enemyEmitter, x ,y, 0);
// state change range vars
var alertRange = 100;
var attackRange = 70
var spd = 0;


if (enemyInvisible = true && speed > 0)
{
	sprite_index = sprites_array[Estates.invisMove];
	visible = true;
}

// State Switching
if (instance_exists(obj_player1) && global.eStunned = true)
{
	 state = Estates.stunned;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= alertRange && global.eStunned = false)
{
	state = Estates.alert;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= attackRange && global.eStunned = false )
{
	state = Estates.attack
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) > alertRange && global.eStunned = false)
{
	state = Estates.idle;

}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) < alertRange && visible = false && global.eStunned = false)
{
	state = Estates.invisMove;

}

// State Functions
// Stunned State
if (state = Estates.stunned)
{
	speed = 0;
	sprite_index = sprites_array[Estates.stunned];
	if (enemyStunTimer > 0)
	{
		visible = true;
		enemyStunTimer = enemyStunTimer - 1;

	}
	else if (enemyStunTimer < 1)
	{
		global.eStunned = false;
		enemyStunTimer = 0;
	}


}
// Alert State
if (state = Estates.alert)
{
	spd = .5
	sprite_index = sprites_array[Estates.alert]
	
	// causes enemies to not move through walls
	var inst;
	inst = instance_nearest(x, y, obj_basicEnemy);
	mp_potential_step(obj_player1.x, obj_player1.y, spd, false);
	if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= attackRange)
	{
		state = Estates.attack
	}
	if (state = Estates.invisMove && spd > 0)
	{
	sprite_index = sprites_array[Estates.invisMove]	
	}
}

// Attack State
if (state = Estates.attack)
{
	spd = 1.3;
	sprite_index = sprites_array[Estates.attack];
	
	// causes enemies to not move through walls
	var inst;
	inst = instance_nearest(x, y, obj_basicEnemy);
	mp_potential_step(obj_player1.x, obj_player1.y, spd, false);
}
// Idle State
if(state = Estates.idle)
{
	//state = Estates.idle;
	sprite_index = sprites_array[Estates.idle]
	speed = 0
}

// Image Angle Change
image_angle = direction;

// Revealed Timer
if (revealedTime <= 0)
{
	sprite_index = sprites_array[Estates.invisMove]
	enemyInvisible = true;
	global.enemyVisCue = false;
}
else
{
	global.enemyVisCue = true;
}
 
if (visible = true)
{

	revealedTime = revealedTime - 1;

}

