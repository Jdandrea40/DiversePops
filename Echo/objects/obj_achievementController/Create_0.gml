global.chests = 0;

// Quest support
global.questComplete = false;
global.showQuest = false;
global.friendFound = false;
global.friendFollow = false;

// Found Change Support
if (global.impactFont == true)
{
	draw_set_font(fnt_Impact_15)
}
else if (global.comicSansFont == true)
{
	draw_set_font(fnt_ComicSans_15)
}

// Achievements
chestAchieveActive = false;
playAchieveRead = true;

// Gets number of Chests in map
chestCount = instance_number(obj_chest);

global.chestAchieve = false;
text = "";

// Camera Positioning
xPos = camera_get_view_x(view_xport[0] + 300);
yPos = camera_get_view_y(view_yport[0] + 100);

ambienceCue = 300;
noAmmoCue = false;

// Text support
viewMidWidth = view_xport[0] + view_wport[0] * 0.3
viewHeightMid = view_yport[0]+ view_hport[0] * 0.3
charChestText = noone;
if (global.hiddenChar2 == false)
{
	textArray[0] = "Congratulations! You have unlocked a secret Charcter.";
	textArray[1] = "Go to the Menu to select it.";
}
else if (global.hiddenChar2 == true)
{
	textArray[0] = "You have already unlocked this character.";
	textArray[1] = "Go to the menu to select this character.";
}