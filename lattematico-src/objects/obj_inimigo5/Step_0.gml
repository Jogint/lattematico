/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
image_xscale = 1;
image_yscale = 1;

if(ataque == true){
mp_potential_step(obj_p_jogador.x, obj_p_jogador.y, obj_p_jogador.movespeed - 0.5, false);
}

if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma){
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

//flip sprite
var _player = instance_nearest(x, y, obj_p_jogador)

if(_player.x < self.x){
	image_xscale = image_xscale * -1
	
}else if(_player.x > self.x){
	image_xscale = abs(image_xscale) 
}

//inimigo morrendo e dropando coisas
if(hp <= 0){
	instance_destroy()
	audio_play_sound(dano1, 200, false);
	global.conta_inimigo --
	var _chance = random(100)
	
	if (_chance <= 2 ){
		var _drop = random(20){
			if(_drop == 1){
				instance_create_layer(x, y, "Spawner", obj_comida4);
			}else if(_drop <= 3){
				instance_create_layer(x, y, "Spawner", obj_comida3);
			}else if(_drop <= 8){
				instance_create_layer(x, y, "Spawner", obj_comida2);
			}else{
				instance_create_layer(x, y, "Spawner", obj_comida1);
			}
		}
	}
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