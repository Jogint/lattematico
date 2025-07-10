draw_set_font(Font1);
draw_set_color(c_white);
draw_text(30, 207, "Ande até a arma no chão para segurá-la \nAperte e segure as teclas de seta para atirar");
if (obj_p_jogador.arma) {
	draw_text(30, 247, "Siga para a porta e entre na torre. \nAo entrar, cuidado com inimigos! ");
}