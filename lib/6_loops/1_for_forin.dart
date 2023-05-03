void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Alessandro', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];

  // For padrão, pouco utilizado, bem específico, mas temos que conhecer todos
  print('Imprimindo números com for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // For In criado para situações em específico
  print('Imprimindo números com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  // Break
  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (i == 1) {
      break;
    }
  }

  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Guilherme') {
      break;
    }
  }

  // Continue
  print('Imprimindo nomes com for convencional com continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1) {
      continue;
    }
    print(nomes[i]);
  }
}
