/// @description Controle de tiros
var dir_jogador = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y);
var num_tiros = 10;  // Define o número de tiros
var espacamento = 18; // Espaço entre os tiros em graus

// Loop para criar os tiros
for (var i = -floor(num_tiros / 2); i <= floor(num_tiros / 2); i++) {
    var angulo = dir_jogador + (i * espacamento); // Calcular o ângulo para cada tiro
    var _x = lengthdir_x(10, angulo); // Distância inicial no eixo X
    var _y = lengthdir_y(10, angulo); // Distância inicial no eixo Y

    var tiro = instance_create_layer(x + _x, y + _y, "Tiros", obj_tiro_inimigo);
    tiro.direction = angulo;
    tiro.speed = 2; // Velocidade do tiro
}

audio_play_sound(snd_tiro2, 200, false);
image_blend = c_red;
image_blend = c_white;  

if (!morri) {
    atirando = false;
}