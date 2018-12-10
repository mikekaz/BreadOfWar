/// Draw the hearts
var xoffset = 24;

// Use a for loop
for (var i=0; i<5; i++) {
	draw_sprite(spr_heart, 0, xstart+(xoffset*i), ystart);
}
