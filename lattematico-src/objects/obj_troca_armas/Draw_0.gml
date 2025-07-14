if (obj_p_jogador.arma && room != SALA_SECRETA) {
	scr_pop_up_instrucao(self, "Pressione 'F' para soltar a arma atual (longe de paredes!) \nComidas curam sua vida! Não pegue agora se estiver com 10 corações");
}
if (!obj_p_jogador.arma && room != SALA_SECRETA){
	scr_pop_up_instrucao(self, "Comidas curam sua vida! Não pegue agora se estiver com 10 corações");
}
if (obj_p_jogador.arma && room == SALA_SECRETA) {
	scr_pop_up_instrucao(self, "Pressione 'F' para soltar a arma atual (longe de paredes!)", c_green, c_white);	
}
scr_controla_pop_up(self);