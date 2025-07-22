function scr_init_globais(){
	randomize() //por tudo que há de bom nesse mundo, não tirar isso daqui <3
	
	// =============== COMIDAS ===============
	//mudar obj_spawner_comidas caso vc add uma comida nova
    global.comidas = [
        obj_comida1,
		obj_comida1,
		obj_comida2,
		obj_comida3,
	];
	
	
	// =============== ARMAS ===============
    global.weapons1 = [
        obj_pistola1,
		obj_big1,
		obj_sniper1,
		obj_shotgun1,
		obj_metralha1,
		obj_shuriken1
	];
	
	global.weapons2 = [
        obj_pistola2, 
        obj_big2,
		obj_sniper2,
		obj_shotgun2,
		obj_metralha2,
		obj_shuriken2
	];
	
	global.weapons3 = [
        obj_pistola3, 
        obj_big3,
		obj_sniper3,
		obj_shotgun3,
		obj_metralha3,
		obj_shuriken3
	];
	
	global.weapons4 = [
        obj_pistola4, 
        obj_big4,
		obj_sniper4,
		obj_shotgun4,
		obj_metralha4,
		obj_shuriken4
	];
	
	
	// =============== GERAIS ===============
	global.screen_width = 1280;
	global.screen_height = 720;
	global.f11_cooldown = 0;
	global.room_clear = false;
	global.dificuldade = -1;
	global.pause = false;
	init_pergunta_entrada();
	init_pergunta_tutorial();
	init_perguntas();
}