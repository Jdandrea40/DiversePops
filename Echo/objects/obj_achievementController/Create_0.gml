global.chests = 0;

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