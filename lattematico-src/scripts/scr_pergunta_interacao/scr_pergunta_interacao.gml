function configPerg(obj, structPerg, isEntrance) {
    var isEPressed = keyboard_check_pressed(ord("E"));
    with (obj) {
        var player_inst = instance_nearest(x, y, obj_p_jogador);
        player_near = point_distance(x, y, player_inst.x, player_inst.y) < 50;

        if (player_near && !pop_up_visible && isEPressed && !obj.abrir_porta && (global.room_clear || room == Sala_Entrada || room == Sala_Tutorial) && !isEntrance) {
            pop_up_visible = true;
            selected_question = irandom(array_length(structPerg) - 1);
            selected_option = 0;
        }

        if (pop_up_visible) {
            var question = structPerg[selected_question];

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
                    pop_up_visible = false;
                    hint_selected = false;
                }
            }
        }
    }
}
