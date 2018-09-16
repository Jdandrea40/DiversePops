if (visible = true)
{
	global.chestVisDur = global.chestVisDur - 1;	 
}

if (global.chestVisDur > 0)
{
	global.chestVisDur = global.chestVisDur - 1;	
}

if(global.chestDestroyTimer > 0)
{
	global.chestDestroyTimer = global.chestDestroyTimer - 1;	
}
//if (global.chestDestroyTimer < 1)
//{
//	instance_destroy();	
//}