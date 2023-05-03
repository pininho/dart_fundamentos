void main() {
  var numeros = List.generate(10, (index) => index);

  for (var i = 0; i < numeros.length; i++) {
    if (i == 5) {
      continue;
    }
    print(numeros[i]);
  }

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte5 = numeros.takeWhile((numero) => numero < 6);
  print(numeros);
  print(numerosAte5);

  // Nesse caso, consegue acessar o índice pelo número, pois é uma List
  print(numeros[3]);

  // Nesse caso, não consegue acessar o índice pelo número, pois é um Iterable
  // Para acessar um índice, por exemplo, utiliza-se o 'elementAt'
  //print(numerosAte5[3]);
  print(numerosAte5.elementAt(3));

  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();

  print(numerosAte6);

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();

  print(numerosRemoverAte5);

  var nomes = ['Alessandro', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];

  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Arthur') {
      return true;
    } else {
      return false;
    }
  }).toList();

  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'numero é $numero';
  }).toList();

  print(numeroStrList);

  final numerosRevertidos = numeros.reversed.toList();
  print(numerosRevertidos);
}
