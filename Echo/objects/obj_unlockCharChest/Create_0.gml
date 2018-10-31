// Text support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0] * 0.3
charChestText = noone;
if (global.hiddenChar1 == false)
{
	textArray[0] = "Congratulations! You have unlocked a secret Charcter.";
	textArray[1] = "Go to the Menu to select it.";
}
else if (global.hiddenChar1 == true)
{
	textArray[0] = "You have already unlocked this character.";
	textArray[1] = "Go to the menu to select this character.";
}

visible = false;
charChestVisDur = 0;

charChestEmitter = audio_emitter_create();
charChestSound = noone;
global.pointCollision = true;

global.chestEmitEnabled = false;

if(global.pvpActivated == true)
{
	global.tutorialActivated = false;
}