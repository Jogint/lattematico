/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

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
		
		
		if (speed != 0){
			vel = speed;
			speed = 0;
		}
	
	
	}else{
		speed = vel;
		
		
	
	}
	
	
	
}