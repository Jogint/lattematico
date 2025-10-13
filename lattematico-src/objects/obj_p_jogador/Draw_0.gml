/// @description Tela final
draw_self();

//vida max
draw_set_font(Font1); 
draw_set_color(c_white);
draw_text(170, 7, string(hp/2) + "/" + string(hp_inicial/2));

if(global.restart){
	// tamanho pop-up
	var pop_up_width = 230;
	var pop_up_height = 80;
	var pop_up_x = room_width / 2 - pop_up_width / 2;
	var pop_up_y = room_height / 2 - pop_up_height / 2;

	// Fundo do pop-up
	draw_set_color(c_maroon);
	draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);

	// Centralizar texto
	draw_set_color(c_white);
	var text_x = pop_up_x + pop_up_width / 2;
	var text_y = pop_up_y + pop_up_height / 2;
	
	// Centralização real
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(text_x, text_y, "Você foi derrotado! \nAperte 'Enter' para voltar ao início!");
}

if(reset_jogo){
	// tamanho pop-up
	var pop_up_width = 230;
	var pop_up_height = 80;
	var pop_up_x = room_width / 2 - pop_up_width / 2;
	var pop_up_y = room_height / 2 - pop_up_height / 2;

	// Fundo do pop-up
	draw_set_color(c_maroon);
	draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);

	// Centralizar texto
	draw_set_color(c_white);
	var text_x = pop_up_x + pop_up_width / 2;
	var text_y = pop_up_y + pop_up_height / 2;
	
	// Centralização real
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(text_x, text_y, "Você gostaria de reiniciar? \nAperte 'Enter' para voltar ao início! \nAperte 'Esc' para cancelar!");
}