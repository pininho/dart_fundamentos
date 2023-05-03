void main() {
  final diaDaSemana = 0;

  var diaDaSemanaStr = '';

  if (diaDaSemana == 0) {
    diaDaSemanaStr = 'Domingo';
  } else if (diaDaSemana == 1) {
    diaDaSemanaStr = 'segunda-feira';
  } else {
    diaDaSemanaStr = 'Não identificado';
  }

  print(diaDaSemanaStr);

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'terça-feira';
      break;
    default:
      print('dia da semana não encontrado');
  }

  print(diaDaSemanaStr);

  // É possível 'juntar' dois cases, um em baixo do outro sem o break. Assim,
  // tendo caído em um deles, executa o mesmo trecho de código.
  // Exemplo:
  // case 1:
  // case 2:
  // print('1 ou 2');
  // break;
}
