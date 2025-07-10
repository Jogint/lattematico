/// @description Aparece quando perto
// Você pode escrever seu código neste editor

var player_inst = instance_nearest(x, y, obj_p_jogador);
var player_near = point_distance(x, y, player_inst.x, player_inst.y) < 68;
var precisa_arma = false;
var tela = noone;

if (room == Sala_Entrada) {
	precisa_arma = true;
	tela = obj_telinha_entrada
}
if (room == Sala_Tutorial) {
	tela = obj_telinha_tutorial
}

scr_esconde_obj(player_near && (!precisa_arma || obj_p_jogador.arma != noone) && !tela.abrir_porta)