// Continua atacando
dano_aplicado = false;
if (!atirando && !global.restart  && !global.pause) {
    alarm[0] = cadencia;
    atirando = true;
}

// Inimigo toma dano e knockback
scr_dano_inimigo(self, false);

// Spawns do boss
if(hp < hp_inicial * 0.75 && !spawn1){
	instance_create_layer(x + 50, y, layer, obj_inimigo1);
	instance_create_layer(x - 50, y, layer, obj_inimigo1);
	global.conta_inimigo -= 2; // por conta dos dois spawns
	spawn1 = true;
}
if(hp < hp_inicial * 0.5 && !spawn2){
	instance_create_layer(x + 100, y, layer, obj_inimigo1);
	instance_create_layer(x - 100, y, layer, obj_inimigo1);
	global.conta_inimigo -= 2; // por conta dos dois spawns
	spawn2 = true;
}
if(hp < hp_inicial * 0.25 && !spawn3){
	instance_create_layer(x + 50, y + 50 , layer, obj_inimigo1);
	instance_create_layer(x - 50, y -50 , layer, obj_inimigo1);
	instance_create_layer(x, y + 50, layer, obj_inimigo2);
	global.conta_inimigo -= 2; // por conta dos dois spawns
	spawn3 = true;
}

// Vitória do player contra o boss
if(hp < 1){
	instance_destroy();
}

// Vira a sprite na direção do usuário
scr_flip_sprite(self);