if (room == DIFICULDADE) {
    // Verifica o Konami Code
    if (konami_index < array_length_1d(konami_code)) {
        if (keyboard_check_pressed(konami_code[konami_index])) {
            konami_index++;
        } else if (keyboard_check_pressed(vk_anykey)) {
            konami_index = 0;
        }
    } else {
        // Código completo — inicia modo secreto direto
        global.dificuldade = 99;
        show_message("Boa sorte ;)")
        room_goto(Sala_Tutorial);
        konami_index = -999; // Previne execução múltipla
    }

    // Seleção comum
    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right)) {
        opcao_selecionada = (opcao_selecionada + 1) mod 2;
    }
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left)) {
        opcao_selecionada = (opcao_selecionada + 1) mod 2;
    }

    if (keyboard_check_pressed(vk_enter)) {
        global.dificuldade = opcao_selecionada;
        room_goto(Sala_Tutorial);
    }
}

window_set_fullscreen(true);