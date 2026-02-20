scrollMaxSpeed = 4.5;
timer = 0;
intervalo = 120;
bg1 = instance_create_layer(180, 0, "Background", obj_background);
bg2 = instance_create_layer(180, -640, "Background", obj_background);

var altura_real = sprite_get_height(spr_background) * 2;
bg2.y = bg1.y - altura_real;
