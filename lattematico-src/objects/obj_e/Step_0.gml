/// @description Aparece quando perto

var player_inst = instance_nearest(x, y, obj_p_jogador);
var player_near = point_distance(x, y, player_inst.x, player_inst.y) < 68;
var precisa_arma = false;
var tela = obj_telinha;

if (room == Sala_Entrada) {
	precisa_arma = true;
}

scr_esconde_obj(player_near && (!precisa_arma || obj_p_jogador.arma) && !tela.abrir_porta)