// Continua atacando
dano_aplicado = false;
if (firing == false) {
    alarm[0] = cadencia;
    firing = true;
}

// Reconhecer que tomou dano
if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma) {
	if(obj_p_jogador.arma) {
	    var _nearesttear = instance_nearest(x,y,obj_tiro);
	    hp -= obj_p_jogador.arma.dano;
	    with (_nearesttear) {
	        instance_destroy();
	    }
	}
}

// Spawns do boss
if(hp < hp_inicial * 0.75 && spawn1 == false){
	instance_create_layer(x + 50, y, layer, obj_inimigo1);
	instance_create_layer(x - 50, y, layer, obj_inimigo1);
	spawn1 = true;
}
if(hp < hp_inicial * 0.5 && spawn2 == false){
	instance_create_layer(x + 100, y, layer, obj_inimigo1);
	instance_create_layer(x - 100, y, layer, obj_inimigo1);
	spawn2 = true;
}
if(hp < hp_inicial * 0.25 && spawn3 == false){
	instance_create_layer(x + 50, y + 50 , layer, obj_inimigo1);
	instance_create_layer(x - 50, y -50 , layer, obj_inimigo1);
	instance_create_layer(x, y + 50, layer, obj_inimigo2);
	spawn3 = true;
}

// Vitória do player contra o boss
if(hp < 1){
	instance_destroy();
	global.room_clear = true;
	instance_create_layer(x, y, "Spawner", obj_comida4);
}

// Vira a sprite na direção do usuário
var _player = instance_nearest(x, y, obj_p_jogador)
if (_player.x < x) {
    if (image_xscale > 0) {
        image_xscale = -2;
    }
} else if (_player.x > x) {
    if (image_xscale < 0) {
        image_xscale = 2;
    }
}