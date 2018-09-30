global.chests = 0;
global.enemies = 0

chestAchieveActive = false;
wallAchieveActive = false;
audio_play_sound(sfx_ambience, 1, true);

// Gets number of Chests in map
chestCount = instance_number(obj_chest);
enemyCount = instance_number(obj_basicEnemy);


global.chestAchieve = false;
global.levelCompleteAchieve = false;
global.roomDiscoverAchieve = false;
text = "";

xPos = camera_get_view_x(view_xport[0] + 300);
yPos = camera_get_view_y(view_yport[0] + 100);

ambienceCue = 300;