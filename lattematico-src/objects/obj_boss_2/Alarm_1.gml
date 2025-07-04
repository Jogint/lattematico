/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"Tiros",obj_tiro_inimigo_1) // create poo

var nearestpoo; // gets the nearest poo (i.e, the one spawning)
nearestpoo = instance_nearest(x,y,obj_tiro_inimigo_1);

global.poodir2 -= 2; // adds to the poo direction

with (nearestpoo) // controls the nearest poo object
{
    direction = global.poodir2; // sets the direction
    speed = 2; // fire at a speed of 5
}

firing2 = false; // can shoot again

