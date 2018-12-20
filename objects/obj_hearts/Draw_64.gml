/// Draw the hearts
var xoffset = 24;

// Use a for loop
for (var i=0; i<5; i++) {
	draw_sprite(spr_heart, 0, xstart+(xoffset*i), ystart);
}


//draw_healthbar(x,y,19,29,c_red,c_silver,c_red,100,true,true,true);
