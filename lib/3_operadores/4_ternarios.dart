void main() {
  final idade = 12;

  if (idade >= 18) {
    print('maior de idade');
  } else {
    print('menor de idade');
  }

  // (condição) ? faça algo : outra coisa!
  final eMaiorDeIdade = idade >= 18 ? true : false;

  print('e maior de idade? ' + eMaiorDeIdade.toString());

  // OUTRO EXEMPLO:
  print((idade < 13)
      ? 'Criança'
      : (idade > 12 && idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  // Calcula se o ano é bissexto
  final ano = 2024;
  print(((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0)
      ? 'Bissexto'
      : 'não é Bissexto');
}
