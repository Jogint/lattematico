function scr_desenha_seta(obj, direcao, cor_seta, cor_brilho){
	if (is_undefined(cor_seta)) cor_seta = c_lime;
	if (is_undefined(cor_brilho)) cor_brilho = c_yellow;
	var inicio_seta_x = 0;
	var inicio_seta_y = 0;
	var tamanho_seta = 0;
	var ponta_seta = 0;
	
	with (obj) {
		var cor = (current_time div 1000) mod 2 == 0 ? cor_seta : cor_brilho;
		draw_set_color(cor);
		switch (direcao) {
			case "direita":
				inicio_seta_x = x - 50;
				inicio_seta_y = y + 8;
				tamanho_seta = inicio_seta_x + 20;
				ponta_seta = 11;
				draw_arrow(inicio_seta_x, inicio_seta_y, tamanho_seta, inicio_seta_y, ponta_seta);
				break;
			case "esquerda":
				inicio_seta_x = x + 50;
				inicio_seta_y = y - 8;
				tamanho_seta = inicio_seta_x - 20;
				ponta_seta = 11;
				draw_arrow(inicio_seta_x, inicio_seta_y, tamanho_seta, inicio_seta_y, ponta_seta);
				break;
			case "cima": 
				inicio_seta_x = (room == Sala_Entrada) ? x + 20 : x + 8;
				inicio_seta_y = y + 60;
				tamanho_seta = inicio_seta_y - 20;
				ponta_seta = 11;
				draw_arrow(inicio_seta_x, inicio_seta_y, inicio_seta_x, tamanho_seta, ponta_seta);
				break;
		}
	}
}