/// @description Insert description here
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;


if (firing == false)
{
    alarm[0] = cadencia;
    firing = true;
}

if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma != noone)
{
	if(obj_p_jogador.arma){
	    var _nearesttear
	    _nearesttear = instance_nearest(x,y,obj_tiro);
    
	    hp -= obj_p_jogador.arma.dano; // **
    
	    with (_nearesttear)
	    {
	        instance_destroy();
	    }
	}
}

if (hp < 1)
{
    instance_destroy();
	audio_play_sound(dano1, 200, false);
}


//drops
if(hp <= 0){
	instance_destroy()
	global.conta_inimigo --
	var _chance = random(100)
	
	if (_chance <= 2 ){
		var _drop = random(20){
			if(_drop == 1){
				instance_create_layer(x, y, "Spawner", obj_comida1);
			}else if(_drop <= 3){
				instance_create_layer(x, y, "Spawner", obj_comida4);
			}else if(_drop <= 8){
				instance_create_layer(x, y, "Spawner", obj_comida3);
			}else{
				instance_create_layer(x, y, "Spawner", obj_comida2);
			}
		}
	}
}

//flip sprite
var _player = instance_nearest(x, y, obj_p_jogador)

if(_player.x < self.x){
	image_xscale = image_xscale * -1
	
}else if(_player.x > self.x){
	image_xscale = abs(image_xscale) 
}
