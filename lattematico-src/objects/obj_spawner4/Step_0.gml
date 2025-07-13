/// @description Insert description here
// You can write your code in this editor

inimigo = irandom(array_length(global.inimigos_4) -1);

function errou_pergunta() {
	spawned = false;
	global.errou = false;
	global.room_clear = false;
}

if(global.room_clear == false && spawned == false){
	instance_create_layer(self.x, self.y, "Tiros", global.inimigos_4[inimigo]);
	spawned = true;
	global.conta_inimigo = max(global.conta_inimigo, 0);
	global.conta_inimigo ++;
}

if(global.conta_inimigo == 0){
	global.room_clear = true;
}


