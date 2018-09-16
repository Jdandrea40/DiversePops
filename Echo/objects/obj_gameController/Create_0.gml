global.points = 0;

// Gets number of Chests in map
chestCount = instance_number(obj_chest);

global.chestAchieve = false;
global.levelCompleteAchieve = false;
global.roomDiscoverAchieve = false;
text = "";
xPos = camera_get_view_x(view_xport[0]) + 750;
yPos = camera_get_view_y(view_yport[0]) + 500;