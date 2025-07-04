/// @description Insert description here
// You can write your code in this editor
// Defina a música inicial com base no andar atual

if (!variable_global_exists("andar_atual")) {
    global.andar_atual = 0; // Ou qualquer valor inicial apropriado
}

// Forçar música inicial
global.musica_atual = -1; // Garante que será detectada como nova música
global.andar_atual = 0;   // Define o andar inicial

// Determina a primeira música
var musica_inicial = fase1; // Ajuste se o andar inicial puder variar
audio_stop_all();
audio_play_sound(musica_inicial, 1, true);

// Atualiza a música atual
global.musica_atual = musica_inicial;