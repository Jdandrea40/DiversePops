global.checkPointReached = false;
visible = false;

// Text support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0] * 0.3
checkPointText = noone;
checkPointFound = false;
textArray[0] = "AWESOME!, you've found a checkpoint";
textArray[1] = "If you die, you will respawn here!";

checkPointReveal = 0;
global.checkPointCue = false;

checkPointEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(checkPointEmitter, 100, 300, 1.4);
