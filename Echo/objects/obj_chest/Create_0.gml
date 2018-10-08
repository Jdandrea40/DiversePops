visible = false;
chestVisDur = 0;

//chestEmitter = audio_emitter_create();
//audio_falloff_set_model(audio_falloff_exponent_distance);
//audio_emitter_falloff(chestEmitter, 100, 300, 1.4);

chestEmitter = audio_emitter_create();
chestSound = noone;
global.pointCollision = true;

global.chestEmitEnabled = false;