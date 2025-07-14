draw_self();
if(obj_telinha.abrir_porta){
	if (room == Sala_Tutorial) {
		scr_desenha_seta(self, "direita");
	} else {
		scr_desenha_seta(self, "esquerda");
	}
}