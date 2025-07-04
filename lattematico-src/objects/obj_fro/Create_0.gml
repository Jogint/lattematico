/// @description Insert description here
// You can write your code in this editor
first = true
evo = false;
level = 0;
stat = 0;


dano = 2;

//Tamanho
image_xscale = 1;
image_yscale = 1;


//Delay de tiro
delay_tiro = 0;



//Tiro
atirar = false;

atirando = function(){
	if (atirar) {
		delay_tiro--;

		if (delay_tiro <= 0) {
			delay_tiro = global.fro_espera_tiro * room_speed;

			// Verifica a evolução com base na espera de tiro
			if (global.fro_espera_tiro <= 0.5) {
				// 3 tiros com 45° de diferença
				var angulos = [-45, 0, 45];
				image_blend = c_orange;
			}
			else if (global.fro_espera_tiro <= 1.0) {
				// 2 tiros em V
				var angulos = [-20, 20];
				image_blend = c_aqua;
			}
			else {
				// 1 tiro central
				var angulos = [0];
				image_blend = c_purple; // ou outra cor padrão
			}

			// Criar os tiros
			for (var i = 0; i < array_length(angulos); i++) {
				var _dir = angulos[i];
				var _x = lengthdir_x(sprite_width - 20, image_angle + _dir);
				var _y = lengthdir_y(sprite_width - 20, image_angle + _dir);

				var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
				_tiro.speed = global.fro_velocidade;
				_tiro.direction = global.dir + _dir + random_range(-global.fro_imprecisao, global.fro_imprecisao);
			}
		}
	}
}


global.fro_velocidade = 6;
global.fro_espera_tiro = 1.5;
global.fro_imprecisao = 8;
andar_anterior = 0;