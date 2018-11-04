if (global.questActive == true)
{
	instance_create_layer(x,y,"Instances", obj_NPCFriend);	
	global.questActive = false;
}