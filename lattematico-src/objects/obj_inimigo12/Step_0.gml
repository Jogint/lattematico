image_xscale = 1.5;
image_yscale = 1.5;

// Anda se for possível e não gruda nas paredes
if (ataque) {
    var px = obj_p_jogador.x;
    var py = obj_p_jogador.y;
    
    direction = point_direction(x, y, px, py);
    var _ok = mp_potential_step(px, py, obj_p_jogador.movespeed * velocidade, false);

	if (place_meeting(x, y, obj_colisao)) {
		var dirs = [direction + 180, direction + 90, direction - 90, direction + 45];
		var moved = false;

		for (var i = 0; i < array_length(dirs); i++) {
			if (move_contact_solid(dirs[i], 4)) {
				moved = true;
				break;
			}
		}
	}
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

if (bounce == 1) {
    var knockback_dist = 5;
    move_contact_solid(direction, knockback_dist);

    bounce = 0;
    ataque = false;
    alarm[0] = 5;
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
				instance_create_layer(x, y, "Spawner", obj_comida1);
			}else if(_drop <= 3){
				instance_create_layer(x, y, "Spawner", obj_comida4);
			}else if(_drop <= 8){
				instance_create_layer(x, y, "Spawner", obj_comida3);
			}else{
				instance_create_layer(x, y, "Spawner", obj_comida2);
			}
		}
	}
}

//colisões

if (place_meeting(x,y,obj_colisao)) {
    x = antistickx;
    y = antisticky;
} else {
    antistickx = x;
    antisticky = y;
}