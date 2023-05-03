void main() {
  // Operadores relacionais
  // Temos 6 tipos
  // == (Igualdade), != (diferença), > (maior que), < (menor que),
  // <= (menor ou igual), >= (maior ou igual)

  final idade = 18;
  final tipoPet = 'Gato';

  // Regra de negócio para tirar habilitação
  if (idade == 18) {
    print('Pode tirar habilitacao');
  }

  if (idade > 17) {
    print('Pode tirar habilitacao');
  }

  if (idade >= 18) {
    print('Pode tirar habilitacao');
  }

  if (tipoPet != 'Cachorro') {
    print('Desculpe mas não temos nada para seu pet');
  }
}
