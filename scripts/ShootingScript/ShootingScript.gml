//Shooting
if(mouse_check_button(mb_left)) && (cooldown<1)
{
	instance_create_layer(x, y, "BulletLayer", obj_bullet);
	cooldown = 8;

}
	cooldown = cooldown - 1 