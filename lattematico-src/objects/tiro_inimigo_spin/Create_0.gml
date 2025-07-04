/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5
image_yscale = 1.5

espera = room_speed * 0.5;
vel = 0
rot = -10


	image_angle += rot
	//Espera
if (espera > 0){
	espera--;
}		
	
if (speed != 0){
	vel = speed;
	speed = 0;
}else{
		speed = vel;	
}
	
image_blend = c_purple;	
	


if (instance_exists(obj_p_jogador)) {move_towards_point(obj_p_jogador.x,obj_p_jogador.y,3);}
