//Tamanho
image_xscale = 1;
image_yscale = 1;

//Delay de tiro
delay_tiro = 0;

//Tiro
atirar = false;

atirando = function(){
	if(atirar){
		delay_tiro--;
		//cria tiro dentro do intervalo
		if(delay_tiro <= 0){
			//reseta intervalo
			delay_tiro = espera_tiro * game_get_speed(gamespeed_fps);
			
			//vários tiros
			for(var i = 0; i < qtd; i++){
				var _dir = 0
				//posição do tiro
				var _x = lengthdir_x(sprite_width -20, image_angle + _dir);
				var _y = lengthdir_y(sprite_width -20, image_angle + _dir);
				
				//cria tiro
				var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
				_tiro.speed = velocidade;
				_tiro.direction = global.dir + random_range(-imprecisao, imprecisao); //adicionar "+ _dir" no final dessa linha para tiros seguirem a direção
			}
		}
	}
}