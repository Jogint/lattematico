/// @description Dano ranged
if (!ouch){
	var _inimigo = other;
	scr_dano_player(_inimigo);
	with (_inimigo) {
		instance_destroy();
	}
}