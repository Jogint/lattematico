if(obj_telinha.abrir_porta){
	sprite_index = spr_porta_entrada_aberta

		if(place_meeting(x, y, obj_p_jogador)){
			switch(nextRoom){
				case 0:
					global.onde = 0
					room_goto_next();
					global.andar_atual ++;
					break;
					//vou si matar
				case 1:
					global.onde = 1
					room_goto_previous();
					break;
				case 2:
					global.onde = 2
					room_goto(sala_esp);
					break;
				case 3:
					global.onde = 3
					room_goto(sala_esp);
					break;	
			}	

			var _jogador = instance_nearest(x, y, obj_p_jogador); // Localiza o jogador mais próximo
			if (_jogador != noone && _jogador.arma != noone) {
			    global.arma_tipo = _jogador.arma.object_index; // Salva o tipo da arma
			    global.arma_dados = {x: _jogador.arma.x, y: _jogador.arma.y}; // Salva a posição relativa da arma (opcional)
			    instance_destroy(_jogador.arma); // Remove a arma atual da sala
			    _jogador.arma = noone;
			}

		}
	}
