function checar_conta_inimigos(obj){ //Colocar no step do HUD
	if (obj.mudou_conta_inimigo != global.conta_inimigo) {
		obj.mudou_conta_inimigo = global.conta_inimigo;
		show_debug_message("Inimigos em " + room_get_name(room) + ": " + string(obj.mudou_conta_inimigo));
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

function inimigos_room(porta) {
    var bosses = [obj_boss_1, obj_boss_2, obj_boss_3, obj_boss_4];
    var todos_inimigos = array_concat(global.inimigos_1, global.inimigos_2, global.inimigos_3, global.inimigos_4, bosses);

    for (var i = 0; i < array_length(todos_inimigos); i++) {
        var obj = todos_inimigos[i];

        if (!value_in_array(obj, porta.ja_foi)) {
            if (instance_exists(obj)) {
                show_debug_message("Inimigo na sala " + room_get_name(room) + ": " + object_get_name(obj) + " — Quantidade: " + string(instance_number(obj)));
                array_push(porta.ja_foi, obj);
            }
        }
    }
}

