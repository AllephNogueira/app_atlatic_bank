class VerificarCPF {
  static bool confirmarCPF(String cpf) {
    if (cpf.isEmpty) return false;

    // Remove tudo que não for dígito
    String somenteDigitos = cpf.replaceAll(RegExp(r'\D'), '');

    if (somenteDigitos.length != 11) {
      return false;
    }

    return true;
  }
}
