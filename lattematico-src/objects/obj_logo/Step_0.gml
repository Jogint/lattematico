/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//tela
if (keyboard_check_pressed(vk_f11) && !window_get_fullscreen()) {
	window_set_fullscreen(true);
} else if ((keyboard_check_pressed(vk_f11) || keyboard_check_pressed(vk_escape)) && window_get_fullscreen()) {
	window_set_fullscreen(false);
	window_set_size(screen_width, screen_height)
}