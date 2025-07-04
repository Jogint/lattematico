
if (!ouch){ 
	toma_dano()


	var _inimigo = other
	        direction = point_direction(x, y, _inimigo.x, _inimigo.y) + 180;
	        bounce = 1;
	        alarm[0] = 5;
	        hp -= 1;
			audio_play_sound(dano2, 200, false);
	        with (_inimigo) {
	            direction = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y) + 180;
	            bounce = 1;
	            alarm[0] = 5;
			}
}	