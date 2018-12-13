image_xscale =  0.5;
image_yscale = 0.5;

bulletPower = 2;
bulletSpeed = 13;
bulletOwner = -1
facing = 1;
audio_play_sound(sn_watershoot,5,false);

direction = image_angle;
speed = bulletSpeed;
image_angle  = direction;

motion_set(facing, speed)

if keyboard_check(ord("A"))
{
    x -= 2;
    facing = -1;
	
}
else if keyboard_check(ord("D"))
{
    x += 2;
    facing = 1;
}


image_xscale = facing;

