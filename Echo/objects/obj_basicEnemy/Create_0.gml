// State Machine Setup
enum Estates
{
	idle,
	alert,
	attack,
	invisMove,
	stunned,
	dead
}
deadEnemy = 30;


visible = false;

// array of sprite changes
sprites_array[Estates.idle] = spr_basicEnemyIdle;
sprites_array[Estates.alert] = spr_basicEnemyAlert;
sprites_array[Estates.attack] = spr_basicEnemyAttack;
sprites_array[Estates.invisMove] = spr_basicEnemyEcho;
sprites_array[Estates.stunned] = spr_basicEnemyStun;
sprites_array[Estates.dead] = spr_basicDead;

// Invisible Support
revealedTime = 0;
enemyInvisible = true;

deadEnemy = false;

// Stun Support
enemyStunTimer = 0;
global.eStunned = false;

global.enemyDiscovered = false;