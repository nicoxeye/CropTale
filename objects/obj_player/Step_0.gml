up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
inventory_key = keyboard_check(ord("I"));

xspd = (right_key - left_key) * movespeed;
yspd = (down_key - up_key) * movespeed;

if yspd == 0 {
	if xspd > 0 {
		face = RIGHT
	}

	if xspd < 0 {
		face = LEFT
	}
}

if xspd == 0 {
	if yspd > 0 {
		face = DOWN
	}

	if yspd < 0 {
		face = UP
	}
}

sprite_index = sprite[face]

if xspd == 0 && yspd == 0 {
	image_index = 0;
}

x += xspd;
y += yspd;
