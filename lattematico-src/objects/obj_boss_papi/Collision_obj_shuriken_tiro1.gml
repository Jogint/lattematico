if (!other.dano_aplicado && !global.pause) {
    hp -= obj_p_jogador.arma.dano;
    other.dano_aplicado = true;
}