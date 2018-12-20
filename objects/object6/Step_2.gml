if (last_hp != playerHP) {
    i_frames = true;
    alarm [11] = 30;
}

if (playerHP < 1) instance_destroy();

last_hp = playerHP;



if ( playerHP = 0) 
{ game_restart()
}



