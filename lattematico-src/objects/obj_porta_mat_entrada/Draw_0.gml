draw_self();
if(obj_telinha.abrir_porta){
	scr_desenha_seta(self, "cima");
} else {
	scr_desenha_seta(self, "cima", c_red, c_maroon);
}