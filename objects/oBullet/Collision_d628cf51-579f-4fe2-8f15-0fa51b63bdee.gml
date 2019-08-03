///@description check for enemy
with(other){//other here refers to the specific oEnemy
	hp--;   //you can also use oEnemy,but it will apply to all the enemies
	flash = 3;
	hitfrom = other.direction;
}
instance_destroy();
	
