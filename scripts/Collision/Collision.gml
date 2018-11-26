//Horizontal Collision
if (place_meeting(x+XAxis, y, object1))
{
	while (!place_meeting(x+sign(XAxis), y, object1))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}

//Vertical Collision
if (place_meeting(x, y+YAxis, object1))
{
	while (!place_meeting(x, y + sign(YAxis), object1))
	{
		y += sign(YAxis);
	}
	YAxis = 1;
}