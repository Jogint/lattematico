// EASY: 0-30 (bolacha), 31-60 (macarrão), 61-85 (bolo), 86-100 (frango)
// HARD: 0-65 (bolacha), 66-85 (macarrão), 86-95 (bolo), 96-100 (frango)

if (!invocou) {
	var chance = round(random_range(1, 100));
	var comida_selecionada = 0; // cream cracker básico pra não quebrar
	if (global.dificuldade == 0) {
		if (chance <= 30) {
			comida_selecionada = 0; // cream cracker: 1 vida
		} else if (chance <= 60) {
			comida_selecionada = 1; // macarrão: 3 vida
		} else if (chance <= 85) {
			comida_selecionada = 2; // bolo: 5 vida
		} else {
			comida_selecionada = 3; // frango: 10 vida
		}
	} else if (global.dificuldade == 1) {
		if (chance <= 65) {
			comida_selecionada = 0; // cream cracker: 1 vida
		} else if (chance <= 85) {
			comida_selecionada = 1; // macarrão: 3 vida
		} else if (chance <= 95) {
			comida_selecionada = 2; // bolo: 5 vida
		} else {
			comida_selecionada = 3; // frango: 10 vida
		}
	}
	instance_create_layer(x, y, "Spawner", global.comidas[comida_selecionada]);
	invocou = true;
}