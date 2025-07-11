/// @description Insert description here
// You can write your code in this editor

// Criar tiro em direção ao jogador

if (instance_exists(obj_p_jogador)) {
	audio_play_sound(snd_tiro2, 200, false);
    var tiro = instance_create_layer(x, y, "Spawner", obj_tiro_inimigo);
    tiro.direction = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y);
    tiro.speed = 3;
}

// Reativar o alarm para repetir o tiro
alarm[1] = game_get_speed(gamespeed_fps) * 3; // 5 segundos