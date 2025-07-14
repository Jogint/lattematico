if (!ouch){
	var _inimigo = other
	scr_dano_player(_inimigo)
	with (_inimigo) {
		direction = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y) + 180;
	    bounce = 1;
	}
}