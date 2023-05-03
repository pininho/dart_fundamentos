void main() {
  // Testando abaixo os comentários utilizando marcações do plugin 'Better Comments' (de Aaron Bond)
  // * Teste
  // ! Teste2
  // ? Teste3
  // TODO: Teste4
  //// Teste5

  // ? = Nullable (Aceita nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  // Não aceita nulo
  List<String> nomes = [];

  // OU
  var nomes2 = <String>[];

  // Aceita nulo
  List<String>? nomesNulos = null;

  // OU
  List<String>? nomesNulos2;

  //! Da forma que está declarada abaixo, não aceita nomes internos nulos
  //var nomesInternosNaoAceitaNulos = <String>[null];

  // Para aceitar nulos, precisa colocar o operador '?' na declaração do TIPO DA LISTA
  List<String?> nomesInternosAceitaNulos = ['Alessandro', null];

  //! Observe que a variável da Lista NÃO ACEITA NULO! Da forma declarada, aceita INTERNAMENTE.
  //List<String?> nomesInternosAceitaNulos2 = null;

  //* Para aceitar NULO tanto na variável quanto nos elementos da Lista, tem que por os dois
  //* operadores '?'
  List<String?>? nomesAceitaNulos = null;

  //! Para o caso acima da variável 'nomesInternosAceitaNulos', pode-se declarar omitindo o tipo:
  var nomesInternosAceitaNulos2 = <String?>['Alessandro', null];
  //! Mas, para o caso da variável 'nomesAceitaNulos', que tem os dois '?', tem que ser
  //! declarando o tipo mesmo:
  List<String?>? nomesAceitaNulos2 = null;
}
