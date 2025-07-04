/// @description Insert description here
// You can write your code in this editor


global.andar_atual = 0;




function tocar_musica_correspondente() {
    var musica_nova;

    // Escolher a música com base no andar
    if(instance_exists(boss_papi)){
		musica_nova = boss;
	}else if (global.andar_atual < 11) {
        musica_nova = fase1;
    } else if (global.andar_atual < 21) {
        musica_nova = fase2;
    } else if (global.andar_atual < 31) {
        musica_nova = fase3;
    } else {
        musica_nova = fase4;
    }

    // Se for a primeira música ou diferente da atual, tocar
    if (global.musica_atual != musica_nova || global.musica_atual == -1) {
        audio_stop_all();
        audio_play_sound(musica_nova, 1, true);
        global.musica_atual = musica_nova;
    }
}

if (!variable_global_exists("musica_atual")) {
    global.musica_atual = -1; // Força a tocar a música na primeira execução
}

tocar_musica_correspondente();
