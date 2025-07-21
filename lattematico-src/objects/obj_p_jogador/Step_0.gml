if (room == ACABOU) {
    instance_destroy();
	exit;
}
scr_tela_cheia();

// Movimentação
if (canmove){
    direita = keyboard_check(ord("D"));
    cima = keyboard_check(ord("W"));
    esquerda = keyboard_check(ord("A"));
    baixo = keyboard_check(ord("S"));

    xspd = (direita - esquerda) * movespeed;
    yspd = (baixo - cima) * movespeed;
}else{
    xspd = 0; yspd = 0;
}

// Colisões
if (place_meeting(x + xspd, y, obj_colisao)){
    xspd = 0;
}

if (place_meeting(x, y + yspd, obj_colisao)){
    yspd = 0;
}

// Movimentação final
x += xspd;
y += yspd;

// Animação do sprite
if(keyboard_check(ord("D"))){playdir = 0}
if(keyboard_check(ord("A"))){playdir = 1}

if keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D")){
    switch(playdir){
        case 0:
            sprite_index = sprite_andando;
            break;

        case 1:
            sprite_index = sprite_andando_left;
            break;
    }
} else {
    switch(playdir){
        case 0:
            sprite_index = sprite_default;
            break;

        case 1:
            sprite_index = sprite_default_left;
            break;
    }
}

usa_arma();
joga_arma();


if (bounce == 1) {
    var knockback_dist = 10;
    move_contact_solid(direction, knockback_dist);
    bounce = 0;
    canmove = false;
}

// Anti-stuck (evitar que o jogador fique preso em objetos)
if (place_meeting(x, y, obj_colisao)) {
    x = antistickx;
    y = antisticky;
} else {
    antistickx = x;
    antisticky = y;
}

// Morte do jogado

if (hp <= 0) {
    sprite_index = spr_p_morri;
    canmove = false;
    joga_arma();
    global.restart = true;
    if (keyboard_check_pressed(vk_enter)) {
        game_restart();
    }
}

// Limite de HP
if (hp > 20) {
    hp = 20;
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
    }
}

//serket

