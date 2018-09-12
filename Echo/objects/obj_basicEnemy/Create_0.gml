// State Machine Setup
enum states
{
	idle,
	alert,
	attack,
	invisMove
}

visible = false;

// array of sparite changed
sprites_array[states.idle] = spr_basicEnemyIdle;
sprites_array[states.alert] = spr_basicEnemyAlert;
sprites_array[states.attack] = spr_basicEnemyAttack;
sprites_array[states.invisMove] = spr_basicEnemyEcho;

// Invisible Support
revealedTime = 0;
