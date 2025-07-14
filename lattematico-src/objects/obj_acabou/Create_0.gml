// Define os quatro pontos predefinidos
pontos = [
    [128, 143], // Ponto 1 (x, y)
    [222, 95], // Ponto 2 (x, y)
    [300, 143], // Ponto 3 (x, y)
    [222, 222]  // Ponto 4 (x, y)
];

// Índice do ponto atual
ponto_atual = 0;

// Tempo para mudar de ponto (em segundos)
tempo_mudanca = 2;

// Inicializa o temporizador
alarm[0] = tempo_mudanca * game_get_speed(gamespeed_fps);

pop_up_info_aberto = true;