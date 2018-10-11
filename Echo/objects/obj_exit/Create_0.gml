// Text support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0] * 0.3
doorText = noone;
doorFound = false;
textArray[0] = "AWESOME!, you've discovered the door";
textArray[1] = "Hurry up and get to it before it dissapears";

exitReveal = 0;
global.doorCue = false;

doorEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(doorEmitter, 100, 300, 1.4);
