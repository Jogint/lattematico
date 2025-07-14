if (room == Sala_Tutorial) {
	if (obj_telinha.pop_up_visible) {
		scr_pop_up_instrucao(self, "Escolha a resposta correta usando as setas do teclado");
	} else {
		scr_pop_up_instrucao(self, "Movimente-se usando as teclas W, A, S, D");
	}
}
scr_controla_pop_up(self);