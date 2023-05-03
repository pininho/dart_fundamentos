String? nome;

void main() {
  nome = 'Alessandro';
  String nomeCompleto = ((nome != null) ? nome! + ' Pino' : 'Pino');
  print(nomeCompleto);

  var nomeLocal = nome;
  if (nomeLocal == null) {
    nomeLocal = '';
  }

  var nomeCompleto2 = nomeLocal + ' Pino';
  print(nomeCompleto2);
}
