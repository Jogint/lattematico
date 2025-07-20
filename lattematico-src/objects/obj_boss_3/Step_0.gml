
// Reconhecer que tomou dano
if(ataque == true) {
	mp_potential_step(obj_p_jogador.x, obj_p_jogador.y, obj_p_jogador.movespeed - 0.5, false);
}

if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma) {
	var _tiro = instance_nearest(x, y, obj_tiro);
	direction = point_direction(x, y, _tiro.x, _tiro.y) + 180;
	bounce = 1
	hp = hp - obj_p_jogador.arma.dano;
	with(_tiro){
		instance_destroy();
	}
}

if(bounce == 1){
	alarm[0] = 5;
	speed = 5;
	bounce = 0;
	ataque = false
}

// Controle de tiros
if (firing == false) {
    alarm[1] = cadencia;
    firing = true;
}

// Vira a sprite na direção do usuário
var _player = instance_nearest(x, y, obj_p_jogador);
if (_player.x < x) {
    image_xscale = -1;
} else if (_player.x > x) {
	image_xscale = 1;
}

// Vitória do player contra o boss
if(hp < 1){
	instance_destroy()
	global.room_clear = true;
	instance_create_layer(x, y, "Spawner", obj_comida4);	
}

// Colisões
if (place_meeting(x,y,obj_colisao)) {
    x = antistickx;
    y = antisticky;
} else {
    antistickx = x;
    antisticky = y;
}