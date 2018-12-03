//Shooting
{
	if(cooldown <= 0)
	if(mouse_check_button(mb_left))
	{
		instance_create_layer(x, y, "BulletLayer", obj_bullet);
	
		cooldown = 10;
	}
}

cooldown += -1;





//Switch Weapons
switch(weapon)
{
	case 0:
		sprite_index = sprite6;
	break;
	
	case 1:
		sprite_index = johnny_gun;
	break;
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

//Horizontal Collision
<<<<<<< HEAD

if (place_meeting(x+XAxis, y, obj_wall))
=======
if (place_meeting (x+XAxis, y, obj_wall))
>>>>>>> 5a0c46056130d3532839e46bca861fe0a3765753
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