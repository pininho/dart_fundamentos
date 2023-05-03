String nomeCompleto = 'Alessandro Pino';

// Para esse caso onde a variável de nível superior foi marcada como opcional '?',
// não conseguirá chamar no main o método 'toUpperCase'
String? nomeCompleto2;

void main() {
  print(nomeCompleto.toUpperCase());

  // Conforme dito acima, não é possível chamar o método de variável de nível superior nullable
  //print(nomeCompleto2.toUpperCase());

  // Opção ultrapassada
  //var nomeCompletoLocal = nomeCompleto2;
  //if (nomeCompletoLocal != null) {
  //  print(nomeCompletoLocal.toUpperCase());
  //} else {
  //  print('nome não preenchido');
  //}

  // Opção acima com 'Null Aware Operator'
  var nomeCompletoLocal = nomeCompleto2 ?? 'nome não preenchido';
  print(nomeCompletoLocal);

  // Usando o Conditional Property Access, é utilizar a '?' antes da chamada do método
  // Nesse caso, irá imprimir 'null' pois a variável é nula
  print(nomeCompleto2?.toUpperCase());

  // Abaixo, utilizando a estratégia de ambos,
  // o Conditional Property Access + Null Aware Operator
  print(nomeCompleto2?.toUpperCase() ?? 'Nome não preenchido');

  // Agora, atribuindo o valor à variável
  nomeCompleto2 = 'Alessandro M O Pino';
  print(nomeCompleto2?.toUpperCase());
}
