/// @description Insert description here
// You can write your code in this editor
dano_aplicado = false;
spawn1 = false;
spawn2 = false;
spawn3 = false;

image_xscale = 2;
image_yscale = 2;

firing = false;


target_x = x;
target_y = y;

fade_alpha = 0;       // Transparência inicial
fade_speed = 0.5;    // Velocidade do fade (aumente para 0.1 se estiver muito lento)
fade_active = false;  // Estado do fade

screen_shake_duration = 0
screen_shake_intensity = 0

morri = false

tempo_destruir = 5 * game_get_speed(gamespeed_fps)