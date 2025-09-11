/// @description Posição e inimigos
global.conta_inimigo = 0;
global.errou = false;

if(global.onde == 0){
	obj_p_jogador.x = 222;
	obj_p_jogador.y = 235;	

}else if(global.onde == 1){
	obj_p_jogador.x = 222;
	obj_p_jogador.y = 69;	
	
}else if(global.onde == 2){
	obj_p_jogador.x = 375;
	obj_p_jogador.y = 150;	
	
}else if(global.onde == 3){
	obj_p_jogador.x = 80;
	obj_p_jogador.y = 150;	
	
}else if(global.onde == 4){
	obj_p_jogador.x = 88;
	obj_p_jogador.y = 70;	
	
}else if(global.onde == 5){
	obj_p_jogador.x = 79;
	obj_p_jogador.y = 75;	
	
} else if(global.onde == 6){
	obj_p_jogador.x = 208;
	obj_p_jogador.y = 80;	
	
} else if(global.onde == 7){
	obj_p_jogador.x = 278;
	obj_p_jogador.y = 142;	
	
} else if(global.onde == 39){
	obj_p_jogador.x = 30;
	obj_p_jogador.y = 120;	
	
} else if(global.onde == 40){
	obj_p_jogador.x = 416;
	obj_p_jogador.y = 112;	
	
} 



if (global.arma_tipo != noone) {
    arma = instance_create_layer(x, y, "Armas", global.arma_tipo);
    global.arma = arma; // Vincula a nova arma
    arma.x = x; // Centraliza na posição do jogador
    arma.y = y;
    global.arma_tipo = noone; // Limpa após recriação
}


