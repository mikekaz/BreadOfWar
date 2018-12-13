//Shooting
{
	if(cooldown <= 0)
	if(mouse_check_button_pressed(vk_left))
	{
		instance_create_layer(x, y, "BulletLayer", obj_bullet);
	
		cooldown = 8;
	}
}