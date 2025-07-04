function InvertColors(){
    gpu_set_blendmode_ext(bm_inv_dest_colour,bm_zero);
	draw_set_alpha(0.3);
	draw_rectangle_colour(0, 0, display_get_width(), display_get_height(), c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
    gpu_set_blendmode(bm_normal);
}

if (global.dificuldade == 99) {
    InvertColors();
}
