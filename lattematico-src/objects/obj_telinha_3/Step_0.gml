/// @description Insert description here
// You can write your code in this editor


if(global.room_clear == true){
	// Distância entre o jogador e o obj_telinha
	player_near = instance_nearest(x, y, obj_p_jogador);
	hint_index = 4

	// Quando o jogador estiver perto e apertar "E"
	if (player_near && !pop_up_visible && keyboard_check_pressed(ord("E"))) {
	    pop_up_visible = true;

	    // Sorteia uma pergunta do banco
	    selected_question = irandom(array_length(global.perguntas4) - 1);
	    selected_option = -1; // Nenhuma opção selecionada
	}

	// Navegar e confirmar no pop-up
	if (pop_up_visible) {
	    var question = global.perguntas4[selected_question];

	    if (keyboard_check_pressed(vk_left)) {
	        selected_option = max(selected_option - 1, 0);
	    }
	    if (keyboard_check_pressed(vk_right)) {
	        selected_option = min(selected_option + 1, array_length(question.alternativas) - 1);
	    }

	    // Confirmar resposta com Enter
	    if (keyboard_check_pressed(vk_enter)) {
	        if (selected_option == question.resposta_correta) {
	            abrir_porta = true;
				pop_up_visible = false;
				hint_selected = false;
	        } else if (selected_option == hint_index) {
				hint_selected = true;
			} else {
	            abrir_porta = false;
				global.room_clear = false;
				global.errou = true;
				pop_up_visible = false;
				hint_selected = false;
	        }
	    }
	}
}

			    