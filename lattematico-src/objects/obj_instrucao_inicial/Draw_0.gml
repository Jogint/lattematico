if (obj_p_jogador.arma) {
	scr_pop_up_instrucao(self, "Siga para a porta e entre na torre. \nAo entrar, cuidado com inimigos! \nAnde até a arma no chão para segurá-la \nAperte e segure as teclas de seta para atirar", c_green, c_white);
} else {
	scr_pop_up_instrucao(self, "Ande até a arma no chão para segurá-la \nAperte e segure as teclas de seta para atirar", c_green, c_white);
}
scr_controla_pop_up(self);