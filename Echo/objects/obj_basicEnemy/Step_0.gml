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
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= alertRange)
{
	state = Estates.alert;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= attackRange)
{
	state = Estates.attack
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) > alertRange)
{
	state = Estates.idle;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) < alertRange && visible = false)
{
	state = Estates.invisMove;	
}



// State Functions
// Alert State
if (state = Estates.alert && state != Estates.stunned)
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
else if (state = Estates.attack && state != Estates.stunned)
{
	spd = 1.5;
	sprite_index = sprites_array[Estates.attack];
	
	// causes enemies to not move through walls
	var inst;
	inst = instance_nearest(x, y, obj_basicEnemy);
	mp_potential_step(obj_player1.x, obj_player1.y, spd, false);
}
else if (state = Estates.stunned)
{
	eStunned = eStunned - 1;
	if (eStunned < 1)
	{
		state = Estates.idle;	
	}
}
// Idle State
else
{
	state = Estates.idle;
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
}
 
if (visible = true)
{
	revealedTime = revealedTime - 1;	 
}
