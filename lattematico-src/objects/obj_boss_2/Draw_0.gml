/// @description Insert description here
// You can write your code in this editor

draw_self();

var barra_x = x - 50;
var barra_y = y - 60;

var largura_barra = 100;
var altura_barra = 10;

// Define as cores baseadas nos níveis de HP do boss
if (hp > 187.5) { // Mais de 75% da vida
    draw_set_color(c_green);
} else if (hp > 125) { // Entre 50% e 75%
    draw_set_color(c_yellow);
} else if (hp > 62.5) { // Entre 25% e 50%
    draw_set_color(c_orange);
} else { // Menos de 25%
    draw_set_color(c_red);
}

// Desenha a barra de vida proporcional ao HP do boss
draw_rectangle(barra_x, barra_y, barra_x + largura_barra * (hp / 250), barra_y + altura_barra, false);

// Desenha a borda da barra de vida
draw_set_color(c_black);
draw_rectangle(barra_x, barra_y, barra_x + largura_barra, barra_y + altura_barra, true);
