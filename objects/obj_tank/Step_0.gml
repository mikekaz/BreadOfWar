if (global.pause) exit;

if (instance_exists(object6))   {
	move_towards_point(object6.x, object6.y, spd);
}



if (tankHP <= 0) {
	instance_destroy();
	
}



hspeed = 4;