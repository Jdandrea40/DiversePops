exitReveal = 0;
global.doorCue = false;

doorEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(doorEmitter, 100, 300, 1.4);
