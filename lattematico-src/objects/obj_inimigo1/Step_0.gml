image_xscale = 2;
image_yscale = 2;


if (!atirando && !global.restart && !global.pause){
    alarm[0] = cadencia;
    atirando = true;
}

// Inimigo toma dano e knockback
scr_dano_inimigo(self, false);

// Vira a sprite na direção do usuário
scr_flip_sprite(self);

if(hp < 1){
	instance_destroy();
}