void main() {
  final nome = 'Alessandro Pino';

  var subStringNome = nome.substring(11);

  print(subStringNome);

  // Caractere inicial inclusivo, caractere final exclusivo
  var subStringNome2 = nome.substring(0, 10);

  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);

  if (sexoSigla == 'M') {
    print('Olá, seu sexo é Masculino');
  }

  if (sexo.startsWith('M')) {
    print('Olá, seu sexo é Masculino');
  }

  if (sexo.toLowerCase().startsWith('mas')) {
    print('Olá, seu sexo é Masculino minúsculo');
  }

  if (nome.contains('Pino')) {
    print('É da família Pino');
  }

  // Interpolação;

  var primeiroNome = 'Alessandro';
  var segundoNome = 'Pino';

  // saudacao criada com CONCATENAÇÃO
  var saudacao =
      'Olá ' + primeiroNome + ' ' + segundoNome + ', seja muito bem vindo';
  print(saudacao);

  // saudacao criada com INTERPOLAÇÃO
  var saudacao2 = 'Olá $primeiroNome $segundoNome, seja muito bem vindo';
  print(saudacao2);

  // Utilizar {} depois de $ quando há uma chamada de método, um bloco de código a ser executado
  print('Olá ${primeiroNome.toLowerCase()}');

  var paciente = 'Alessandro Pino|37|Dev Dart e Flutter|RN';

  // Para separar com 'substring', tem que saber o tamanho exato das strings para separar
  var nomePaciente = paciente.substring(0, 15);
  var idadePaciente = paciente.substring(16, 18);
  print(nomePaciente);
  print(idadePaciente);

  // Ao utilizar 'split', pode-se definir o caractere separador
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  // For in
  for (var dado in dadosPaciente) {
    print(dado);
  }

  // For each - forma 1
  dadosPaciente.forEach((dado) => print(dado));

  // For each - forma 2
  dadosPaciente.forEach(print);

  var pacientes = [
    'Alessandro Pino|37|Dev Dart e Flutter|RN',
    'Ninha Pino|25|Designer|RN'
  ];

  // Para "varrer" a lista acima, pode-se utilizar For each ou For in
  for (paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente[0]);
  }

  // Pegar apenas o sobrenome de cada um deles
  for (paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente[0].split(' ').last);
  }

  // Para imprimir o '$' ao invés de considerar variável, utilizar '\$'
  var preco = 5.90;
  var valor = 'O valor é R\$${preco.toStringAsFixed(2)}';
  print(valor);
}
