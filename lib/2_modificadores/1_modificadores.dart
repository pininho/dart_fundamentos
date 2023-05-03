void main(List<String> args) {
  String nomeCompleto = 'Alessandro';
  print(nomeCompleto);
  nomeCompleto = 'Alessandro Pino';
  print(nomeCompleto);

  // Não coloca o 'var'. Apenas o 'final'
  // final var nomeCompletoErradoComVar = 'Alessandro Pino';
  final nomeCompletoFinal = 'Alessandro Muras';

  // Ao tentar alterar o valor de uma variável final, gera um erro.
  //nomeCompletoFinal = 'Chica da Silva';

  // É possível apenas declarar a variável como 'final', e inicializar depois
  // Entretanto, se tentar utilizar antes de inicializar, dará problema
  final nomeCompletoFinal2;
  // Problema! Não aceita utilizar, pois está nullable
  //print(nomeCompletoFinal2);
  nomeCompletoFinal2 = 'Alessandro M O Pino';
  print(nomeCompletoFinal2);

  // O const funciona da mesma forma, é imutável
  const nomeCompletoConst = 'Ale Pino';
  //nomeCompletoConst = 'Teste';

  // O que difere o FINAL do CONST:
  // O final permite atribuir em tempo de execução:
  final nomeCompletoFinal3 = nomeCompleto;
  // Já o CONST, não permite, só em tempo de COMPILAÇÃO
  // Logo, abaixo dará erro:
  //const nomeCompletoConst2 = nomeCompleto;

  // No entanto, a variável CONST aceita ser atribuída de outra variável,
  // se a outra também for CONST:
  const nomeCompletoConst3 = nomeCompletoConst;
  print(nomeCompletoConst3);
}
