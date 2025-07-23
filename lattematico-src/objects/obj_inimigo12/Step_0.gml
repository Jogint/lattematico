image_xscale = 1.5;
image_yscale = 1.5;

// Anda se for possível e não gruda nas paredes
if (ataque && !global.restart  && !global.pause) {
    var px = obj_p_jogador.x;
    var py = obj_p_jogador.y;
    
    direction = point_direction(x, y, px, py);
    var _ok = mp_potential_step(px, py, obj_p_jogador.movespeed * velocidade, false);

	if (place_meeting(x, y, obj_colisao)) {
		var dirs = [direction + 180, direction + 90, direction - 90, direction + 45];
		var moved = false;

		for (var i = 0; i < array_length(dirs); i++) {
			if (move_contact_solid(dirs[i], 4)) {
				moved = true;
				break;
			}
		}
	}
}

// Inimigo toma dano e knockback
scr_dano_inimigo(self, true);

// Vira a sprite na direção do usuário
scr_flip_sprite(self);

// Impede grudar nas colisões
scr_gerir_colisoes(self);

if(hp < 1){
	instance_destroy()
}