/// @description Info Geral
depth = -1;

// Movimentação do personagem
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));

xspd = 0
yspd = 0
movespeed = 2
canmove = true;
antistickx = 0;
antisticky = 0;

global.onde = 10;
global.andar = 0;

// Vida do personagem
hp = 20
ouch = false;
tempo_inv = 120;

// Efeito piscando do personagem após levar dano
efeito_dano = function() {
    static _valor = -0.05;
    if (!ouch) return;
    image_alpha += _valor;
    if (image_alpha <= 0 || image_alpha >= 1) {
        _valor *= -1;
        image_alpha = clamp(image_alpha, 0, 1); // limites do alpha
    }
};

// Redução de hp do personagem
toma_dano = function(){
	if (ouch) return; // não reduz hp se tomou dano recentemente
	hp --;
	ouch = true;
	alarm[1] = tempo_inv;
}


// Trocação na penha
global.dir = 0;
atirando = false


// Variáveis de sprite
sprite_andando=spr_p_andalado
sprite_default=spr_p_parado
sprite_andando_left=spr_p_andalado_left
sprite_default_left=spr_p_parado_left

playdir = 0

// Gerenciamento de armas
global.arma_tipo = noone;
global.arma_dados = noone;
arma = noone;

usa_arma = function(){
	if(arma){
		//APONTANDO A ARMA
		arma.x = x + lengthdir_x(10, global.dir);
		arma.y =y + lengthdir_y(5, global.dir);
		arma.image_angle = global.dir;
		
		//ATIRANDO
		arma.atirar = false;

		if (keyboard_check(vk_up)) {
		    global.dir = 90;
		    arma.atirar = true;
		} else if (keyboard_check(vk_down)) {
		    global.dir = 270;
		    arma.atirar = true;
		} else if (keyboard_check(vk_left)) {
			global.dir = 180;
			arma.image_yscale = -abs(image_yscale);
			arma.atirar = true;
		} else if (keyboard_check(vk_right)) {
			global.dir = 0;
			arma.image_yscale = abs(image_yscale);
			arma.atirar = true;
		}
	}
}

joga_arma = function(){
	if(arma && (keyboard_check_released(ord("F")) || hp < 1)){
		arma.speed = 6;
		arma.direction = arma.image_angle;
		arma.atirar = false;
		arma = noone;
		global.arma = noone;
	}
}

//COLISÕES
bounce=0;

//MORRI
global.restart = false;
reset_jogo = false;
esc_cooldown = 0;

//serket