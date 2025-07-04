// Desenhar o obj_telinha
draw_self();

draw_set_font(Font1)


// Indicação de proximidade
if (player_near && !pop_up_visible && global.room_clear == true && abrir_porta == false) {
    draw_text(x - 40 , y - 40, "Pressione 'E' para interagir");
}

// Desenhar pop-up
if (pop_up_visible) {
    // Posição central do pop-up
    var pop_up_width = 300;
    var pop_up_height = 200;
    var pop_up_x = room_width / 2 - pop_up_width / 2;
    var pop_up_y = room_height / 2 - pop_up_height / 2;

    // Fundo do pop-up
    draw_set_color(c_white);
    draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);

    // Pergunta
    draw_set_color(c_black);
    var question = global.perguntas2[selected_question];
    draw_text_ext(pop_up_x + 10, pop_up_y + 10, question.pergunta, string_height(question.pergunta), 300);

    // Alternativas
    for (var i = 0; i < array_length(question.alternativas); i++) {
        if (i == selected_option) {
            draw_set_color(c_red); // Destaque na opção selecionada
        } else {
            draw_set_color(c_black);
        }
        draw_text(pop_up_x + 10 + (i * 50), pop_up_y + 180, string(question.alternativas[i]));
    }
	
	// Dicas
	if (pop_up_visible && hint_selected) {
		draw_text_ext(pop_up_x + 10, pop_up_y + 100, question.dica, string_height(question.dica), 280);
	}

}