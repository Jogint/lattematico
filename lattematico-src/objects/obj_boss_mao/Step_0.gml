image_xscale = 2;
image_yscale = 2;

if (firing == false)
{
    // Definir um intervalo aleatório entre 5 e 10 segundos (em termos de alarmes)
    alarm[0] = irandom_range(300, 600); // 300 a 600 frames (5 a 10 segundos)
    firing = true;
    
    // Mudar a cor do objeto para vermelho
    
}

if (alarm[0] == 0)  // Quando o tempo do alarme acabar (disparo)
{
    if (place_meeting(x, y, obj_tiro) && obj_p_jogador.arma != noone)
    {
        if (obj_p_jogador.arma)
        {
            var _nearesttear;
            _nearesttear = instance_nearest(x, y, obj_tiro);
        
            obj_boss_4.hp -= obj_p_jogador.arma.dano; // **

            with (_nearesttear)
            {
                instance_destroy();
            }
        }
    }

  
    
}

if (hp < 1)
{
    morri = true;
    firing = false;
}