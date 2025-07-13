nextRoom = 2;
switch (room) {
	case Sala_Tutorial:
		sala_esp = Sala_Entrada; 
		nextRoom = 5;
		break;
	case Sala1:
		sala_esp = Sala1_esp; break;
	case Sala6:
		sala_esp = Sala6_esp; break;
	case Sala11:
		sala_esp = Sala11_esp; break;
	case Sala16:
		sala_esp = Sala16_esp; break;
	case Sala21:
		sala_esp = Sala21_esp; break;
	case Sala26:
		sala_esp = Sala26_esp; break;
	case Sala31:
		sala_esp = Sala31_esp; break;
	case Sala36:
		sala_esp = Sala36_esp; break;
	default:
		sala_esp = noone;
		nextRoom = 0;
}