function scr_pop_up_instrucao(obj, texto, cor_fundo, cor_texto) {
	if (obj.pop_up_info_aberto) {
		// define a cor
		if (is_undefined(cor_fundo)) cor_fundo = c_ltgray;
		if (is_undefined(cor_texto)) cor_texto = c_black;
	
		// tamanho pop-up
	    var pop_up_width = 320;
		var espacamento = 20;
		var altura_texto = string_height_ext(texto, espacamento, pop_up_width  - 10);
		var pop_up_height = altura_texto + espacamento;
		var pop_up_x = 20;
		var pop_up_y = 290 - altura_texto;
	
		// cria pop-up
		draw_set_color(cor_fundo);
		draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);

		// apresenta texto
		draw_set_color(cor_texto);
		draw_text_ext(pop_up_x + 10, pop_up_y + 10, texto, espacamento, pop_up_width - 10);
	}
}