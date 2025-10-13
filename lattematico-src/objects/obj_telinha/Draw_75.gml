// reconhece sala em que está
scr_array_pergunta(self);

// Desenhar o obj_telinha
draw_self();

// configuração de texto
draw_set_font(Font1)
draw_set_color(c_white);

// Indicação de proximidade
var isEntrance = (room == Sala_Entrada);
if (player_near && !pop_up_visible && (!isEntrance || obj_p_jogador.arma) && !abrir_porta && (global.room_clear || room == Sala_Entrada || room == Sala_Tutorial)) {
	draw_text(x - 40 , y - 40, "Pressione 'E' para interagir");
}
if (player_near && !pop_up_visible && (isEntrance && obj_p_jogador.arma == noone)) {
	draw_text(x - 40 , y - 40, "Pegue a arma primeiro, depois volte aqui");
}

// Desenhar pop-up
if (pop_up_visible) {
	// Posição central do pop-up
	var pop_up_width = 300;
	var pop_up_height = 200;
	var pop_up_x = room_width / 2 - pop_up_width / 2;
	var pop_up_y = room_height / 2 - pop_up_height / 2;
	
	// Fundo do pop-up
	if (pop_up_erro) {
		draw_set_color(c_red);
	}
		draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);

	// Pergunta
	draw_set_color(c_black);
	var question = arrayPerg[selected_question];
	draw_text_ext(pop_up_x + 10, pop_up_y + 10, question.pergunta, string_height(question.pergunta), pop_up_width - 10);

	// Alternativas
	for (var i = 0; i < array_length(question.alternativas); i++) {
		if (i == selected_option) {
			if (pop_up_erro) {
				draw_set_color(c_black);
			} else {
				draw_set_color(c_red); // Destaque na opção selecionada
			}
		} else {
			draw_set_color(c_black);
		}
		draw_text(pop_up_x + 10 + (i * 50), pop_up_y + 180, string(question.alternativas[i]));
	}
		
	if (pop_up_visible && hint_selected) {
		draw_text_ext(pop_up_x + 10, pop_up_y + 130, question.dica, string_height(question.dica), 280);
	}
}