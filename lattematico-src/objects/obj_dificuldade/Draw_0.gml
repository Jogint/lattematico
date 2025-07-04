if(room == DIFICULDADE){

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var i = 0; i < 2; i++) {
	    var cx = centro_x;
	    var cy = caixa_y_base + i * espacamento;

	    // Fundo da caixa
	    draw_set_color(c_ltgray);
	    draw_rectangle(cx - caixa_largura div 2, cy - caixa_altura div 2,
	                   cx + caixa_largura div 2, cy + caixa_altura div 2, false);

	    // Contorno se selecionado
	    if (i == opcao_selecionada) {
	        draw_set_color(c_red);
	        draw_rectangle(cx - caixa_largura div 2 - 4, cy - caixa_altura div 2 - 4,
	                       cx + caixa_largura div 2 + 4, cy + caixa_altura div 2 + 4, false);
	    }

	    // Texto da dificuldade
	    draw_set_color(c_black);
	    draw_text(cx, cy, dificuldades[i]);
	}

	draw_set_color(c_white);


	// Texto explicativo abaixo
	var texto = explicacoes[opcao_selecionada];

	draw_set_color(c_white);
	draw_text(centro_x, caixa_y_base + espacamento * 2, 
	    texto);
}else{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
