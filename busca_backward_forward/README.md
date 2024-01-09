## Exemplos de busca em profundidade em Prolog

A busca em profundidade é uma representante das estratégias básicas de busca (ou seja, busca não informada ou cega). Isso significa que seu processo, no geral, não utiliza informações sobre o problema para guiar a busca e realiza uma estratégia de busca exaustiva aplicada até uma solução ser encontrada (ou falhar). 

A busca em profundidade é o recurso mais simples em programação recursiva e, por isso, o Prolog quando executa metas explora alternativas utilizando-a.

O algoritmo utilizado para implementar a busca em profundidade precisa ser dado de modo a guardar o caminho da solução para encontrá-la, e essa a principal diferença entre os algoritmos de busca forward e backward.
No algoritmo de busca forward, é necessário encontrar um caminho para a solução de um estado inicial I para um estado final F. Se F foi alcançado, o caminho é uma solução. Se o estado atual tem um sucessor, e esse sucessor não faz parte do caminho até o momento, ele é inserido no caminho atual e o processo continua; isso serve como um recurso para a detecção de loops e evitar repetições. Já no algoritmo de busca backward, o processo é invertido, uma vez que se busca um caminho para a solução de um estado final F para um estado inicial I. 

É interessante notar que, embora a diferença pareça ser uma simples inversão de ordem, a escolha do algoritmo de busca (se irá ser backward ou forward) influencia inteiramente na construção do código e são necessárias várias mudanças para essa adaptação. Isso se dá porque, ainda que visualmente para nós o caminho seja somente uma inversão entre os dois, são algortimos que ditam acerca do funcionamento completo do código.

Também é notável ressaltar que o processo de busca em backward tende a ser mais eficiente que o processo de busca forward quando se trata de grandes coleções de axiomas.

No repositório temos dois exemplos de aplicações para esses dois algoritmos de busca em Prolog; cada um conta com dois casos de teste iguais. Nos códigos, há comentários explicativos acerca do funcionamento dos mesmos e dos testes feitos.
