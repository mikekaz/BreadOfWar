image_xscale =  1;
image_yscale = 0.5;

bulletPower = 2;
bulletSpeed = 17;

audio_play_sound(sn_watershoot,5,false);

direction = image_angle;
speed = bulletSpeed;
image_angle = direction;


if keyboard_check(ord("A"))
{
    x -= 8;
    direction = 180;
	image_xscale = -1;
	
	
}
if keyboard_check(ord("D"))
{
    x += 8;
    direction = 0;
}

