% Definição da função inicial
% Argumentos: nó inicial EI, nó final EF, e o caminho solução (uma lista) entre os 2 
% O primeiro elemento da nossa lista-solução tem que ser o nó final, e o último, o nó inicial

caminho_cegoBPForward(EI,EF,Cam):- 
    caminho_f(EF,[EI],Cam).

% Condição de parada %
% Quando o primeiro elemento da lista for o EF
% O conteúdo da variável auxiliar subtituí o conteúdo da variável Cam 

caminho_f(EF, [EF|Cam], [EF|Cam]).

% Construção do caminho %
% Na nossa lista auxiliar, verificamos se as viagens atingem as condições, ou seja, pegamos o último estado que foi 
% visitado e verificamos se existe alguma condição que deixa viagem desse estado até o último (pode_ir), também
% verificamos se esse último estado não pertence no caminho que temos no momento (evitar repetições/loops),
% e chamamos o caminho_f recursivamente para repetição do processo, até que a condição de parada seja atingida.
% Note que é acrescentado o elemento E na lista, e a condição de parada se atinge quando E = EF

caminho_f(EF,[Eint|Caminho_ate_agora], Cam):-
    pode_ir(Eint,E),
    not(pertence1(E,Caminho_ate_agora)),
    caminho_f(EF,[E,Eint|Caminho_ate_agora], Cam).

pertence1(E,[E|_]):- !.

pertence1(E,[_|T]):-
    pertence1(E,T) .

% Casos de teste

% Viagem entre estados
% Conjunto de 5 estados: SP, RJ, MG, BA, AM

% Rota esperada: SP -> RJ -> BA -> AM -> MG %

	pode_ir(sp,rj).
	pode_ir(rj,ba).
	pode_ir(ba,am).
	pode_ir(am,mg).
% Se adicionarmos esse pode_ir abaixo, devemos ter +1 opção de rota:  SP -> RJ -> BA -> MG
	% pode_ir(ba,mg).

% Viagem entre números
% Opções de viagem: ordem crescente, apenas por ímpares, múltiplos de 3 e múltiplos de 5.
% Números de 1 a 15
% Devemos ter várias opções de rota, cumprindo nossas opções

	pode_ir(1,2).
	pode_ir(2,3).
	pode_ir(3,4).
	pode_ir(4,5).
	pode_ir(5,6).
	pode_ir(6,7).
	pode_ir(7,8).
	pode_ir(8,9).
	pode_ir(9,10).
	pode_ir(10,11).
	pode_ir(11,12).
	pode_ir(12,13).
	pode_ir(13,14).
	pode_ir(14,15).
	pode_ir(1,3).
	pode_ir(3,5).
	pode_ir(5,7).
	pode_ir(7,9).
	pode_ir(9,11).
	pode_ir(13,15).
	pode_ir(1,3).
	pode_ir(3,6).
	pode_ir(6,9).
	pode_ir(9,12).
	pode_ir(12,15).
	pode_ir(1,5).
	pode_ir(5,10).
	pode_ir(10,15).

% Para testar, podemos utilizar:
% caminho_cegoBPForward(sp,mg,Cam)
% caminho_cegoBPForward(1,15,Cam) 
% ou substituir as variáveis para as desejadas.
% O códigos deverá retortar Cam = [lista 1 com a rota], ..., [lista n com a rota]
% sendo n o número de soluções possíveis.