timer++;
timer2++;

#region spawn CLT
if (timer2 > intervalo2) {
    
    var spawnX_clt = choose(global.leftPosition, global.rightPosition);
    var spawnY_clt = -5;
    
	var area = 128;
	var tolerancia = 50;
	
    var colisao_clt = collision_rectangle(
        spawnX_clt - area, spawnY_clt - area,
        spawnX_clt + area, spawnY_clt + area,
        obj_food, false, true
    ) || collision_rectangle(
        spawnX_clt - area, spawnY_clt - area,
        spawnX_clt + area, spawnY_clt + area,
        obj_clt, false, true
    );
    
    var mesmaLinha_clt = collision_rectangle(
        0, spawnY_clt - tolerancia,
        room_width, spawnY_clt + tolerancia,
        obj_food, false, true
    ) || collision_rectangle(
        0, spawnY_clt - tolerancia,
        room_width, spawnY_clt + tolerancia,
        obj_clt, false, true
    );
    
    if (!colisao_clt && !mesmaLinha_clt && instance_number(obj_clt) < 2) {
        instance_create_layer(spawnX_clt, spawnY_clt, "Instances", obj_clt);
        timer2 = 0;
    }
}
#endregion

#region spawn comidas
if (timer > intervalo) {
	
	var tolerancia = 50;

	var spawnX = choose(global.leftPosition, global.rightPosition);
	var spawnY = -5

	var area = 128;

	var colisao = collision_rectangle(
	    spawnX - area, spawnY - area, 
	    spawnX + area, spawnY + area, 
	    obj_food, false, true
	) || collision_rectangle(
	    spawnX - area, spawnY - area, 
	    spawnX + area, spawnY + area, 
	    obj_clt, false, true
	);

	var mesmaLinha = collision_rectangle(
	    0, spawnY - tolerancia,
	    room_width, spawnY + tolerancia,
	    obj_food, false, true
	);
	
	if (!colisao && !mesmaLinha) {
	    instance_create_layer(spawnX, spawnY, "Instances", whichFood);
		timer = 0;
	}
	
}
#endregion

#region array das comidas
if (!instance_exists(obj_batatinha)) array_push(opcoes, obj_batatinha);
if (!instance_exists(obj_burguer)) array_push(opcoes, obj_burguer);
if (!instance_exists(obj_chocolate)) array_push(opcoes, obj_chocolate);
if (!instance_exists(obj_coxinha)) array_push(opcoes, obj_coxinha);

if (array_length(opcoes) > 0) {
    whichFood = opcoes[irandom(array_length(opcoes) - 1)];
} else {
    instance_destroy();
}

#endregion

