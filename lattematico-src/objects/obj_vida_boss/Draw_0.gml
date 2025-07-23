/// @description Barra de vida boss

var obj_boss = [];
var distancia_y = [60];
	
if (instance_exists(obj_boss_1)) {
	array_push(obj_boss, obj_boss_1);
} else if (instance_exists(obj_boss_2)) {
	array_push(obj_boss, obj_boss_2);
} else if (instance_exists(obj_boss_3)) {
	array_push(obj_boss, obj_boss_3);
} else if (instance_exists(obj_boss_4)) {
	array_push(obj_boss, obj_boss_4);
	if (instance_exists(obj_boss_mao)) {
		array_push(obj_boss, obj_boss_mao);
		array_push(distancia_y, -70);
	}
	if (instance_exists(obj_boss_mao_1)) {
		array_push(obj_boss, obj_boss_mao_1);
		array_push(distancia_y, -70);
	}
}

for (var i = 0; i < array_length(obj_boss); i++) {
	var largura_barra = 100;
	var altura_barra = 10;
	
	var barra_x = obj_boss[i].x - 50;
	var barra_y = obj_boss[i].y - distancia_y[i];
	var hp_percent = obj_boss[i].hp / obj_boss[i].hp_inicial;

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
}