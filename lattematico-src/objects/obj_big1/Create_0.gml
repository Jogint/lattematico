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
			delay_tiro = espera_tiro * room_speed;
			
			//vários tiros
			for(var i = 0; i < qtd; i++){
				var _dir = -45 + (i*45); //cálculo de ângulo de tiros
			
			
				//posição do tiro
				var _x = lengthdir_x(sprite_width, image_angle + _dir);
				var _y = lengthdir_y(sprite_width, image_angle + _dir);
				
				//cria tiro
				var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
				_tiro.speed = velocidade;
				_tiro.direction = global.dir + random_range(-imprecisao, imprecisao) + _dir;  //adicionar "+ _dir" no final dessa linha para tiros seguirem a direção
			
			
				}
		}
	}
}