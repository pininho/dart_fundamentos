String? nomeCompletoSuperior;

String nomeCompletoSuperior2 = 'Alessandro Pino';

String? nomeCompletoSuperiorOpc;

// Variáveis de nível superior (globais) não podem ser inicializadas depois
//String testeSuperior;
String? testeSuperior;

void main() {
  // String nomeCompleto;
  // Tem que atribuir, senão o null safety não deixa utilizar no print
  String nomeCompleto = '';
  // OU
  // informar para o compilador que QUER criar uma variável que aceita receber NULL
  String? nomeCompleto2;
  print(nomeCompleto.length);

  // Dart não deixa eu chamar no print, pois por ter o '?' sabe que pode ser NULL
  //print(nomeCompleto2.length);

  //Se colocar o operador '?.', permite chamar e exibe null
  print(nomeCompleto2?.length);

  // Se tratar, o Dart deixa
  if (nomeCompleto2 != null) print(nomeCompleto2.length);

  // O operador '!' informa ao Dart para não se preocupar, que ela não será NULL
  //print(nomeCompleto2!.length);

  // Se atribuir, já pode utilizar sem '!'
  nomeCompleto2 = 'Alessandro Pino';
  print(nomeCompleto2.length);

  // No caso de variáveis de nível superior, mesmo atribuindo valor,
  // não é possível transformá-la de nula para não-nula
  //print(nomeCompletoSuperiorOpc.length);
  nomeCompletoSuperiorOpc = 'Alessandro';
  //print(nomeCompletoSuperiorOpc.length);

  // Variáveis locais não precisam ser inicializadas de cara.
  // Podem ser criadas sem valor e depois ser atribuído um valor
  String teste;
  //print(teste.length);
  // Variáveis locais que são nulas (nullable) por padrão,
  // se for atribuído um valor a elas, automaticamente elas
  // são promovidas a não nulo (non-null)
  teste = 'teste';
  print(teste.length);

  // Variáveis de nível superior (globais) NUNCA são promovidas
  // para não nulo (non-null)
  testeSuperior = 'teste superior';
  //print(testeSuperior.length);
}
