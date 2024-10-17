class Cliente {
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);

   void mostrarDados() {
    print('Nome: $nome | Código: $codigo');
  }
}