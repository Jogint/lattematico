function scr_flip_sprite(obj){
	with (obj) {
		var _player = instance_nearest(x, y, obj_p_jogador)
		if (_player.x < x) {
			if (image_xscale > 0) {
				image_xscale = -(image_xscale);
			}
		} else if (_player.x > x) {
			if (image_xscale < 0) {
					image_xscale = +(image_xscale);
			}
		}
	}
}