// Flip sprite apenas uma vez, no início
var _player = instance_nearest(x, y, obj_p_jogador);

if (_player.x < x) {
    if (image_xscale > 0) {
        image_xscale = -1;
    }
} else if (_player.x > x) {
    if (image_xscale < 0) {
        image_xscale = 1;
    }
}

// Resto do código...
if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma) {
    var _tiro = instance_nearest(x, y, obj_tiro);
    direction = point_direction(x, y, _tiro.x, _tiro.y) + 180;
    bounce = 1;
    hp = hp - obj_p_jogador.arma.dano;
    with (_tiro) {
        instance_destroy();
    }
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

if (hp <= 0) {
    instance_destroy();
	audio_play_sound(dano1, 200, false);
    global.conta_inimigo--;
    var _chance = random(100);

    if (_chance <= 2) {
        var _drop = random(20);
        if (_drop == 1) {
            instance_create_layer(x, y, "Spawner", obj_comida4);
        } else if (_drop <= 3) {
            instance_create_layer(x, y, "Spawner", obj_comida3);
        } else if (_drop <= 8) {
            instance_create_layer(x, y, "Spawner", obj_comida2);
        } else {
            instance_create_layer(x, y, "Spawner", obj_comida1);
        }
    }
}

if (place_meeting(x, y, obj_colisao)) {
    x = antistickx;
    y = antisticky;
} else {
    antistickx = x;
    antisticky = y;
}
