if (keyboard_check_pressed(vk_space)) {
	image_index++;
	if (image_index >= 3) room_goto_next();
}