function scr_dano_player(_inimigo){
	if (!global.pause) {
		obj_p_jogador.toma_dano();
		direction = point_direction(x, y, _inimigo.x, _inimigo.y) + 180;
		bounce = 1;
		alarm[0] = 5;
		audio_play_sound(dano2, 200, false);
	}
}