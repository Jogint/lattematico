randomize(); // rng boys

// Reconhecer que tomou dano
if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma) {
    var _nearesttear = instance_nearest(x,y,obj_tiro);
    hp -= obj_p_jogador.arma.dano;
    with (_nearesttear) {
        instance_destroy();
    }
}

// Controle POO de ambos os tipos de tiro
if (firing == false) {
    alarm[0] = 10;
    firing = true;
} 
if (hp < hp_inicial * 0.4 && firing2 == false) {
    alarm[1] = 10;
    firing2 = true;
}



// Vitória do player contra o boss
if (hp < 1) {
    instance_destroy();
	global.room_clear = true;
	instance_create_layer(x, y, layer, obj_comida4)
}