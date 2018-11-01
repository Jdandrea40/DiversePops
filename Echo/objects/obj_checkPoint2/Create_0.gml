global.checkPoint2Reached = false;
visible = false;

checkPointReveal = 0;
global.checkPoint2Cue = false;

checkPointEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(checkPointEmitter, 100, 300, 1.4);
