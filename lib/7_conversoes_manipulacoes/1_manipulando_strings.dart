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
}
