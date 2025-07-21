/// @description Controle de tiros

var num_tiros = 4;

// Definindo os ângulos para as diagonais
var angulos = [45, 135, 225, 315];

// Criar os tiros nas diagonais
for (var i = 0; i < num_tiros; i++) {
    var tiro = instance_create_layer(x, y, layer, obj_tiro_inimigo);
    tiro.direction = angulos[i]; // Configurar a direção do tiro
    tiro.speed = 5; // Configurar a velocidade do tiro
}

audio_play_sound(snd_tiro2, 200, false);
atirando = false;