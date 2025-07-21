atirando();
if (speed > 0) {
	speed = lerp(speed, 0, 0.2);
}

// Faz bater na colisão e voltar
if (rebote_cooldown > 0) rebote_cooldown--;
if (rebote_cooldown <= 0 && !obj_p_jogador.arma && place_meeting(x, y, obj_colisao)) {
	direction += 180;
	rebote_cooldown = 10;
}