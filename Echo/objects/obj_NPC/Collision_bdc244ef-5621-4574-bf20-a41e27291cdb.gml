// Displays first chest collected
if (global.friendFound == false)
{
	global.showQuest = true;
	global.questActive = true;
}

if (global.questComplete == false)
{
	if (NPCText == noone)
	{	
		NPCText = instance_create_layer(viewMidWidth, viewHeightMid, "Instances", obj_textBox);
		NPCText.text = textArray;
	}
}

if (global.friendFound == true)
{
	textArray[0] = "Thanks let get outta here!";
	NPCText = instance_create_layer(viewMidWidth, viewHeightMid, "Instances", obj_textBox);
	NPCText.text = textArray;
	if (keyboard_check(vk_enter))
	{
		room_goto(rm_Win);
	}

}