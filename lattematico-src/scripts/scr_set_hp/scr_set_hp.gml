function scr_set_hp(obj, defesa){
	var hp_base = 5;
	with (obj) {
		switch (global.dificuldade) {
			case 0:  hp = round(hp_base * defesa * 0.8); break;
			case 1:  hp = round(hp_base * defesa); break;
			case 99: hp = round(hp_base * defesa * 1.5); break;
			default: hp = round(hp_base * defesa);
		}
	}
}