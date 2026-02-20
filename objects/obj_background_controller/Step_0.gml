timer++;

if (timer >= intervalo) {
	global.scrollSpeed += 0.07;
	timer = 0;
}

bg1.y += global.scrollSpeed;
bg2.y += global.scrollSpeed;

var altura_real = sprite_get_height(spr_background) * 2;

if (global.scrollSpeed >= scrollMaxSpeed) {
	global.scrollSpeed = scrollMaxSpeed;	
}

if (bg1.y >= room_height) {
    bg1.y = bg2.y - altura_real;
} if (bg2.y >= room_height) {
    bg2.y = bg1.y - altura_real;
}