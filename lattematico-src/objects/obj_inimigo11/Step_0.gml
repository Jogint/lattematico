/// @description Inimigo com lógica de sprite e comportamento corrigidos

// Pegar a instância mais próxima do jogador
var _player = instance_nearest(x, y, obj_p_jogador);

// Vira a sprite na direção do usuário
scr_flip_sprite(self);

// Inimigo toma dano e knockback
scr_dano_inimigo(self, true);

// Comportamento baseado no estado
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

            // Criar 6 tiros em padrão circular
			audio_play_sound(snd_tiro2, 200, false);
            for (var i = 0; i < 6; i++) {
                var angulo = i * (360 / 6);
                var tiro = instance_create_layer(x, y, "Spawner", obj_tiro_inimigo);
                tiro.direction = angulo;
                tiro.speed = 5;
            }
        }
        break;

    case "avanco":
        if (point_distance(x, y, dest_x, dest_y) > velocidade_avanco) {
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

//Evento pai (morreu)
event_inherited();