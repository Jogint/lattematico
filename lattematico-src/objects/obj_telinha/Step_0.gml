// reconhece sala em que está
scr_array_pergunta(self);

var player_inst = instance_nearest(x, y, obj_p_jogador);
        player_near = point_distance(x, y, player_inst.x, player_inst.y) < 50;
		var tem_arma = true;
		if (room == Sala_Entrada) {
			if (!obj_p_jogador.arma) {
				tem_arma = false
			}
		}

        if (player_near && !pop_up_visible && keyboard_check_pressed(ord("E")) && !abrir_porta && (global.room_clear || room == Sala_Entrada || room == Sala_Tutorial) && tem_arma) {
            pop_up_visible = true;
            selected_question = irandom(array_length(arrayPerg) - 1);
            selected_option = 0;
        }

        if (pop_up_visible) {
            var question = arrayPerg[selected_question];

            if (keyboard_check_pressed(vk_left)) {
                selected_option = max(selected_option - 1, 0);
            }
            if (keyboard_check_pressed(vk_right)) {
                selected_option = min(selected_option + 1, array_length(question.alternativas) - 1);
            }

            if (keyboard_check_pressed(vk_enter)) {
                if (selected_option == question.resposta_correta) {
                    abrir_porta = true;
                    pop_up_visible = false;
                    hint_selected = false;
                } else if (selected_option == 4) {  // hint_index = 4
                    hint_selected = true;
                } else {
                    abrir_porta = false;
                    global.room_clear = false;
                    global.errou = true;
                    pop_up_erro = true;
					pop_up_timer = 60; // 1 segundo a 60fps
                    hint_selected = false;
                }
            }
        }
		
		if (pop_up_erro) {
		    pop_up_timer--;
		    if (pop_up_timer <= 0) {
				pop_up_visible = false;
				pop_up_erro = false;
				if (instance_exists(obj_spawner1)) {
					with (obj_spawner1) errou_pergunta();
				} 
				if (instance_exists(obj_spawner2)) {
					with (obj_spawner2) errou_pergunta();
				}
				if (instance_exists(obj_spawner3)) {
					with (obj_spawner3) errou_pergunta();
				}
				if (instance_exists(obj_spawner4)) {
				    with (obj_spawner4) errou_pergunta();
				}
			}
		}