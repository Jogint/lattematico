draw_set_color(c_white);
draw_set_font(Font1);

if (obj_telinha_tutorial.pop_up_visible) {
	draw_text(30, 287, "Escolha a resposta correta usando as setas do teclado");
} else {
	draw_text(30, 287, "Movimente-se usando as teclas W, A, S, D");
}