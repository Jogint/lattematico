/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
dano_aplicado = false;
direction = global.dir;
speed = 20
image_xscale = 1
image_yscale = 1

espera = game_get_speed(gamespeed_fps) * 0.5;
vel = 0
rot = -10

atirado = function(){
	image_angle += rot
	//Espera
	if (espera > 0){
		espera--;

	}
	
	
	
}

audio_play_sound(snd_tiro1, 200, false);