//reseta o alarme
if (!atirando && !global.restart && !global.pause) {
    var vida = hp / hp_inicial;
    var tempo = (vida > 0.3) ? irandom_range(300, 600) : irandom_range(100, 300);
    alarm[0] = tempo;
    atirando = true;
}

// Reconhecer que tomou dano
scr_dano_inimigo(self, false);

// Spawns
scr_spawns_boss4(self);

if (hp < 1) {
	if (tempo_sumir > 0) {
		image_alpha -= 0.01;
		tempo_sumir--;
	} else {
		morri = true;
		atirando = true;
		instance_destroy();
	}
}