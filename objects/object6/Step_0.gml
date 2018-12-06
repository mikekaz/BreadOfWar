//Keep the player inside the map
if (x <=32) x =32
if (x >= room_width-32) x = room_width - 32;
if (y <= 32) y=32
if (y >= room_height-32) y = room_height - 32;

if global.pHealth < 0 {
	global.pHealth = 0;
}

if global.pHealth > 6 {
	global.pHealth = 6;
}

with(other) {
hp += -1;

}

instance_destroy();