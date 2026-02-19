if (keyboard_check_pressed(vk_left)) {
	x = leftPosition;
} else if (keyboard_check_pressed(vk_right)) x = rightPosition;

if (x == leftPosition) {
	image_angle = 0;
	image_yscale = 1.864865;
} else {
	image_angle = 180;
	image_yscale = -1.864865;
}