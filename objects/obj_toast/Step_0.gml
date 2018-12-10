if (instance_exists(object6))   {
	move_towards_point(object6.x, object6.y, spd);
}

image_angle=direction;

if (hp<=0) {
	instance_destroy();
	
}
