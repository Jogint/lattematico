if (obj_p_jogador.arma && room != SALA_SECRETA) {
	scr_pop_up_instrucao("Pressione 'F' para soltar a arma atual (longe de paredes!) \nComidas curam sua vida! Não pegue agora se estiver com 10 corações")
}
if (room != SALA_SECRETA){
	scr_pop_up_instrucao("Comidas curam sua vida! Não pegue agora se estiver com 10 corações")
}
if (obj_p_jogador.arma && room == SALA_SECRETA) {
	scr_pop_up_instrucao("Pressione 'F' para soltar a arma atual (longe de paredes!)", c_green, c_white)
}