/// @description Tela final

if (fade_active == true) {
    fade_alpha += fade_speed; // Aumenta a opacidade gradualmente
    if (fade_alpha > 1) {
        fade_alpha = 1; // Limita o valor da opacidade
    }

    // Desenha o retângulo branco sobre a tela inteira
    draw_set_color(c_white);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1); // Reseta o alpha
}