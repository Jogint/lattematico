/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = 1;
image_yscale = 1;

atirando = function(){
	
	if(atirar){
		delay_tiro--;
		
		//cria tiro dentro do intervalo
		if(delay_tiro <= 0){
			
			//reseta intervalo
			delay_tiro = espera_tiro * game_get_speed(gamespeed_fps);
			
			//vários tiros
			var qtd = 6; // Número de tiros
			var angulo_total = 50; // Ângulo total coberto pelos tiros
			var angulo_inicial = -angulo_total / 2; // Começa no negativo para centralizar

			for (var i = 0; i < qtd; i++) {
			    var _dir = angulo_inicial + (i * (angulo_total / (qtd - 1))); // Ângulo entre os tiros

			    // Posição do tiro
			    var _x = lengthdir_x(sprite_width -10, image_angle + _dir);
			    var _y = lengthdir_y(sprite_width, image_angle + _dir);
    
			    // Cria tiro
			    var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
			    _tiro.speed = velocidade;
			    _tiro.direction = global.dir + random_range(-imprecisao, imprecisao) + _dir; // Direção do tiro
			}
			
			
				}
		}
	}
