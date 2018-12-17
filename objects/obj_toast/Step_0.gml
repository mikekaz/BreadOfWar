if (global.pause) exit;
if (instance_exists(object6))   {
	move_towards_point(object6.x, object6.y, spd);
}

image_angle=direction;

if (toastHP <= 0) {
	instance_destroy();
	
}

//state - walking
switch (state) {

    //walking state
    case "WALKING": {
        if (vsp < falling_speed) vsp += grav;
        hsp = walking_speed * dir;        
        if (!position_meeting(x + ((sprite_width / 2) * dir), y + sprite_height, obj_wall)) {
            dir = dir * -1;
        }
        if (place_meeting(x + dir, y, obj_wall)) {
            dir = dir * -1;
        }
        break;    
    }
       
}

