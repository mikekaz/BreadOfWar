if(jump == 0)
{
	vspeed = -23;

	jump = 1;
}

if keyboard_check(vk_space)
{
    if (sprite_index=Johnny_jump)
    {
        sprite_index=Johnny_jump;    
        image_index=image_number-1; 
    }
}