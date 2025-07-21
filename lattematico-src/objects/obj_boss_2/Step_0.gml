randomize(); // rng boys

// Inimigo toma dano e knockback
scr_dano_inimigo(self, false);

// Controle POO de ambos os tipos de tiro
if (!atirando && !global.restart) {
    alarm[0] = 10;
    atirando = true;
} 
if (hp < hp_inicial * 0.4 && !atirando2) {
    alarm[1] = 10;
    atirando2 = true;
}

// Vitória do player contra o boss
if (hp < 1) {
    instance_destroy();
}