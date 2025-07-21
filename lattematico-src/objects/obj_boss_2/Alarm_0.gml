/// @description Primeiro tipo de tiro

instance_create_layer(x,y,"Tiros",obj_tiro_inimigo) // Cria poo

var nearestpoo = instance_nearest(x,y,obj_tiro_inimigo);

global.poodir += 15; // adiciona a direção do tiro a cada bala

with (nearestpoo) {
    direction = global.poodir; // Altera a direfção
    speed = 5; // Configurar a velocidade do tiro
}

atirando = false; // Libera o próximo tiro