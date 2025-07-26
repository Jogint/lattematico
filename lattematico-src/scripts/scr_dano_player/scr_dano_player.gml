function scr_dano_player(_inimigo){
	if (!global.pause) {
		toma_dano()
		direction = point_direction(x, y, _inimigo.x, _inimigo.y) + 180;
		bounce = 1;
		alarm[0] = 5;
		hp -= 1;
		audio_play_sound(dano2, 200, false);
	}
}