/// @description Insert description here
// You can write your code in this editor
dano_aplicado = false;
estado = "espera";
tempo_avanco = game_get_speed(gamespeed_fps) * 3;
dest_x = x;
dest_y = y;
velocidade_avanco = 4;
cor_normal = c_white;
cor_alerta = c_red;

bounce = 0;
ataque = true;

antistickx = 0;
antisticky = 0;
hp = scr_set_hp_inimigo(self, 3);
event_inherited();