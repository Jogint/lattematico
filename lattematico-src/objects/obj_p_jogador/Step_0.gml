if (room == ACABOU) {
    instance_destroy();
	exit;
}
scr_tela_cheia();

// Movimentação
if (!global.pause){
    var direita = keyboard_check(ord("D"));
    var cima = keyboard_check(ord("W"));
    var esquerda = keyboard_check(ord("A"));
    var baixo = keyboard_check(ord("S"));

    xspd = (direita - esquerda) * movespeed;
    yspd = (baixo - cima) * movespeed;
}else{
    xspd = 0; yspd = 0;
}

// Movimentação final
x += xspd;
y += yspd;

// Anti-stuck (evitar que o jogador fique preso nas bordas do mapa)
scr_gerir_colisoes(self);

// Animação do sprite
if (keyboard_check(ord("D"))) playdir = 0;
if (keyboard_check(ord("A"))) playdir = 1;

if (global.pause) { 
    // Não muda sprite se não puder se mover
} else {
    var movendo = keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"));
    switch (playdir) {
        case 0:
            sprite_index = movendo ? sprite_andando : sprite_default;
            break;
        case 1:
            sprite_index = movendo ? sprite_andando_left : sprite_default_left;
            break;
    }
}

// Controle de armas
usa_arma();
joga_arma();

if (bounce == 1) {
    var knockback_dist = 10;
    move_contact_solid(direction, knockback_dist);
    bounce = 0;
    pode_mover = false;
}

// Morte do jogador
if (hp <= 0) {
    sprite_index = spr_p_morri;
    global.pause = true;
    joga_arma();
    global.restart = true;
    if (keyboard_check_pressed(vk_enter)) {
        game_restart();
    }
}

// Limite de HP
if (hp > hp_inicial) {
    hp = hp_inicial;
}

if (ouch) {
    efeito_dano();  // Chama a função de piscamento a cada quadro
}

// reset jogo
if (esc_cooldown > 0) {
	esc_cooldown -= 1;
    return;
} else if (keyboard_check_pressed(vk_escape) && !reset_jogo) {
	reset_jogo = true;
	global.pause = true;
	esc_cooldown = 15;
}

if (esc_cooldown > 0) {
	return;
} else if (reset_jogo) {
    if (keyboard_check_pressed(vk_enter)) {
        game_restart();
    }
	if (keyboard_check_pressed(vk_escape) && reset_jogo) {
        reset_jogo = false;
		esc_cooldown = 15;
		global.pause = false;
    }
}