function scr_controla_pop_up(obj) {
	var clicou_Q = keyboard_check_pressed(ord("Q"));
	with (obj) {
		if (clicou_Q && pop_up_info_aberto) {
			pop_up_info_aberto = false;
		} else if (clicou_Q && !pop_up_info_aberto) {
			pop_up_info_aberto = true;
		}
	}
}