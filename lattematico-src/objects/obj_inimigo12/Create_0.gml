/// @description Variaveis

dano_aplicado = false;
bounce = 0;
ataque = true;

antistickx = 0;
antisticky = 0;


global.inimigosSala = 0;

if (global.dificuldade == 99) {
    velocidade += 0.15;
}
hp = scr_set_hp_inimigo(self, 3);
