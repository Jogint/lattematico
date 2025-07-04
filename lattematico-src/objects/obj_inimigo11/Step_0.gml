/// @description Inimigo com lógica de sprite e comportamento corrigidos

// Pegar a instância mais próxima do jogador
var _player = instance_nearest(x, y, obj_p_jogador);

// Flip do sprite (executado apenas uma vez por frame)
if (instance_exists(_player)) {
    if (_player.x < x && image_xscale > 0) {
        image_xscale = -1; // Inverter para a esquerda
    } else if (_player.x > x && image_xscale < 0) {
        image_xscale = 1; // Normal para a direita
    }
}

// Toma dano ao colidir com tiro
if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma != noone) {
    var _tiro = instance_nearest(x, y, obj_tiro);
    direction = point_direction(x, y, _tiro.x, _tiro.y) + 180;
    bounce = 1;
    hp -= obj_p_jogador.arma.dano; // Reduzir HP com base no dano da arma
    with (_tiro) {
        instance_destroy();
    }
}

// Comportamento baseado no estado
switch (estado) {
    case "espera":
        tempo_avanco -= 1;
        if (tempo_avanco <= 0) {
            estado = "alerta";
            image_blend = cor_alerta;
            tempo_avanco = room_speed;
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
            tempo_avanco = room_speed * 3;
        }
        break;
}

// Lógica de "bounce"
if (bounce == 1) {
    alarm[0] = 5;
    speed = 5;
    bounce = 0;
    ataque = false;
}

// Inimigo morrendo e dropando itens
if (hp <= 0) {
    instance_destroy();
	audio_play_sound(dano1, 200, false);
    global.conta_inimigo--;
    var _chance = random(100);

    if (_chance <= 2) {
        var _drop = random(20);
        if (_drop == 1) {
            instance_create_layer(x, y, "Spawner", obj_comida1);
        } else if (_drop <= 3) {
            instance_create_layer(x, y, "Spawner", obj_comida4);
        } else if (_drop <= 8) {
            instance_create_layer(x, y, "Spawner", obj_comida3);
        } else {
            instance_create_layer(x, y, "Spawner", obj_comida2);
        }
    }
}

// Colisões com objetos de colisão
if (place_meeting(x, y, obj_colisao)) {
    x = antistickx;
    y = antisticky;
} else {
    antistickx = x;
    antisticky = y;
}
