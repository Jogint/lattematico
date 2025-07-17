/// @description Insert description here
// You can write your code in this editor


if(ataque == true){
mp_potential_step(obj_p_jogador.x, obj_p_jogador.y, obj_p_jogador.movespeed - 0.5, false);
}

if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma != noone){
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

if (firing == false)
{
    alarm[1] = cadencia;
    firing = true;
}



// Pegar a instância mais próxima do jogador
var _player = instance_nearest(x, y, obj_p_jogador);

// Verificar a posição relativa do jogador
if (_player.x < x) {
    // Jogador à esquerda, garantir que o sprite esteja invertido
    if (image_xscale > 0) {
        image_xscale = -1;
    }
} else if (_player.x > x) {
    // Jogador à direita, garantir que o sprite esteja normal
    if (image_xscale < 0) {
        image_xscale = 1;
    }
}

//inimigo morrendo e dropando coisas
if(hp <= 0){
	instance_destroy()
	global.room_clear = true;
	
	instance_create_layer(x, y, "Spawner", obj_comida4);
			
			
}

//colisões

if (place_meeting(x,y,obj_colisao))
{
    x = antistickx;
    y = antisticky;
}
//Removed anti stuck with the spitter
else
{
    antistickx = x;
    antisticky = y;
}