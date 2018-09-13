// state change range vars
var alertRange = 100;
var attackRange = 70
var spd;

// State Switching
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= alertRange)
{
	state = states.alert;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= attackRange)
{
	state = states.attack
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) > alertRange)
{
	state = states.idle;
}
if (instance_exists(obj_player1) && distance_to_object(obj_player1) < alertRange && visible = false)
{
	state = states.invisMove;	
}



// State Functions
// Alert State
if (state = states.alert)
{
	spd = .5
	sprite_index = sprites_array[states.alert]
	
	// causes enemies to not move through walls
	var inst;
	inst = instance_nearest(x, y, obj_basicEnemy);
	mp_potential_step(obj_player1.x, obj_player1.y, spd, false);
	if (instance_exists(obj_player1) && distance_to_object(obj_player1) <= attackRange)
	{
		state = states.attack
	}
	if (state = states.invisMove && spd > 0)
{
	sprite_index = sprites_array[states.invisMove]	
}
}

// Attack State
else if (state = states.attack)
{
	spd = 1.5;
	sprite_index = sprites_array[states.attack];
	
	// causes enemies to not move through walls
	var inst;
	inst = instance_nearest(x, y, obj_basicEnemy);
	mp_potential_step(obj_player1.x, obj_player1.y, spd, false);
	if (state = states.invisMove && spd > 0)
{
	sprite_index = sprites_array[states.invisMove]	
}
}

// Idle State
else
{
	state = states.idle;
	sprite_index = sprites_array[states.idle]
	speed = 0
}

// Image Angle Change
image_angle = direction;

// Revealed Timer
	if (revealedTime <= 0)
	{
		visible = false;
	}
 
	if (visible = true)
	{
		revealedTime = revealedTime - 1;	 
	}
