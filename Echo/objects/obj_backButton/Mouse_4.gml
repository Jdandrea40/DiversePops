event_inherited();
room_goto(rm_MenuScreen);

// Help Room Speach
global.helpRoom = false;
if (audio_is_playing(sfx_helpScreenRead))
{
	audio_stop_sound(sfx_helpScreenRead)
}
