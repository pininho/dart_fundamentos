void main() {
  // Operadores lógicos
  // && (E), || (OU), ! (NÃO)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M') {
    if (idade >= 18) {
      print('pode entrar!!!');
    } else {
      print('não pode entrar!!!');
    }
  } else {
    print('não pode entrar!!!');
  }

  // Utilizando o operador && fica bem mais resumido
  if (sexo == 'M' && idade >= 18) {
    print('pode entrar!!!');
  } else {
    print('não pode entrar!!!');
  }

  // Operador || uma das condições precisam ser verdade
  if (sexo == 'M' || idade >= 18) {
    print('pode entrar!!!');
  } else {
    print('não pode entrar!!!');
  }

  // Operador ! inverte um valor

  if (!(sexo == 'M' && idade >= 18)) {
    print('pode entrar!!!');
  } else {
    print('não pode entrar!!!');
  }
}
