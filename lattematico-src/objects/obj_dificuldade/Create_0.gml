window_set_fullscreen(true);
global.screen_width = 1280;
global.screen_height = 720;
global.f11_cooldown = 0;
global.room_clear = false;
global.dificuldade = -1;
global.perguntas_entrada = [];
global.perguntas_tutorial = [];
global.perguntas = [];
global.perguntas2 = [];
global.perguntas3 = [];
global.perguntas4 = [];
init_armas();

konami_code = [vk_up, vk_up, vk_down, vk_down, vk_left, vk_right, vk_left, vk_right, ord("B"), ord("A")];
konami_index = 0;

caixa_largura = 180;
caixa_altura = 50;
espacamento = 70;

centro_x = display_get_gui_width() div 2; // Evita o erro do draw
caixa_y_base = 100;

dificuldades = ["Fácil", "Difícil"];
explicacoes = [
    "Modo fácil: Questões mais simples, ideal para alunos do Fundamental.",
    "Modo difícil: Questões mais complexas e englobando mais matérias, \n ideal para alunos do ensino médio e vestibulandos."
];

screen_width = 1280;
screen_height = 720;

opcao_selecionada = 0;