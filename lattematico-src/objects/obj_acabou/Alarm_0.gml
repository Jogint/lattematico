// Atualiza o índice para o próximo ponto
ponto_atual = (ponto_atual + 1) mod array_length(pontos);

// Atualiza a posição do objeto para o próximo ponto
x = pontos[ponto_atual][0];
y = pontos[ponto_atual][1];

// Reinicia o alarme
alarm[0] = tempo_mudanca * game_get_speed(gamespeed_fps);