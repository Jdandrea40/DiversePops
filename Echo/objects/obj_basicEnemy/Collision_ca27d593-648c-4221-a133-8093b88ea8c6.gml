with (other)
{
	instance_destroy(obj_player1);
	if(global.checkPointReached == false && global.checkPoint2Reached == false)
	{
		room_goto(rm_Lose);
	}
}