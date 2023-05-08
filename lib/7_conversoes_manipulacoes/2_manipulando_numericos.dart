void main() {
  final idade = 37;

  // Tudo o que você utilizar dentro do Dart, já tem o método toString()
  // Abaixo, ele é chamado implicitamente
  print(idade);

  // No exemplo abaixo, não é possível concatenar diretamente. Apresenta erro de compilação
  // print('Sua idade é ' + idade);

  // Assim, é necessário invocar o método toString()
  print('Sua idade é ' + idade.toString());

  // Com a interpolação, o próprio Dart faz isso para a gente. Mais um motivo para utilizar
  print('Sua idade é $idade');

  final valor = -20;

  // Há diversas propriedades acessíveis dos inteiros iniciados com 'is'
  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;

  // Arredonda para um inteiro
  print(valorDouble.round());

  // Arredonda para um ponto flutuante
  print(valorDouble.roundToDouble());

  // Conversão de texto para número
  // Caso a string não seja um número possível de converter, o Dart irá lançar
  // uma FormatException
  final valorString = '30';

  final valorInt = int.parse(valorString);
  print(valorInt);

  // O método tryParse, caso não conseguir converter, ao invés de lançar uma exception,
  // ele retorna null
  final valorString2 = '30a';
  final valorInt2 = int.tryParse(valorString2);
  print(valorInt2);

  // Caso tentar utilizar a variável 'valorInt2' em uma soma, por exemplo, não será possível,
  // pois devido ao null safety, tem que verificar antes se é diferente de null
  // print(valorInt2 + 2);

  if (valorInt2 != null) print('O valor é ${valorInt2 + 2}');

  // Método para determinar quantas casas decimais exibir
  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));
}
