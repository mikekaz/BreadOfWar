if (global.pause) exit;
if (instance_exists(object6))   {
	move_towards_point(object6.x, object6.y, spd);
}

image_angle= image_xscale;

if (toastHP <= 0) {
	instance_destroy();
	
}




//Horizontal Collision
if (place_meeting(x+XAxis, y, obj_wall))
{
	while (!place_meeting(x+sign(XAxis), y, obj_wall))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}

//Vertical Collision
if (place_meeting(x, y+YAxis, obj_wall))
{
	while (!place_meeting(x, y + sign(YAxis), obj_wall))
	{
		y += sign(YAxis);
	}
	YAxis = 1;
}
