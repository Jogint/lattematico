function scr_set_hp_inimigo(obj, defesa){
	var hp_base = 5;
	with (obj) {
		switch (global.dificuldade) {
			case 0:  return round(hp_base * defesa * 0.8);
			case 1:  return round(hp_base * defesa);
			case 99: return round(hp_base * defesa * 1.5);
			default: return round(hp_base * defesa);
		}
	}
}