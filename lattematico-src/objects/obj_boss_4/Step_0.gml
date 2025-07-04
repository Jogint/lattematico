image_xscale = 2;
image_yscale = 2;

if (firing == false)
{
    alarm[0] = cadencia;
    firing = true;
}

// Faz com que o objeto acompanhe o jogador apenas no eixo X
mp_potential_step(obj_p_jogador.x, y, obj_p_jogador.movespeed * 0.3, false);

if (place_meeting(x,y,obj_tiro) && obj_p_jogador.arma != noone)
{
    if (obj_p_jogador.arma)
    {
        var _nearesttear;
        _nearesttear = instance_nearest(x,y,obj_tiro);
    
        hp -= obj_p_jogador.arma.dano; // **

        with (_nearesttear)
        {
            instance_destroy();
        }
    }
}

if(hp < 475 && spawn1 == false){
    instance_create_layer(x + 50, y + 100, layer, obj_inimigo11);
    instance_create_layer(x - 50, y + 100, layer, obj_inimigo10);
    spawn1 = true;
}

if(hp < 350 && spawn1 == false){
    instance_create_layer(x + 50, y + 100, layer, obj_inimigo11);
    instance_create_layer(x - 50, y + 100, layer, obj_inimigo10);
    spawn1 = true;
}

if(hp < 125 && spawn1 == false){
    instance_create_layer(x + 50, y + 100, layer, obj_inimigo11);
    instance_create_layer(x - 50, y + 100, layer, obj_inimigo10);
    spawn1 = true;
}



if (hp < 1) {
    audio_play_sound(efeito_aleatorio, 200, false);
    morri = true;
	firing = false;
	instance_create_depth(0, 0, -9999, obj_fade);
	tempo_destruir --
	
	if(tempo_destruir <= 0){
		instance_destroy()
		room_goto(ACABOU)
		}
	
}