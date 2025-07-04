/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Tiro em direção ao jogador a cada 5 segundos (usando alarm)
if (!alarm[1]) {
    alarm[1] = room_speed * 3; // 5 segundos
}