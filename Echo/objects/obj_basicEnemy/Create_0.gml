// State Machine Setup
enum Estates
{
	idle,
	alert,
	attack,
	invisMove,
	stunned
}


visible = false;

// array of sparite changed
sprites_array[Estates.idle] = spr_basicEnemyIdle;
sprites_array[Estates.alert] = spr_basicEnemyAlert;
sprites_array[Estates.attack] = spr_basicEnemyAttack;
sprites_array[Estates.invisMove] = spr_basicEnemyEcho;

// Invisible Support
revealedTime = 0;
enemyInvisible = true;

eStunned = 0;