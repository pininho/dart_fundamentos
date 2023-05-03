void main() {
  // O for convencional tem 3 estruturas: início, condição e incremento
  // Já o while só tem a condição, todo o restante é por "conta e risco"
  var numero = 0;
  print('While Convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }

  // Do While
  print('Do While');
  var indice = 0;
  print('While não será executado!');
  while (indice > 0) {
    print(indice);
    indice++;
  }

  // Caso queira executar o loop 'pelo menos' uma vez, usa-se o Do While
  do {
    print(indice);
  } while (indice > 0);
}
