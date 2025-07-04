/// @description Insert description here
// You can write your code in this editor

draw_self();

var barra_x = x - 50;
var barra_y = y - 60;

var largura_barra = 100;
var altura_barra = 10;


var hp_percent = hp / 750; 


if (hp_percent > 0.75) {
    draw_set_color(c_green); 
} else if (hp_percent > 0.5) {
    draw_set_color(c_yellow); 
} else if (hp_percent > 0.25) {
    draw_set_color(c_orange); 
} else {
    draw_set_color(c_red);    
}


draw_rectangle(barra_x, barra_y, barra_x + largura_barra * hp_percent, barra_y + altura_barra, false);


draw_set_color(c_black);
draw_rectangle(barra_x, barra_y, barra_x + largura_barra, barra_y + altura_barra, true);
