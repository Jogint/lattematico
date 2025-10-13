if (!atirando && !global.restart && !global.pause) {
    var vida = hp / hp_inicial;
	var tempo = irandom_range(50, 150);
	if (hp < hp_inicial && vida > 0.3) {
		tempo = irandom_range(30, 50);
	} else if (vida <= 0.3) {
		tempo = irandom_range(10, 30);
	}
	show_debug_message("Tempo agora:" + string(tempo));
    alarm[0] = tempo;
    atirando = true;
}

// Faz com que o objeto acompanhe o jogador apenas no eixo X
mp_potential_step(obj_p_jogador.x, y, obj_p_jogador.movespeed * 0.3, false);

// Inimigo toma dano e knockback
if (!(instance_exists(obj_boss_mao) || instance_exists(obj_boss_mao1))) scr_dano_inimigo(self, false);

// Controle de spawns com base na vida
scr_spawns_boss4(self);

// Controle de tela final
if (hp < 1) {
    audio_play_sound(efeito_aleatorio, 200, false);
    morri = true;
	atirando = false;
	instance_create_depth(0, 0, -9999, obj_fade);
	tempo_destruir --
	
	if(tempo_destruir <= 0){
		instance_destroy()
		room_goto(ACABOU)
	}
}