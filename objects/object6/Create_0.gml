///Variables
hspd = 0;
vspd = 0;
spd = 10;

///MOVEMENTS
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

//RIGHT & LEFT
if (right_key) {
hspd = spd;
} else {
if (!right_key) 
hspd = 0;
}
x += hspd

if (left_key) {
hspd = -spd
} else {
if (!left_key)
hspd = 0
}
x += hspd

//UP & DOWN
if (up_key) {
vspd = -spd;
} else {
if (!up_key)
vspd = 0;
}
y += vspd

if (down_key) {
vspd = spd;
} else {
if (!down_key)
vspd = 0;
}
y += vspd