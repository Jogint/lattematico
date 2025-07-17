/// @description Insert description here
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;
dano_aplicado = false;

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

if(hp < 75 && spawn1 == false){
	instance_create_layer(x + 50, y, layer, obj_inimigo1);
	instance_create_layer(x - 50, y, layer, obj_inimigo1);
	spawn1 = true;
}

if(hp < 50 && spawn2 == false){
	instance_create_layer(x + 100, y, layer, obj_inimigo1);
	instance_create_layer(x - 100, y, layer, obj_inimigo1);
	spawn2 = true
}

if(hp < 25 && spawn3 == false){
	instance_create_layer(x + 50, y + 50 , layer, obj_inimigo1);
	instance_create_layer(x - 50, y -50 , layer, obj_inimigo1);
	instance_create_layer(x, y + 50, layer, obj_inimigo2);
	spawn3 = true
}


if (hp < 1)
{
    instance_destroy();
}


//drops
if(hp <= 0){
	instance_destroy()
	global.room_clear = true
	var _chance = random(100)
	
	instance_create_layer(x, y, "Spawner", obj_comida4);
}

//flip sprite
var _player = instance_nearest(x, y, obj_p_jogador)

if(_player.x < self.x){
	image_xscale = image_xscale * -1
	
}else if(_player.x > self.x){
	image_xscale = abs(image_xscale) 
}
