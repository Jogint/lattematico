if (!variable_global_exists("dificuldade")) {
    global.dificuldade = 0;
}
if (!variable_global_exists("perguntas_entrada")) {
    global.perguntas_entrada = [];
}

// ==================== TUTORIAL ====================
function criarPergTutorial() {
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
}

function criarPergEntrada() {
	if global.dificuldade == 1{
		global.perguntas_entrada = [
			{
				pergunta: "A entrada da torre contém uma senha de 3 dígitos. Um papel ao lado diz ''digite o 15° múltiplo de 7. Qual é ele?''",
		        alternativas: [115, 110, 105, 125, "dica"],
		        resposta_correta: 2, // Índice da alternativa correta
			    dica: "Quando multiplico 7x10, obtenho 70. Quando multiplico 7x5, obtenho 35."
		    },
		];
	}else{
		global.perguntas_entrada = [
		    {
				pergunta: "A entrada da torre tem uma senha. Um papel ao lado diz: Digite o resultado de 20 + 50.",
		        alternativas: [50, 60, 70, 80, "dica"],
				resposta_correta: 2,
				dica: "Ignore os zeros. Quanto é 2+5? Só uma das opções tem esse dígito"
		    },
		];
	}
}


// ==================== SALAS ====================

function criarPergGeral() {
if global.dificuldade == 1{
	global.perguntas = [
		// Variação 1
	    {
	        pergunta: "{3, 4, 2, 0, 1}... Odeio pensar sobre essas notas que recebi no ensino médio, mas, deixarei como senha dessa porta a média e a mediana delas, respectivamente, para que todos os dias eu me lembre do fracasso e cresça sabendo disso.",
	        alternativas: ["2 e 2", "3 e 2", "2 e 3", "3 e 3", "dica"],
	        resposta_correta: 0,
			dica: "A média é 10/5 (soma dos valores/quantidade de valores), mediana é o valor do meio em {0, 1, 2, 3, 4}."
	    },
	    {
	        pergunta: "{5, 0, 1, 3, 1}... Odeio pensar sobre essas notas que recebi no ensino médio, mas, deixarei como senha dessa porta a média e a mediana delas, respectivamente, para que todos os dias eu me lembre do fracasso e cresça sabendo disso.",
	        alternativas: ["2 e 5", "2 e 2", "2 e 1", "2 e 0", "dica"],
	        resposta_correta: 2,
			dica: "A média é 10/5 (soma dos valores/quantidade de valores), mediana é o valor do meio em {0, 1, 1, 3, 5}."
	    },
	    {
	        pergunta: "{3, 3, 3, 3}... Odeio pensar sobre essas notas que recebi no ensino médio, mas, deixarei como senha dessa porta a média e a mediana delas, respectivamente, para que todos os dias eu me lembre do fracasso e cresça sabendo disso.",
	        alternativas: ["12 e 3", "3 e 12", "4 e 3", "3 e 3", "dica"],
	        resposta_correta: 3,
			dica: "A média é 12/4 (soma dos valores/quantidade de valores), mediana é o valor do meio, que no caso, eh."
	    },
		{
			pergunta: "{4, 5, 4, 5, 0, 0}... Odeio pensar sobre essas notas que recebi no ensino médio, mas, deixarei como senha dessa porta a média e a mediana delas, respectivamente, para que todos os dias eu me lembre do fracasso e cresça sabendo disso.",
			alternativas: ["3 e 4", "2 e 5", "4 e 4", "1 e 4", "dica"],
			resposta_correta: 0,
			dica: "A média é 18/6 (soma dos valores/quantidade de valores), mediana é o valor do meio em {0, 0, 4, 4, 5, 5}."
		},
		{
			pergunta: "{4, 2, 1, 3, 5}... Odeio pensar sobre essas notas que recebi no ensino médio, mas, deixarei como senha dessa porta a média e a mediana delas, respectivamente, para que todos os dias eu me lembre do fracasso e cresça sabendo disso.",
			alternativas: ["3 e 3", "2 e 4", "2 e 3", "3 e 1", "dica"],
			resposta_correta: 0,
			dica: "A média é 15/5 (soma dos valores/quantidade de valores), mediana é o valor do meio em {1, 2, 3, 4, 5}."
		},
	
		// Variação 2
	    {
	        pergunta: "Quando jovem eu não era tão bom no que faço, nem sequer me qualifiquei em competições matemáticas. Com dedicação, me saí melhor que 4/5 dos 40 alunos. Eu fiquei tão bravo em não ser o melhor que dediquei essa senha aos poucos que me superaram. Foram:",
	        alternativas: [5, 6, 7, 8, "dica"],
	        resposta_correta: 3,
			dica: "Só 1/5 deles foi melhor que eu. Divida 40 por 5 e você saberá a resposta."
	    },
		{
	        pergunta: "Quando jovem eu não era tão bom no que faço, nem sequer me qualifiquei em competições matemáticas. Com dedicação, me saí melhor que 8/10 dos 50 alunos. Eu fiquei tão bravo em não ser o melhor que dediquei essa senha aos poucos que me superaram. Foram:",
	        alternativas: [7, 8, 9, 10, "dica"],
	        resposta_correta: 3,
			dica: "Só 1/5 (2/10 simplificado) deles foi melhor que eu. Divida 50 por 5 e você saberá a resposta."
	    },
		{
	        pergunta: "Quando jovem eu não era tão bom no que faço, nem sequer me qualifiquei em competições matemáticas. Com dedicação, me saí melhor que 7/10 dos 30 alunos. Eu fiquei tão bravo em não ser o melhor que dediquei essa senha aos poucos que me superaram. Foram:",
	        alternativas: [8, 9, 10, 11, "dica"],
	        resposta_correta: 1,
			dica: "Só 3/10 deles foi melhor que eu. Divida 30 por 10, multiplique por 3 e você saberá a resposta."
	    },
		{
	        pergunta: "Quando jovem eu não era tão bom no que faço, nem sequer me qualifiquei em competições matemáticas. Com dedicação, me saí melhor que 8/12 dos 27 alunos. Eu fiquei tão bravo em não ser o melhor que dediquei essa senha aos poucos que me superaram. Foram:",
	        alternativas: [7, 8, 9, 10, "dica"],
	        resposta_correta: 2,
			dica: "Só 1/3 (4/12 simplificado) deles foi melhor que eu. Divida 27 por 3 e você saberá a resposta."
	    },
		{
	        pergunta: "Quando jovem eu não era tão bom no que faço, nem sequer me qualifiquei em competições matemáticas. Com dedicação, me saí melhor que 15/20 dos 36 alunos. Eu fiquei tão bravo em não ser o melhor que dediquei essa senha aos poucos que me superaram. Foram:",
	        alternativas: [9, 10, 11, 12, "dica"],
	        resposta_correta: 0,
			dica: "Só 1/4 (5/20 simplificado) deles foi melhor que eu. Divida 36 por 4 e você saberá a resposta."
	    },
		{
			pergunta: "ERRO ERRO ERRO ! Invasor detectado. Ativando sistema de proteção",
			alternativas: ["???", "???", "???", "???", "dica"],
			resposta_correta: 5,
			dica: "Não se mexa, vamos te capturar."
		},
	];

	global.perguntas2 = [
		// Variação 1
	    {
	        pergunta: "Estava trabalhando na minha próxima criação nos últimos meses e para impedir algum intrometido de se meter, eu criei um sistema para impedir que descubram qual deles é mais alto. A maior altura será a senha desta porta. Alturas em metro: {3^2, 3/2, 3*2, 3,2}.",
	        alternativas: ["9m", "3m","6m", "12m", "dica"],
	        resposta_correta: 0,
			dica: "Calcule cada um dos valores e compare qual deles é menor."
	    },
	    {
	        pergunta: "Estava trabalhando na minha próxima criação nos últimos meses e para impedir algum intrometido de se meter, eu criei um sistema para impedir que descubram qual deles é mais alto. A maior altura será a senha desta porta. Alturas em metro: {4*3, 4/3, 4.3, 4}.",
	        alternativas: ["4*3", "4/3","4,3", "4", "dica"],
	        resposta_correta: 0,
			dica: "Calcule cada um dos valores e compare qual deles é menor."
	    },
	    {
	        pergunta: "Estava trabalhando na minha próxima criação nos últimos meses e para impedir algum intrometido de se meter, eu criei um sistema para impedir que descubram qual deles é mais alto. A maior altura será a senha desta porta. Alturas em metro: {5*0, 3^0, 10/0, 0+0}.",
	        alternativas: ["5*0", "3^0","10/0", "0+0", "dica"],
	        resposta_correta: 1,
			dica: "Somente um desses tem resultado maior que 1. Pense e reconhecerá qual"
	    },
	    {
	        pergunta: "Estava trabalhando na minha próxima criação nos últimos meses e para impedir algum intrometido de se meter, eu criei um sistema para impedir que descubram qual deles é mais alto. A maior altura será a senha desta porta. Alturas em metro: {2^3, 4*2.5 , 24/3, 40/5}.",
	        alternativas: ["8m", "10m","12m", "14m", "dica"],
	        resposta_correta: 1,
			dica: "Todos eles resultam em 8, exceto um. Qual é ele?"
	    },
	    {
	        pergunta: "Estava trabalhando na minha próxima criação nos últimos meses e para impedir algum intrometido de se meter, eu criei um sistema para impedir que descubram qual deles é mais alto. A maior altura será a senha desta porta. Alturas em metro: {30*0,5 , 30/3, 64/8, raiz(81)}.",
	        alternativas: ["5,3m", "12,6m","14,2m", "15m", "dica"],
	        resposta_correta: 3,
			dica: "Tem um deles que parece menor, mas se você souber calcular, vai entender seu valor"
	    },
	
		// Variação 2
	    {
	        pergunta: "Eu nunca quis me isolar da sociedade, mas é um sacrifício a ser feito pela ciência. Estou 50km longe da cidade, numa floresta circular com raio de 5km. Calculando a área, você saberá que não há como fugir. (pi = 3).",
	        alternativas: ["75km²", "50km²","40km²", "25km²", "dica"],
	        resposta_correta: 0,
			dica: "Ignore os 50km, a fórmula da área de um círculo é pi*raio^2. Lembre-se da ordem das operações."
	    },
	    {
	        pergunta: "Eu nunca quis me isolar da sociedade, mas é um sacrifício a ser feito pela ciência. Estou 50km longe da cidade, numa floresta circular com raio de 3km. Calculando a área, você saberá que não há como fugir. (pi = 3).",
	        alternativas: ["27km²", "18km²","36km²", "9km²", "dica"],
	        resposta_correta: 0, 
			dica: "Ignore os 50km, a fórmula da área de um círculo é pi*raio^2. Lembre-se da ordem das operações."
	    },
	    {
	        pergunta: "Eu nunca quis me isolar da sociedade, mas é um sacrifício a ser feito pela ciência. Estou 50km longe da cidade, numa floresta circular com raio de 6km. Calculando a área, você saberá que não há como fugir. (pi = 3).",
	        alternativas: ["12km²", "108km²","64km²", "80km²", "dica"],
	        resposta_correta: 1, 
			dica: "Ignore os 50km, a fórmula da área de um círculo é pi*raio^2. Lembre-se da ordem das operações."
	    },
	    {
	        pergunta: "Eu nunca quis me isolar da sociedade, mas é um sacrifício a ser feito pela ciência. Estou 50km longe da cidade, numa floresta circular com raio de 10km. Calculando a área, você saberá que não há como fugir. (pi = 3).",
	        alternativas: ["3km²", "30km²","300km²", "3000km²", "dica"],
	        resposta_correta: 2,
			dica: "Ignore os 50km, a fórmula da área de um círculo é pi*raio^2. Lembre-se da ordem das operações."
	    },
	    {
	        pergunta: "Eu nunca quis me isolar da sociedade, mas é um sacrifício a ser feito pela ciência. Estou 50km longe da cidade, numa floresta circular com raio de 4km. Calculando a área, você saberá que não há como fugir. (pi = 3).",
	        alternativas: ["12km²", "24km²","36km²", "48km²", "dica"],
	        resposta_correta: 3,
			dica: "Ignore os 50km, a fórmula da área de um círculo é pi*raio^2. Lembre-se da ordem das operações."
	    },
		{
			pergunta: "Eu nunca quis me isolar da sociedade, mas... QUEM É VOCÊ? SAIA AGORA DA MINHA TORRE!",
			alternativas: ["você", "não", "pode", "fugir.", "dica"],
			resposta_correta: 5,
			dica: "Nunca mais pise aqui."
		},
	];

	global.perguntas3 = [
		// Variação 1
	    {
	        pergunta: "Construir perto de um grande rio foi uma péssima ideia, precisei usar pedras para construir duas salas de 5x4x3 metros (largura x comprimento x altura). Me pergunto qual o volume das salas - desconsiderando móveis e estruturas - para caso ambas inundem.",
	        alternativas: ["3,75m³", "6,67m³","60m³", "120m³", "dica"],
	        resposta_correta: 3, 
			dica: "Apenas multiplique os 3 valores. Ah, e não se esqueça que são DUAS salas."
	    },
	    {
	        pergunta: "Construir perto de um grande rio foi uma péssima ideia, precisei usar pedras para construir duas salas de 6x5x4 metros (largura x comprimento x altura). Me pergunto qual o volume das salas - desconsiderando móveis e estruturas - para caso ambas inundem.",
	        alternativas: ["120m³", "240m³","360m³", "480m³", "dica"],
	        resposta_correta: 1, 
			dica: "Apenas multiplique os 3 valores. Ah, e não se esqueça que são DUAS salas."
	    },
	    {
	        pergunta: "Construir perto de um grande rio foi uma péssima ideia, precisei usar pedras para construir duas salas de 4x3x2 metros (largura x comprimento x altura). Me pergunto qual o volume das salas - desconsiderando móveis e estruturas - para caso ambas inundem.",
	        alternativas: ["6m³", "12m³","24m³", "48m³", "dica"],
	        resposta_correta: 3, 
			dica: "Apenas multiplique os 3 valores. Ah, e não se esqueça que são DUAS salas."
	    },
	    {
	        pergunta: "Construir perto de um grande rio foi uma péssima ideia, precisei usar pedras para construir duas salas de 5x5x3 metros (largura x comprimento x altura). Me pergunto qual o volume das salas - desconsiderando móveis e estruturas - para caso ambas inundem.",
	        alternativas: ["25m³", "8,3m³","150m³", "125m³", "dica"],
	        resposta_correta: 2, 
			dica: "Apenas multiplique os 3 valores. Ah, e não se esqueça que são DUAS salas."
	    },
	    {
	        pergunta: "Construir perto de um grande rio foi uma péssima ideia, precisei usar pedras para construir duas salas de 4x3x3 metros (largura x comprimento x altura). Me pergunto qual o volume das salas - desconsiderando móveis e estruturas - para caso ambas inundem.",
	        alternativas: ["72m³", "54m³","36m³", "18m³", "dica"],
	        resposta_correta: 0, 
			dica: "Apenas multiplique os 3 valores. Ah, e não se esqueça que são DUAS salas."
	    },
	
		// Variação 2
	    {
	        pergunta: "Preciso de 25 fios pro meu projeto, e tô decidindo o que sai mais barato. Os vermelhos custam R$5,00 cada. Os pretos são R$6,00 a unidade, mas tem pacote com 20 por R$95,00. Posso misturar os dois tipos pra economizar. Qual é o menor valor que posso gastar no total? (em R$)",
	        alternativas: ["125,00", "150,00","120,00", "115,00", "dica"],
	        resposta_correta: 2, 
			dica: "A oferta vale a pena, mas para os outros 5, comprarei do mais barato."
	    },
	    {
	        pergunta: "Preciso de 25 fios pro meu projeto, e tô decidindo o que sai mais barato. Os vermelhos custam R$4,00 cada. Os pretos são R$5,00 a unidade, mas tem pacote com 10 por R$42,00. Posso misturar os dois tipos pra economizar. Qual é o menor valor que posso gastar no total? (em R$)",
	        alternativas: ["105,00", "80,00","125,00", "100,00", "dica"],
	        resposta_correta: 3, 
			dica: "A oferta não vale a pena, pois 10 do fio vermelho sai por R$40. Comprarei somente do mais barato."
	    },
	    {
	        pergunta: "Preciso de 30 fios pro meu projeto, e tô decidindo o que sai mais barato. Os vermelhos custam R$5,00 cada. Os pretos são R$6,00 a unidade, mas tem pacote com 20 por R$90,00. Posso misturar os dois tipos pra economizar. Qual é o menor valor que posso gastar no total? (em R$)",
	        alternativas: ["150,00", "140,00","180,00", "120,00", "dica"],
	        resposta_correta: 1, 
			dica: "A oferta vale a pena, mas para os outros 10, comprarei do mais barato."
	    },
	    {
	        pergunta: "Preciso de 20 fios pro meu projeto, e tô decidindo o que sai mais barato. Os vermelhos custam R$5,00 cada. Os pretos são R$4,00 a unidade, mas sempre que pegar 15, fica R$65,00. Posso misturar os dois tipos pra economizar. Qual é o menor valor que posso gastar no total? (em R$)",
	        alternativas: ["85,00", "100,00","90,00", "110,00", "dica"],
	        resposta_correta: 0, 
			dica: "Comprar somente fios pretos é vantajoso."
	    },
	    {
	        pergunta: "Preciso de 25 fios pro meu projeto, e tô decidindo o que sai mais barato. Os vermelhos custam R$6,00 cada. Os pretos são R$5,00 a unidade, mas sempre que pegar 10, fica R$55,00. Posso misturar os dois tipos pra economizar. Qual é o menor valor que posso gastar no total? (em R$)",
	        alternativas: ["150,00", "135,00","140,00", "125,00", "dica"],
	        resposta_correta: 1, 
			dica: "Comprar fios pretos ainda é vantajoso. Comprarei somente do mais barato."
	    },
		{
			pergunta: "Como ousa subir até aqui? Você não passa de parte de um experimento... você irá pagar pelo estrago que está causando!",
			alternativas: ["corra", "corra","corra", "corra", "dica"],
			resposta_correta: 5, 
			dica: "corra enquanto há tempo, ou eu vou te pegar >:0"
    },
	];

	global.perguntas4 = [
		// Variação 1
	    {
	        pergunta: "Uma peça crucial para meu novo projeto está em processo de criação! Deverá ter formato triangular, com base 10cm e ambos os lados 15cm, mas só poderá conhecê-la quem souber a altura da base ao topo da peça.",
	        alternativas: ["raiz(10)", "raiz(20)","raiz(100)", "raiz(200)", "dica"],
	        resposta_correta: 3,
			dica: "Siga a fórmula a² = b² + c², ou melhor, 15^2 - (10/2)^2 = raiz(???). Assim, metade dela vira um triângulo retângulo!"
	    },
	    {
	        pergunta: "Uma peça crucial para meu novo projeto está em processo de criação! Deverá ter formato triangular, com base 16cm e ambos os lados 20cm, mas só poderá conhecê-la quem souber a altura da base ao topo da peça.",
	        alternativas: ["raiz(150)", "raiz(336)","raiz(110)", "raiz(95)", "dica"],
	        resposta_correta: 1,
			dica: "Siga a fórmula a² = b² + c², ou melhor, 20^2 - (16/2)^2 = raiz(???). Assim, metade dela vira um triângulo retângulo!"
	    },
	    {
	        pergunta: "Uma peça crucial para meu novo projeto está em processo de criação! Deverá ter formato triangular, com base e lados 10cm, mas só poderá conhecê-la quem souber a altura da base ao topo da peça.",
	        alternativas: ["raiz(50)", "raiz(75)","raiz(100)", "raiz(125)", "dica"],
	        resposta_correta: 1,
			dica: "Siga a fórmula a² = b² + c², ou melhor, 10^2 - (10/2)^2 = raiz(???). Assim, metade dela vira um triângulo retângulo!"
	    },
	    {
	        pergunta: "Uma peça crucial para meu novo projeto está em processo de criação! Deverá ter formato triangular, com base 20cm e ambos os lados 40cm, mas só poderá conhecê-la quem souber a altura da base ao topo da peça.",
	        alternativas: ["raiz(50)", "raiz(150)","raiz(1500)", "raiz(15000)", "dica"],
	        resposta_correta: 2,
			dica: "Siga a fórmula a² = b² + c², ou melhor, 40^2 - (20/2)^2 = raiz(???). Assim, metade dela vira um triângulo retângulo!"
	    },
	    {
	        pergunta: "Uma peça crucial para meu novo projeto está em processo de criação! Deverá ter formato triangular, com base e lados 20cm, mas só poderá conhecê-la quem souber a altura da base ao topo da peça.",
	        alternativas: ["raiz(100)", "raiz(200)","raiz(300)", "raiz(400)", "dica"],
	        resposta_correta: 2,
			dica: "Siga a fórmula a² = b² + c², ou melhor, 20^2 - (20/2)^2 = raiz(???). Assim, metade dela vira um triângulo retângulo!"
	    },
	
		// Variação 2
	    {
	        pergunta: "Finalmente, a sala de controle, fruto de tudo o que conquistei até hoje e onde faço tudo... e claro que eu não poderia deixar qualquer um entrar, então se prepare para dizer ''meu deus, tem log!''. Para qual destes o logaritmo é 2?",
	        alternativas: ["log4 64", "log3 27","log 4 16", "log5 125", "dica"],
	        resposta_correta: 2,
			dica: "Se eu elevo 3 por 2, eu obtenho 9. Isso quer dizer que log3 9 = 2"
	    },
	    {
	        pergunta: "Finalmente, a sala de controle, fruto de tudo o que conquistei até hoje e onde faço tudo... e claro que eu não poderia deixar qualquer um entrar, então se prepare para dizer ''meu deus, tem log!''. Para qual destes o logaritmo é 2?",
	        alternativas: ["log2 4", "log2 8","log2 16", "log2 32", "dica"],
	        resposta_correta: 0,
			dica: "Se eu elevo 3 por 2, eu obtenho 9. Isso quer dizer que log3 9 = 2"
	    },
	    {
	        pergunta: "Finalmente, a sala de controle, fruto de tudo o que conquistei até hoje e onde faço tudo... e claro que eu não poderia deixar qualquer um entrar, então se prepare para dizer ''meu deus, tem log!''. Para qual destes o logaritmo é 2?",
	        alternativas: ["log3 9", "log2 8","log5 20", "log4 64", "dica"],
	        resposta_correta: 0,
			dica: "Se eu elevo 4 por 2, eu obtenho 16. Isso quer dizer que log4 16 = 2"
	    },
	    {
	        pergunta: "Finalmente, a sala de controle, fruto de tudo o que conquistei até hoje e onde faço tudo... e claro que eu não poderia deixar qualquer um entrar, então se prepare para dizer ''meu deus, tem log!''. Para qual destes o logaritmo é 3?",
	        alternativas: ["log6 64", "log8 64","log4 64", "log12 64", "dica"],
	        resposta_correta: 2,
			dica: "Se eu elevo 2 por 3, eu obtenho 8, já que 2*2*2=8. Isso quer dizer que log2 8 = 3"
	    },
	    {
	        pergunta: "Finalmente, a sala de controle, fruto de tudo o que conquistei até hoje e onde faço tudo... e claro que eu não poderia deixar qualquer um entrar, então se prepare para dizer ''meu deus, tem log!''. Para qual destes o logaritmo é 3?",
	        alternativas: ["log2 16", "log3 27","log4 16", "log5 25", "dica"],
	        resposta_correta: 1,
			dica: "Se eu elevo 2 por 3, eu obtenho 8, já que 2*2*2=8. Isso quer dizer que log2 8 = 3"
	    },
	    {
		    pergunta: "Pare aí mesmo, não dê um passo sequer! Se você chegar até mim, vai destruir meu sonho! PARE IMEDIATAMENTE!!!",
			alternativas: ["???", "???","???", "???", "dica"],
		    resposta_correta: 5,
			dica: "Terei que acabar com você."
		},
	];
}else if global.dificuldade == 99{
        
		global.perguntas = [
		{
			pergunta: "...",
	        alternativas: ["...", "...", "...", "...", "dica"],
	        resposta_correta: 5,
	        dica: "..."
		}
		];
}else{
	global.perguntas = [
	// Variação 1
    {
        pergunta: "{6, 5, 7, 0, 2}... Odeio pensar sobre essas notas que já recebi. Prefiro só ver a maior delas que é:",
        alternativas: [7, 6, 5, 2, "dica"],
        resposta_correta: 0,
        dica: "Ignore os números que são menores."
    },
    {
        pergunta: "{3, 2, 6, 0, 2}... Odeio pensar sobre essas notas que já recebi. Prefiro só ver a maior delas que é:",
        alternativas: [7, 6, 3, 0, "dica"],
        resposta_correta: 1,
        dica: "Um dos números eu nunca tirei… e ignore os números que são menores."
    },
    {
        pergunta: "{7, 3, 5, 9, 1}... Odeio pensar sobre essas notas que já recebi. Prefiro só ver a maior delas que é:",
        alternativas: [3, 7, 9, 5, "dica"],
        resposta_correta: 2,
        dica: "Ignore os números que são menores."
    },
    {
        pergunta: "{9, 6, 3, 0, 6}... Odeio pensar sobre essas notas que já recebi. Prefiro só ver a maior delas que é:",
        alternativas: [6, 6, 6, 9, "dica"],
        resposta_correta: 3,
        dica: "Só existe uma resposta correta."
    },
    {
        pergunta: "{1, 2, 3, 4, 7}... Odeio pensar sobre essas notas que já recebi. Prefiro só ver a maior delas que é:",
        alternativas: [10, 9, 8, 7, "dica"],
        resposta_correta: 3,
        dica: "Somente um desses eu tirei."
    },
	// Variação 2
   {
        pergunta: "Nunca fui um aluno bom quando criança, mas certa vez consegui ficar exatamente um ponto acima da média. Naquele ano, a média era 6.",
        alternativas: [7, 6, 8, 5, "dica"],
        resposta_correta: 0,
        dica: "Calcule 6 + 1."
    },
   {
        pergunta: "Nunca fui um aluno bom quando criança, mas certa vez consegui ficar exatamente na média. Naquele ano, a média era 6.",
        alternativas: [7, 6, 8, 5, "dica"],
        resposta_correta: 1,
        dica: "Eu estava exatamente na média. Qual era ela?"
    },
   {
        pergunta: "Nunca fui um aluno bom quando criança, mas certa vez consegui ficar exatamente um ponto acima da média. Naquele ano, a média era 7.",
        alternativas: [7, 6, 8, 5, "dica"],
        resposta_correta: 2,
        dica: "Calcule 7 + 1."
    },
   {
        pergunta: "Nunca fui um aluno bom quando criança, mas certa vez consegui ficar exatamente dois pontos acima da média. Naquele ano, a média era 6.",
        alternativas: [7, 6, 8, 5, "dica"],
        resposta_correta: 2,
        dica: "Calcule 6 + 2."
    },
   {
        pergunta: "ERRO ERRO ERRO ! Invasor detectado. Ativando sistema de proteção",
        alternativas: ["???", "???", "???", "???", "dica"],
        resposta_correta: 5,
        dica: "Não se mexa, vamos te capturar."
    },
];

global.perguntas2 = [
	// Variação 1
   {
        pergunta: "Criei um novo robô para defender a torre, tão forte que a senha dessa porta é a multiplicação da sua altura de 2 metros e sua largura de 60cm - só ignore as unidades.",
        alternativas: [12, 6, 2, 60, "dica"],
        resposta_correta: 0,
        dica: "Ignore as unidades. Quanto é 2 x 6? Isso é a mesma coisa que 6 + 6."
    },
   {
        pergunta: "Criei um novo robô para defender a torre, tão forte que a senha dessa porta é a multiplicação da sua altura de 2 metros e sua largura de 80cm - só ignore as unidades.",
        alternativas: [123, 160, 134, 145, "dica"],
        resposta_correta: 1,
        dica: "Sempre que multiplicar um número que termina com zero, a resposta também acaba em zero"
    },
   {
        pergunta: "Criei um novo robô para defender a torre, tão forte que a senha dessa porta é a multiplicação da sua altura de 1 metro e sua largura de 60cm - só ignore as unidades.",
        alternativas: [1, 0, 60, 120, "dica"],
        resposta_correta: 2,
        dica: "Todo número multiplicado por um é igual a ele mesmo."
    },
   {
        pergunta: "Criei um novo robô para defender a torre, tão forte que a senha dessa porta é a multiplicação da sua altura de 2 metros e sua largura de 50cm - só ignore as unidades.",
        alternativas: [12, 25, 50, 100, "dica"],
        resposta_correta: 3,
        dica: "Ignore as unidades. Quanto é 2 x 5? Isso é a mesma coisa que 5 + 5."
    },
   {
        pergunta: "Criei um novo robô para defender a torre, tão forte que a senha dessa porta é a multiplicação da sua altura de 2 metros e sua largura de 30cm - só ignore as unidades.",
        alternativas: [12, 6, 2, 60, "dica"],
        resposta_correta: 3,
        dica: "Ignore as unidades. Quanto é 2 x 3? Isso é a mesma coisa que 3 + 3."
    },
	// Variação 2
   {
        pergunta: "Me escondi aqui pela ciência, tão longe que a cidade fica 50km daqui e construindo uma torre de 6 andares. Até agora, construí metade, que é:",
        alternativas: [3, 4, 5, 6, "dica"],
        resposta_correta: 0,
        dica: "Ignore os 50km, Quanto é 6 / 2?"
    },
   {
        pergunta: "Me escondi aqui pela ciência, tão longe que a cidade fica 50km daqui e construindo uma torre de 8 andares. Até agora, construí metade, que é:",
        alternativas: [5, 4, 6, 3, "dica"],
        resposta_correta: 1,
        dica: "Ignore os 50km, Quanto é 8 / 2?"
    },
   {
        pergunta: "Me escondi aqui pela ciência, tão longe que a cidade fica 50km daqui e construindo uma torre de 10 andares. Até agora, construí metade, que é:",
        alternativas: [7, 6, 5, 4, "dica"],
        resposta_correta: 2,
        dica: "Ignore os 50km, Quanto é 10 / 2?"
    },
   {
        pergunta: "Me escondi aqui pela ciência, tão longe que a cidade fica 50km daqui e construindo uma torre de 12 andares. Até agora, construí metade, que é:",
        alternativas: [0, 3, 9, 6, "dica"],
        resposta_correta: 3,
        dica: "Ignore os 50km, Quanto é 6 / 2?"
    },
   {
        pergunta: "Me escondi aqui pela ciência, tão longe que... QUEM É VOCÊ? SAIA AGORA DA MINHA TORRE!",
        alternativas: ["você", "não", "pode", "fugir.", "dica"],
        resposta_correta: 5,
        dica: "Nunca mais pise aqui."
    },
];

global.perguntas3 = [
	// Variação 1
   {
        pergunta: "Por conta do rio, fiz a base da torre de pedra, precisei carregar 2 sacos de pedras duas vezes por dia durante 5 dias. Quantas pedras eu trouxe?",
        alternativas: [20, 10, 30, 40, "dica"],
        resposta_correta: 0,
        dica: "Veja bem os números: 2, ‘duas’ e 5. Agora multiplique os três valores."
    },
   {
        pergunta: "Por conta do rio, fiz a base da torre de pedra, precisei carregar 2 sacos de pedras três vezes por dia durante 5 dias. Quantas pedras eu trouxe?",
        alternativas: [50, 30, 20, 40, "dica"],
        resposta_correta: 1,
        dica: "Veja bem os números: 2, ‘três’ e 5. Agora multiplique os três valores."
    },
   {
        pergunta: "Por conta do rio, fiz a base da torre de pedra, precisei carregar 2 sacos de pedras duas vezes por dia durante 3 dias. Quantas pedras eu trouxe?",
        alternativas: [14, 10, 12, 16, "dica"],
        resposta_correta: 2,
        dica: "Veja bem os números: 2, ‘duas’ e 3. Agora multiplique os três valores."
    },
   {
        pergunta: "Por conta do rio, fiz a base da torre de pedra, precisei carregar 5 sacos de pedras duas vezes por dia durante 5 dias. Quantas pedras eu trouxe?",
        alternativas: [100, 10, 25, 50, "dica"],
        resposta_correta: 3,
        dica: "Veja bem os números: 5, ‘duas’ e 5. Agora multiplique os três valores."
    },
   {
        pergunta: "Por conta do rio, fiz a base da torre de pedra, precisei carregar 4 sacos de pedras quatro vezes por dia durante 4 dias. Quantas pedras eu trouxe?",
        alternativas: [64, 444, 44, 4, "dica"],
        resposta_correta: 0,
        dica: "Veja bem os números: 4, ‘quatro’ e 4. Agora multiplique os quatr- três valores."
    },	
	// Variação 2
    {
        pergunta: "Preciso comprar fios pretos, que custam R$5,00 e vermelhos, por R$6,00. Se eu comprar 2 de cada, quanto vai custar?",
        alternativas: ["22,00", "10,00","12,00", "30,00", "dica"],
        resposta_correta: 0, 
		dica: "Primeiro some 5 e 6, depois multiplique o resultado por 2."
    },
    {
        pergunta: "Preciso comprar fios pretos, que custam R$5,00 e vermelhos, por R$4,00. Se eu comprar 2 de cada, quanto vai custar?",
        alternativas: ["10,00", "18,00","8,00", "28,00", "dica"],
        resposta_correta: 1, 
		dica: "Primeiro some 5 e 4, depois multiplique o resultado por 2."
    },
    {
        pergunta: "Preciso comprar fios pretos, que custam R$5,00 e vermelhos, por R$6,00. Se eu comprar 3 de cada, quanto vai custar?",
        alternativas: ["11,00", "22,00","33,00", "44,00", "dica"],
        resposta_correta: 2, 
		dica: "Primeiro some 5 e 6, depois multiplique o resultado por 3."
    },
    {
        pergunta: "Preciso comprar fios pretos, que custam R$4,00 e vermelhos, por R$6,00. Se eu comprar 3 de cada, quanto vai custar?",
        alternativas: ["20,00", "10,00","24,00", "30,00", "dica"],
        resposta_correta: 3, 
		dica: "Primeiro some 4 e 6, depois multiplique o resultado por 3."
    },
    {
        pergunta: "Como ousa subir até aqui? Você não passa de parte de um experimento... você irá pagar pelo estrago que está causando!",
        alternativas: ["corra", "corra","corra", "corra", "dica"],
        resposta_correta: 5, 
		dica: "corra enquanto há tempo, ou eu vou te pegar >:0"
    },
];

global.perguntas4 = [
	// Variação 1
    {
        pergunta: "O chip triangular responsável pela memória da minha grande máquina tem todos os lados com tamanho 1cm. Só passará dessa porta aquele que souber seu perímetro.",
        alternativas: ["3cm", "2cm","4cm", "1cm", "dica"],
        resposta_correta: 0,
		dica: "Perímetro é a soma do tamanho de todos os lados. Quantos lados tem um triângulo?"
    },
    {
        pergunta: "O chip triangular responsável pela memória da minha grande máquina tem todos os lados com tamanho 2cm. Só passará dessa porta aquele que souber seu perímetro.",
        alternativas: ["3cm", "6cm","9cm", "12cm", "dica"],
        resposta_correta: 1,
		dica: "Perímetro é a soma do tamanho de todos os lados. Quantos lados tem um triângulo?"
    },
    {
        pergunta: "O chip quadricular responsável pela memória da minha grande máquina tem todos os lados com tamanho 1cm. Só passará dessa porta aquele que souber seu perímetro.",
        alternativas: ["1cm", "2cm","4cm", "8cm", "dica"],
        resposta_correta: 2,
		dica: "Perímetro é a soma do tamanho de todos os lados. Quantos lados tem um quadrado?"
    },
    {
        pergunta: "O chip quadricular responsável pela memória da minha grande máquina tem todos os lados com tamanho 2cm. Só passará dessa porta aquele que souber seu perímetro.",
        alternativas: ["1cm", "2cm","4cm", "8cm", "dica"],
        resposta_correta: 3,
		dica: "Perímetro é a soma do tamanho de todos os lados. Quantos lados tem um quadrado?"
    },
    {
        pergunta: "O chip triangular responsável pela memória da minha grande máquina tem todos os lados com tamanho 3cm. Só passará dessa porta aquele que souber seu perímetro.",
        alternativas: ["7cm", "9cm","4cm", "3cm", "dica"],
        resposta_correta: 1,
		dica: "Perímetro é a soma do tamanho de todos os lados. Quantos lados tem um triângulo?"
    },
    	
	// Variação 2
    {
        pergunta: "A sala de controle, lugar onde faço tudo. Beleza retangular, com seus 5m de largura e 6m de comprimento, só entra quem souber sua área.",
        alternativas: ["30m2", "25m2","36m2", "20m2", "dica"],
        resposta_correta: 0,
		dica: "A área de retângulos é simplesmente a largura multiplicada pela altura"
    },
    {
        pergunta: "A sala de controle, lugar onde faço tudo. Beleza retangular, com seus 4m de largura e 6m de comprimento, só entra quem souber sua área.",
        alternativas: ["26m2", "24m2","35m2", "18m2", "dica"],
        resposta_correta: 1,
		dica: "A área de retângulos é simplesmente a largura multiplicada pela altura"
    },
    {
        pergunta: "A sala de controle, lugar onde faço tudo. Beleza retangular, com seus 7m de largura e 9m de comprimento, só entra quem souber sua área.",
        alternativas: ["45m2", "52m2","63m2", "81m2", "dica"],
        resposta_correta: 2,
		dica: "A área de retângulos é simplesmente a largura multiplicada pela altura"
    },
    {
        pergunta: "A sala de controle, lugar onde faço tudo. Beleza retangular, com seus 8m de largura e 6m de comprimento, só entra quem souber sua área.",
        alternativas: ["16m2", "24m2","32m2", "48m2", "dica"],
        resposta_correta: 3,
		dica: "A área de retângulos é simplesmente a largura multiplicada pela altura"
    },
    {
        pergunta: "Pare aí mesmo, não dê um passo sequer! Se você chegar até mim, vai destruir meu sonho! PARE IMEDIATAMENTE!!!",
        alternativas: ["???", "???","???", "???", "dica"],
        resposta_correta: 5,
		dica: "Terei que acabar com você."
    },
];
}
}