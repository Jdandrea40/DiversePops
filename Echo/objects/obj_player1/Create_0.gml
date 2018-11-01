event_inherited()

echoCooldown = 0;
stunCooldown = 30;
playerSpd = 4;
playerMoving = false;
global.p1AmmoCount = 3;


audio_listener_orientation(0,1,0,0,0,1);
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_listener_position(x, y, 0);

enum mouse
{
	none
}
if (global.controlChoice = 2)
{
	xx = mouse.none;
	yy = mouse.none;
}
