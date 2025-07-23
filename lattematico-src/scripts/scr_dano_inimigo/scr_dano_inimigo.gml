function scr_dano_inimigo(obj, toma_bounce){
	with (obj) {
		if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma) {
			if(obj_p_jogador.arma) {
				var _tiro = instance_nearest(x,y,obj_tiro);
				if (hp > 0) hp -= obj_p_jogador.arma.dano;
				if (toma_bounce) {
					direction = point_direction(x, y, _tiro.x, _tiro.y) + 180;
					var knockback_dist = 5;
				    move_contact_solid(direction, knockback_dist);
					alarm[0] = 5;
					speed = 5;
					ataque = false;
				}
			    with (_tiro) {
				    instance_destroy();
			    }
			}
		}
	}
}