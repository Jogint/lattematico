/// @description Insert description here
// You can write your code in this editor


var dir_jogador = point_direction(x, y, obj_p_jogador.x, obj_p_jogador.y);

for (var i = -1; i <= 1; i++) {
    var angulo = dir_jogador + (i * 45); // Tiros a -45°, 0° e 45°
    var _x = lengthdir_x(10, angulo);   // Ajuste 10 para controlar a distância inicial
    var _y = lengthdir_y(10, angulo);

    var tiro = instance_create_layer(x + _x, y + _y, "Tiros", obj_tiro_inimigo);
    tiro.direction = angulo;            // Direção do tiro
    tiro.speed = 2;                     // Ajuste a velocidade conforme necessário
}

atirando = false;