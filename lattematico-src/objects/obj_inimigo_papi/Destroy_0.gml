/// @description Morreu e drops
	audio_play_sound(dano1, 200, false);
	global.conta_inimigo = max(global.conta_inimigo, 1);
	global.conta_inimigo --
	var _chance = (global.dificuldade == 1) ? random(50) : random(100);
	
	if (_chance <= 5 ){
		var _drop = random(20){
			if(_drop == 1){
				instance_create_layer(x, y, "Spawner", obj_comida4);
			}else if(_drop <= 3){
				instance_create_layer(x, y, "Spawner", obj_comida3);
			} else if(_drop <= 8){
				instance_create_layer(x, y, "Spawner", obj_comida2);
			}else{
				instance_create_layer(x, y, "Spawner", obj_comida1);
			}
		}
	}
	