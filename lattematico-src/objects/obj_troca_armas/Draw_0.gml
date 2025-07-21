if (obj_p_jogador.arma && room != SALA_SECRETA) {
	scr_pop_up_instrucao(self, "Pressione 'F' para soltar a arma atual \nComidas curam sua vida! Não pegue agora se estiver com 10 corações");
}
if (!obj_p_jogador.arma && room != SALA_SECRETA){
	scr_pop_up_instrucao(self, "Comidas curam sua vida! Não pegue agora se estiver com 10 corações");
}
if (obj_p_jogador.arma && room == SALA_SECRETA) {
	scr_pop_up_instrucao(self, "Pressione 'F' para soltar a arma atual", c_green, c_white);	
}
scr_controla_pop_up(self);