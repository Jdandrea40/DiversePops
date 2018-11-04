with (other)
{
	global.showQuest = true;
	global.friendFound = true;
	global.friendFollow = true;
}

if (global.questComplete == false)
{
	if (NPCFText == noone)
	{	
		NPCFText = instance_create_layer(viewMidWidth, viewHeightMid, "Instances", obj_textBox);
		NPCFText.text = textArray;

	}
}
