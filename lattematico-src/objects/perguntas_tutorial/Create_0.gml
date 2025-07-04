/// @description Insert description here
// You can write your code in this editor

// Banco de perguntas
if global.dificuldade == 1{
	global.perguntas_tutorial = [
	    {
	        pergunta: "Até hoje, já capturei 10 seres para meus experimentos, uma pena que 30% deles conseguiram fugir, mas, a menos que você saiba quantos foram, você não terá como sair.",
	        alternativas: [1, 2, 3, 4],
	        resposta_correta: 2 // Índice da alternativa correta
		
	    },
	];
}else{
global.perguntas_tutorial = [
    {
        pergunta: "Até hoje, já capturei 10 pessoas, uma pena que 3 fugiram. Quantos continuam capturados?",
        alternativas: [5, 6, 7, 8],
        resposta_correta: 2
    },
];

}