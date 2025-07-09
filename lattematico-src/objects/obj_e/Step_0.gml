/// @description Aparece quando perto
// Você pode escrever seu código neste editor

var player_inst = instance_nearest(x, y, obj_p_jogador);
player_near = point_distance(x, y, player_inst.x, player_inst.y) < 68;
var precisa_arma = (room == Sala_Entrada);

if (player_near && (!precisa_arma || obj_p_jogador.arma != noone)) {
    image_alpha = 1; // visível
} else {
    image_alpha = 0; // invisível
}