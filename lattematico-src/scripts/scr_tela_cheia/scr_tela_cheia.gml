// chamado em: dificuldade, obj player e obj acabou

function scr_tela_cheia() {
    if (global.f11_cooldown > 0) {
        global.f11_cooldown -= 1;
        return;
    }

    if (keyboard_check_pressed(vk_f11) && !window_get_fullscreen()) {
        window_set_fullscreen(true);
        global.f11_cooldown = 15; // 0.25 segundos
    }
	
	if (global.f11_cooldown > 0) {
        return;
    }

    if (keyboard_check_pressed(vk_f11) && window_get_fullscreen()) {
        window_set_fullscreen(false);
        window_set_size(global.screen_width, global.screen_height);
        global.f11_cooldown = 15;
    }
	
	if !window_get_fullscreen() {
		window_center();
	}
}