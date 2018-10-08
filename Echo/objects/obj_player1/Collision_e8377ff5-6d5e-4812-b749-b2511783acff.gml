audio_play_sound(sfx_chestPickup, 1, false);
with (other)
{
	instance_destroy()
	instance_create_layer(x, y, "Instances", obj_deadChest)
}