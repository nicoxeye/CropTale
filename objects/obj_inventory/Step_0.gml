if keyboard_check_pressed(ord("I")) {
	InvOpen = !InvOpen;
}

if keyboard_check_pressed(ord("1")) {
	HotBarSel = 0;
} else
if keyboard_check_pressed(ord("2")) {
	HotBarSel = 1;
} else
if keyboard_check_pressed(ord("3")) {
	HotBarSel = 2;
}

// scroll
if mouse_wheel_up() {
	if HotBarSel > 0 {
		HotBarSel--;
	} else {
		HotBarSel = InvWidth - 1;
	}
}

if mouse_wheel_down() {
	if HotBarSel < InvWidth - 1 {
		HotBarSel++;
	} else {
		HotBarSel = 0;
	}
}