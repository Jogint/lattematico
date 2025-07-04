/// @description Insert description here
// You can write your code in this editor

randomize(); // rng boys

if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma != noone) // collision event with the tear, take away hp
{
    var nearesttear;
    nearesttear = instance_nearest(x,y,obj_tiro);
    hp -= obj_p_jogador.arma.dano;
    with (nearesttear)
    {
        instance_destroy();
    }
}

if (firing == false) // time to shoot poo.
{
    alarm[0] = 10;
    firing = true;
} 

if (hp < 100 && firing2 == false) // time to shoot poo.
{
    alarm[1] = 10;
    firing2 = true;
}




if (hp < 1) // time to die.
{
    instance_destroy();
	global.room_clear = true;
	instance_create_layer(x, y, layer, obj_comida1)
	
}

