/// @description Insert description here
// You can write your code in this editor

// Criar o tiro na direção norte (cima)
var tiro1 = instance_create_layer(x, y, layer, obj_tiro_inimigo);
tiro1.direction = 90; // Direção norte
tiro1.speed = 5;      // Velocidade do tiro

// Criar o tiro na direção sul (baixo)
var tiro2 = instance_create_layer(x, y, layer, obj_tiro_inimigo);
tiro2.direction = 270; // Direção sul
tiro2.speed = 5;       // Velocidade do tiro

// Criar o tiro na direção leste (direita)
var tiro3 = instance_create_layer(x, y, layer, obj_tiro_inimigo);
tiro3.direction = 0; // Direção leste
tiro3.speed = 5;     // Velocidade do tiro

// Criar o tiro na direção oeste (esquerda)
var tiro4 = instance_create_layer(x, y, layer, obj_tiro_inimigo);
tiro4.direction = 180; // Direção oeste
tiro4.speed = 5;       // Velocidade do tiro

audio_play_sound(snd_tiro3, 200, false);