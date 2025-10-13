draw_self();
if(global.room_clear){
	scr_desenha_seta(self, "cima");
	if (instance_exists(obj_porta_mat) && !obj_telinha.abrir_porta) {
		with (obj_porta_mat) {
			scr_desenha_seta(self, "esquerda", c_red, c_maroon);
		}
	}
}