
//Shooting
{
	if(cooldown <= 0)
	if(keyboard_check_pressed(vk_enter))
	{
		instance_create_layer(x, y, "BulletLayer", obj_bullet);
	
		cooldown = 8;
	}
}

cooldown += -1;



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
	YAxis = 0;
}

//Flip Object
if keyboard_check(ord("D"))
{
	image_xscale = 3;
}
else
if keyboard_check(ord("A"))
{
	
	image_xscale = -3;
}



