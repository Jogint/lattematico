function scr_spawn_inimigo_create(obj){
	with (obj) {
		global.room_clear = false
		spawned = false
		inimigo = noone
		
		function errou_pergunta() {
			spawned = false;
			global.errou = false;
			global.room_clear = false;
		}
	}
}

function scr_spawn_inimigo_step(obj, array_inimigos){
	with (obj) {
		inimigo = irandom(array_length(array_inimigos) -1);

		if(global.room_clear == false && spawned == false){
			instance_create_layer(self.x, self.y, "Tiros", array_inimigos[inimigo]);
			spawned = true;
			global.conta_inimigo = max(global.conta_inimigo, 0);
			global.conta_inimigo ++;
		}

		if(global.conta_inimigo == 0){
			global.room_clear = true;
		}
	}
}