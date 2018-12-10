//Shooting
{
	if(cooldown <= 0)
	if(mouse_check_button(mb_left))
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
if (x < mouse_x)
{
	image_xscale = 3;
}
else
{
	image_xscale = -3;
}



//Control the sprites
if (yprevious != y)
{
	sprite_index = Johnny_jump;
	image_speed = 0;
	image_index = y>yprevious
}
else
{
	if (xprevious != x)
	{
		sprite_index = johnny_walk;
		image_speed = .3;
	}
	else
	{
		sprite_index = johnny_gun;
	}
}

//Control the direction the player is facing
if (xprevious < x)
{
	image_xscale = 3;
}
else if (xprevious > x)
{
	image_xscale = -3;
}