if (!atirando && !global.restart) {
    // Definir um intervalo aleatório entre 5 e 10 segundos (em termos de alarmes)
    alarm[0] = irandom_range(300, 600); // 300 a 600 frames (5 a 10 segundos)
    atirando = true;    
}

// Reconhecer que tomou dano
if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma) {
	if (obj_p_jogador.arma){
		var _nearesttear = instance_nearest(x, y, obj_tiro);
		obj_boss_4.hp -= obj_p_jogador.arma.dano;
		with (_nearesttear) {
			instance_destroy();
		}
	}
} 

if (hp < 1) {
    morri = true;
    atirando = false;
}