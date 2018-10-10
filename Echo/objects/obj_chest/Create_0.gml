// Text support
chestText = noone;
textArray[0] = "Congratulations! You have collected your first chest!";
textArray[1] = "There are more around, can you find them?";

visible = false;
chestVisDur = 0;

chestEmitter = audio_emitter_create();
chestSound = noone;
global.pointCollision = true;

global.chestEmitEnabled = false;