/// @description Info Geral
// Você pode escrever seu código neste editor

window_set_fullscreen(true);

screen_width = 1280;
screen_height = 720;
depth = -1;

// movimentos
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));

//vida
hp = 20
ouch = false;
tempo_inv = 120;

//piscando
efeito_dano = function(){
		
	static _valor = -0.05;
	
	if(!ouch) return;
	
	if (image_alpha <= 0 ) _valor *= -1;
	if (image_alpha > 1 ) _valor *= -1;
	
	image_alpha += _valor
}


//tomando
toma_dano = function(){
	
	
	if (ouch) return;
	
	hp --;
	ouch = true;
	
	
	alarm[1] = tempo_inv;
}

//movimentação
xspd = 0
yspd = 0
movespeed = 2

canmove = true;
antistickx = 0;
antisticky = 0;

global.onde = 10;
global.andar = 0

//trocação na penha
global.dir = 0
atirando = false


//sprite
sprite_andando=spr_p_andalado
sprite_default=spr_p_parado
sprite_andando_left=spr_p_andalado_left
sprite_default_left=spr_p_parado_left

playdir = 0


//controlar armas
global.arma_tipo = noone;
global.arma_dados = noone;
arma = noone;

usa_arma = function(){
	if(arma){
		
		
		//APONTANDO A ARMA
		var _dir = global.dir;
		
		var _x = x + lengthdir_x(10, _dir);
		var _y = y + lengthdir_y(5, _dir);
		
		arma.x = _x;
		arma.y = _y;
		
		arma.image_angle = _dir
	
		
		//ATIRANDO
		if keyboard_check(vk_up){
			global.dir = 90
			arma.atirar = true
		}else if (keyboard_check(vk_down)){
			global.dir = 270;
			arma.atirar = true	
		}else if (keyboard_check(vk_left)){
			global.dir = 180
			arma.image_yscale = image_yscale * -1;
			arma.atirar = true
		}else if(keyboard_check(vk_right)){
			arma.image_yscale= abs(image_yscale);
			global.dir = 0;
			arma.atirar = true
		}else{arma.atirar = false}
		
		
	}

}

//JOGAR ARMA FORA

joga_arma = function(){
	if(arma){
		
		var _joga = keyboard_check_released(ord("F"));
		var _col; 
		
		with(arma){
			_col = place_meeting(x, y, obj_colisao_arma);
			
		}
		
		if(_joga == true && !_col){
			arma.speed = 6;
			arma.direction = arma.image_angle;
			
			arma.atirar = false;
			arma = noone;
			global.arma=noone;
		}
	}

}

//joga arma morto
joga_arma_morto = function(){
	if(arma){	
			
		arma.speed = 6;
		arma.direction = arma.image_angle;
		
		arma.atirar = false;
		arma = noone;
		global.arma=noone;
	}
}

//COLISÕES

bounce=0;

//MORRI
restart = false;


//serket
