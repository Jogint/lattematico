function scr_array_pergunta(obj){
	with (obj) {
switch (room) {
	case Sala_Tutorial:
		arrayPerg = global.perguntas_tutorial;
		break;
	case Sala_Entrada:
		arrayPerg = global.perguntas_entrada;
		break;

	case Sala1:
	case Sala6:
		arrayPerg = global.perguntas;
		break;

	case Sala11:
	case Sala16:
		arrayPerg = global.perguntas2;
		break;

	case Sala21:
	case Sala26:
		arrayPerg = global.perguntas3;
		break;

	case Sala31:
	case Sala36:
		arrayPerg = global.perguntas4;
		break;
}
	}
}