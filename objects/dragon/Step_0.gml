hsp = dir * movespeed;
vsp += grav;

//Horizontal Collision
if (place_meeting(x+hsp, y, object1))
{
	while (!place_meeting(x+sign(hsp), y, object1))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
	dir *= -1;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, object1))
{
	while (!place_meeting(x, y + sign(vsp), object1))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//Enemy Collision
if (place_meeting(x,y,object6))
{
	if (object6.y < y-16)
	{
		with (object6) vsp = -jumpspeed;
		instance_destroy();
	}
	else
	{
		game_restart();
	}
}

if(hp <= 0)
{
	instance_destroy();
}

