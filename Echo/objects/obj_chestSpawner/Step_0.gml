if (spawnChest = true)
{
	instance_create_layer(x, y, "Instances", obj_chest);
	spawnChest = false;
}
if(global.chestSpawnTimer > 0)
{
	global.chestSpawnTimer = global.chestSpawnTimer - 1;
	
}
if (global.chestSpawnTimer <= 0)
{
	spawnChest = true;
	global.pointCollision = false;
}