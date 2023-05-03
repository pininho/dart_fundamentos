void main() {
  // Declaração normal (porém, não é a melhor)
  List<int> listNumeros = [1, 2, 3];

  // Automaticamente vai entender que é uma lista de números inteiros
  var listNumeros2 = [1, 2, 3];

  // Caso for colocar lista sem dados, é importante declarar o tipo
  List<int> listSemDados = [];

  // Forma correta de criar list sem dados
  var listSemDados2 = <int>[];
}
