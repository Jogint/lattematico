// Controles gerais
image_xscale = 2;
image_yscale = 2;
dano_aplicado = false;
hp = hp_inicial;
atirando = false;
target_x = x;
target_y = y;

// Spaw de inimigos
spawn1 = false;
spawn2 = false;
spawn3 = false;

// Fim de jogo
fade_alpha = 0;
fade_speed = 0.5;    // aumente para 0.1 se estiver muito lento
fade_active = false;  // Estado do fade

screen_shake_duration = 0
screen_shake_intensity = 0

morri = false
tempo_destruir = 5 * game_get_speed(gamespeed_fps)