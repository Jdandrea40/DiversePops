viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0]* 0.3
enemyFirstDetect = false;
enemyText = noone;

if (global.controlChoice == 1)
{
	textArray[0] = "Good Job!, enemies will be invisible until revealed with your Echo";
	textArray[1] = "Be aware, enemies get louder the closer you get.";
	textArray[2] = "Use your KillShot to eliminate this enemy (Aim with Mouse and Left Click to shoot)"
}
else if (global.controlChoice == 2)
{
	textArray[0] = "Good Job!, enemies will be invisible until revealed with your Echo";
	textArray[1] = "Be aware, enemies get louder the closer you get and will chase you if you get too close";
	textArray[2] = "Use your KillShot to eliminate this enemy (Aim with Mouse and Middle Click to shoot)"
}

enemyAlive = true;
enemyEmitter = audio_emitter_create();
enemySound = noone;

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