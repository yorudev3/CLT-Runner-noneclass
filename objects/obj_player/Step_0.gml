if (keyboard_check_pressed(vk_left)) {
	x = global.leftPosition;
} else if (keyboard_check_pressed(vk_right)) x = global.rightPosition;

if (x == global.leftPosition) {
	image_angle = 0;
	image_yscale = 1.864865;
} else {
	image_angle = 180;
	image_yscale = -1.864865;
}