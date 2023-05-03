// Variáveis de nível superior DEVEM ser inicializadas, senão apresentam erro de compilação.
//String nomeSuperior;

// OU, podem utilizar o operador '?'
String? nomeSuperior;

void main() {
  String nome = '';

  nome.isEmpty;

  // a '?' significa que a variável aceita nulo
  String? nomeNula;

  // Através de uma checagem, é possível acessar o atributo isEmpty
  if (nomeNula != null) {
    nomeNula.isEmpty;
  }

  // Ao atribuir um valor, pode-se acessar o atributo, conforme a linha mais abaixo
  nomeNula = '';

  // Com a '?', não é possível acessar o atributo porque a variável pode ser nula, a não ser que
  // tenha sido atribuído um valor, conforme acima
  nomeNula.isEmpty;

  // Não vai permitir acessar o atributo de variável de nível superior com '?',
  // pois está como opcional
  //nomeSuperior.isEmpty;

  // "Ah, então é só promover para uma variável não-nula!"
  // Conforme abaixo, vê-se que isso não é verdade, pois variáveis de nível superior não
  // conseguem ser promovidas a não-nula

  //if (nomeSuperior != null) {
  //  nomeSuperior.isEmpty;
  //}

  // Uma forma é promover a uma variável local
  var nomeLocal = nomeSuperior;
  if (nomeLocal != null) {
    nomeLocal.isEmpty;
  }

  // OU

  // Atribuir um valor à variável de nível superior e, sabendo com certeza que essa variável
  // é não-nula, utilizar o operador '!'
  nomeSuperior = '';
  nomeSuperior!.isEmpty;
}
