// Continues through text array of given text
if (keyboard_check_pressed(vk_enter))
{
	if ( page + 1 < array_length_1d(text))
	{
		page += 1;
		global.textBoxActive = true;
	}
	else
	{
		instance_destroy()
		global.textBoxActive = false;
	}
}