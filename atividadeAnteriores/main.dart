import 'pessoa.dart';
import 'pai.dart';

void main(){
  Triangulo t1 = Triangulo();
  t1.exibir();
}

class Formas{
  String tipo = "qualquer forma";

  void exibir(){
    print("Imprimindo o tipo de forma: ${this.tipo}");
  }
}

class Triangulo implements Formas{

  @override
  String tipo = "trinangulo";

  @override
  void exibir(){
    print("Imprimindo o tipo de forma: ${this.tipo}");
  }
}