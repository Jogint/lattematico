//Eventos pai
event_inherited();

// Tiro em direção ao jogador a cada 5 segundos (usando alarm)
if (!alarm[1]) {
    alarm[1] = game_get_speed(gamespeed_fps) * 3; // 5 segundos
}