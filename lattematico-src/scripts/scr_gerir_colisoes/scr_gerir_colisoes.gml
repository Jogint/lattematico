function scr_gerir_colisoes(obj){
	with (obj) {
		if (place_meeting(x,y,obj_colisao)) {
			x = antistickx;
			y = antisticky;
		} else {
			antistickx = x;
			antisticky = y;
		}
	}
}