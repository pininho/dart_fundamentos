String? nome;

void main() {
  var sobrenome = ' Pino';

  nome = 'Alessandro';

  //String nomeCompleto = ((nome != null) ? nome! + ' Pino' : 'Pino');
  var nomeCompleto = (nome ?? '') + sobrenome;
  print(nomeCompleto);

  String? nomeCompleto2;

  print(nomeCompleto2 ?? 'Pininho');
}
