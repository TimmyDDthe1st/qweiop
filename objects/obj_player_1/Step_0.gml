if(global.switchControls) {
	playerMovement(keyboard_check(ord("I")), keyboard_check(ord("P")), keyboard_check_pressed(ord("O")));
	image_index = 1;
	image_speed = 0;
} else {
	playerMovement(keyboard_check(ord("Q")), keyboard_check(ord("E")), keyboard_check_pressed(ord("W")));
	image_index = 0;
	image_speed = 0;
}
