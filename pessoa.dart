abstract class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar(){
    print("Olá, meu nome é $nome e tenho $idade anos.");
  }
}