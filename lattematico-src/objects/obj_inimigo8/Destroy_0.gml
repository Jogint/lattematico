/// @description Insert description here
// You can write your code in this editor

var num_tiros = 10;

// Ângulo entre cada tiro
var angulo_inicial = 0;
var incremento_angulo = 360 / num_tiros;

// Criar os tiros em círculo
for (var i = 0; i < num_tiros; i++) {
    // Calcular o ângulo atual
    var angulo = angulo_inicial + (i * incremento_angulo);
    
    // Criar o tiro
    var tiro = instance_create_layer(x, y, layer, obj_tiro_inimigo);
    tiro.direction = angulo; // Configurar a direção do tiro
    tiro.speed = 5;          // Configurar a velocidade do tiro
}

audio_play_sound(snd_tiro3, 200, false);