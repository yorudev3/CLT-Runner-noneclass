y += velocidade;

if (x == global.leftPosition) {
	image_xscale = 2;
} else {
	image_xscale = -2;
}

if (sprite_index != -1) {
    var altura_real = (sprite_get_height(sprite_index) * image_yscale) + 1;
    
    if (y > room_height + altura_real) {
        instance_destroy();
    }
} else {
    if (y > room_height + 64) {
        instance_destroy();
    }
}