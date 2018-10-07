enemyEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_emitter_falloff(enemyEmitter,100,500,1);

if(!audio_is_playing(sfx_enemyGrunt))
{
	audio_play_sound_on(enemyEmitter,sfx_enemyGrunt, true, 1)
}

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