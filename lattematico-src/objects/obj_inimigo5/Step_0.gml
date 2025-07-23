image_xscale = 1;
image_yscale = 1;

if(ataque && !global.restart  && !global.pause){
	mp_potential_step(obj_p_jogador.x, obj_p_jogador.y, obj_p_jogador.movespeed - 0.5, false);
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