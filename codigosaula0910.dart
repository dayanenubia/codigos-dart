void main(){
  Funcionario f1 = Funcionario("Ana", 30, 3000.00, "anagmail.com"); //Aqui e não vai precisar do bloco de codigo abaixo.
  /*f1.nome = "Ana";
  f1.idade = 30;
  f1.salario = 3000.00;*/

  f1.dadosFuncionario();
  f1.registrarPonto();
}

class Programador extends Funcionario{
  List<String> linguagens;

  Programador (nome, idade, salario, email, this.linguagens) : super (nome, idade, salario, email);

  @override
   void dadosFuncionario(){
    print("Nome: ${this.nome}");
    print("Idade: ${this.idade}");
    print("Salário: ${this.salario}");
    print("Email: ${this.email}");
    print("Linguagens: ${this.linguagens}");
  }

}

class Gerente extends Funcionario{
  double bonus;
  Gerente(nome, idade, salario, email, this.bonus) : super (nome, idade, salario, email);

   @override
   void dadosFuncionario(){
    print("Nome: ${this.nome}");
    print("Idade: ${this.idade}");
    print("Salário: ${this.salario}");
    print("Email: ${this.email}");
    print("Bonus: ${this.bonus}");
  }
}

class Funcionario {
  String nome; 
  int idade;
  double salario;
  String email;

  Funcionario(this.nome, this.idade, this.salario, this.email){  //Se criar o construtor as informações serão passadas
    if(this.nome.isEmpty){
      this.nome = "Nome não informado";
    }
    if(this.email.contains('@') == false){
      this.email = "E-mail inválido";
    }
  }

  void dadosFuncionario(){
    print("Nome: ${this.nome}");
    print("Idade: ${this.idade}");
    print("Salário: ${this.salario}");
    print("Email: ${this.email}");
  }

  void registrarPonto(){
    print("Ponto registrado: ${DateTime.now()}" );
  }
}