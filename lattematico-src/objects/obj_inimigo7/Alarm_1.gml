/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_p_jogador)) {
    // Calcular o ângulo inicial em direção ao jogador
    var angulo_inicial = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y);
    
    // Criar os 4 tiros
    for (var i = 0; i < 4; i++) {
        // Calcular o ângulo para cada tiro
        var angulo = angulo_inicial + (i * 90);
        
        // Criar o tiro
		audio_play_sound(snd_tiro2, 200, false);
        var tiro = instance_create_layer(x, y, "Spawner", obj_tiro_inimigo);
        tiro.direction = angulo;
        tiro.speed = 5; // Velocidade do tiro
    }
}

// Reativar o alarm para disparar novamente após 5 segundos
alarm[1] = game_get_speed(gamespeed_fps) * 3; // 5 segundos