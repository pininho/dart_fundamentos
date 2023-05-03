void main() {
  final numeros = [1, 2, 3, 4];

  print(numeros);

  // Adicionar um item à lista, chamando o método add, e adiciona por padrão ao final da lista
  numeros.add(1);
  print(numeros);

  final nomes = ['Alessandro', 'Rodrigo', 'João', 'Bia'];
  print(nomes);
  nomes.add('Luana');
  print(nomes);

  // Acessando elemento da lista pelo índice (índice inicia com zero)
  print(nomes[2]);
  print(nomes[0]);

  // Insere um elemento na lista na posição indicada no primeiro parâmetro
  nomes.insert(0, 'José');
  print(nomes[0]);
  print(nomes);

  // O InsertAll adiciona um array em um índice específico
  //nomes.insertAll(index, iterable)

  // Também temos o addAll, que recebe uma lista e adiciona ao final
  nomes.addAll(['Chico', 'Chica', 'Severino']);

  print(nomes);

  // Da mesma forma que consegue adicionar, pode-se remover elementos da lista por meio do remove
  //! No caso abaixo, ele compara se o elemento é igual e remove
  nomes.remove('Chico');

  print(nomes);

  // Há a opção de remover utilizando uma função, com o removeWhere
  nomes.removeWhere((nome) => nome == 'Alessandro');
  print(nomes);

  nomes.removeWhere((nome) {
    // Print para provar que essa função percorre todos os elementos da lista
    print('Nome procurado: $nome');
    // Se retornar 'true', então o elemento é removido
    if (nome == 'Chica') {
      return true;
    } else {
      return false;
    }
  });

  print(nomes);

  // Primeiro item da lista
  print(nomes[0]);
  //* OU
  print(nomes.first);

  // Print número total de elementos da lista
  print(nomes.length);

  // Último item:
  print(nomes[nomes.length - 1]);
  //* OU
  print(nomes.last);

  // Na função abaixo, ele percorre a lista e ao encontrar o primeiro elemento ele retorna e pára
  // a busca pela lista
  var primeiroNome = nomes.firstWhere((nome) {
    print('Buscando primeiro nome: $nome');
    if (nome == 'Bia') {
      return true;
    } else {
      return false;
    }
  });

  print(primeiroNome);

  // Gerando listas
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => '#${index + 1}');
  print(stringsGerados);

  // Gerando listas preenchidas com elemento repetido
  final repeticoes = List.filled(10, 'Alessandro');
  print(repeticoes);

  final repeticoes2 = List.filled(10, 0);
  print(repeticoes2);

  // A função 'fold' equivale ao 'reduce' de outras linguagens
  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosParaCalculo.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(soma);

  // Spread operator (...)
  var listaNumerosSpreadB = [4, 5, 6];

  //var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpreadB];
  print(listaNumerosSpread);

  // Collection if
  // O instrutor disse que nunca precisou utilizar, que acha até mesmo que fica poluído,
  // mas é bom saber que o recurso existe
  var promocaoAtiva = false;

  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de laranja'
  ];

  print(produtos);

  //Collection For
  // Fazer coisas no momento em que está criando a lista
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];
  print(listaStrings);

  // Converte cada elemento em uma String e concatena todos eles, separador como parâmetro
  var string = listaStrings.join(' -> ');
  print(string);
}
