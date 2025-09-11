if (global.dificuldade == 99 && !sumiu) {
	instance_destroy();
	sumiu = true;
	exit;
}

atirando();

if (speed > 0)
{
	speed = lerp(speed, 0, 0.2)
}


if (global.andar_atual > andar_anterior) {
	// Progressão mais demorada = upgrade a cada 10~ lvls
    global.fro_espera_tiro -= 0.045;
    andar_anterior++;
}

if (global.fro_espera_tiro < 0.1) {
    global.fro_espera_tiro = 0.1;
}