image_xscale = 1.5;
image_yscale = 1.5;

// Anda se for possível e não gruda nas paredes
if (ataque && !global.restart  && !global.pause) {
    var px = obj_p_jogador.x;
    var py = obj_p_jogador.y;
    
    direction = point_direction(x, y, px, py);
    mp_potential_step(px, py, obj_p_jogador.movespeed * velocidade, false);
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