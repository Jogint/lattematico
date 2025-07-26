/// @description Segundo tipo de tiro

instance_create_layer(x,y,"Tiros",obj_tiro_inimigo1); // Cria poo

var nearestpoo = instance_nearest(x,y,obj_tiro_inimigo1);

global.poodir2 -= 2; // Adiciona a direção do tiro a cada bala

with (nearestpoo) {
    direction = global.poodir2; // Altera a direção
    speed = 2; // Configurar a velocidade do tiro
}

atirando2 = false; // Libera o próximo tiro