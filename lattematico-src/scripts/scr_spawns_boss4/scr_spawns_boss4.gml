function scr_spawns_boss4(obj){
	with(obj) {
		if(hp < hp_inicial * 0.75 && !spawn1){
			instance_create_layer(x + 50, y + 100, layer, obj_inimigo11);
			instance_create_layer(x - 40, y + 70, layer, obj_inimigo10);
			spawn1 = true;
		}

		if (obj == obj_boss_4) {
			if(hp < hp_inicial * 0.5 && !spawn2){
				instance_create_layer(x + 60, y + 90, layer, obj_inimigo11);
				instance_create_layer(x - 30, y + 120, layer, obj_inimigo10);
				spawn2 = true;
			}
		}
	
		if(hp < hp_inicial * 0.25 && !spawn3){
			instance_create_layer(x + 30, y + 100, layer, obj_inimigo11);
			instance_create_layer(x - 50, y + 80, layer, obj_inimigo10);
			spawn3 = true;
		}
	}
}