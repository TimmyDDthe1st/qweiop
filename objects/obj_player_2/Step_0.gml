if(!global.switchControls) {
	playerMovement(keyboard_check(ord("I")), keyboard_check(ord("P")), keyboard_check_pressed(ord("O")));
	image_index += 1;
} else {
	playerMovement(keyboard_check(ord("Q")), keyboard_check(ord("E")), keyboard_check_pressed(ord("W")));
	image_index -= 1;
}
