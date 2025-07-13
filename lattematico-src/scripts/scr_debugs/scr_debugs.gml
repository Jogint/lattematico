function checar_conta_inimigos(){ //Colocar no step do HUD
	if (!variable_instance_exists(id, "mudou_hp_inimigo")) {
			mudou_conta_inimigo = 0;
		}
	if (mudou_conta_inimigo != global.conta_inimigo) {
		mudou_conta_inimigo = global.conta_inimigo;
		show_debug_message("Inimigos em " + string(room) + ": " + string(mudou_conta_inimigo));
	}
}

function checar_hp_inimigo(obj) {  //Colocar no step do inimigo
	with (obj) {
		if (!variable_instance_exists(id, "mudou_hp_inimigo")) {
			mudou_hp_inimigo = -1; // valor qualquer diferente do hp atual
		}
		
		if (mudou_hp_inimigo != hp) {
			mudou_hp_inimigo = hp;
			show_debug_message("HP de " + object_get_name(object_index) + ": " + string(hp));
		}
	}
}