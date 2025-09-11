// Vira a sprite na direção do usuário
scr_flip_sprite(self);

// Inimigo toma dano e knockback
scr_dano_inimigo(self, true);

if (global.restart || global.pause) {
	estado = "espera";
	tempo_avanco = 10000000;
}

switch (estado) {
    case "espera":
        tempo_avanco -= 1;
        if (tempo_avanco <= 0) {
            estado = "alerta";
            image_blend = cor_alerta;
            tempo_avanco = game_get_speed(gamespeed_fps);
        }
        break;

    case "alerta":
        tempo_avanco -= 1;
        if (tempo_avanco <= 0) {
            if (instance_exists(obj_p_jogador)) {
                dest_x = obj_p_jogador.x;
                dest_y = obj_p_jogador.y;
            }
            estado = "avanco";
            image_blend = cor_normal;
        }
        break;

	case "avanco":
		var dist = point_distance(x, y, dest_x, dest_y);
		if (!place_meeting(x, y, obj_p_jogador)) {
			var direcao = point_direction(x, y, dest_x, dest_y);
			x += lengthdir_x(velocidade_avanco, direcao);
			y += lengthdir_y(velocidade_avanco, direcao);
		} else {
		    estado = "espera";
			tempo_avanco = game_get_speed(gamespeed_fps) * 3;
	    }
		break;
}

// Impede grudar nas colisões
scr_gerir_colisoes(self);

if(hp < 1){
	instance_destroy()
}