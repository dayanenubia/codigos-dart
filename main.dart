import 'pessoa.dart';
import 'pai.dart';

void main(){
  Pai p1 = Pai("José", 42, "Professor");
  p1.apresentar();
}

class Formas{
  String tipo = "qualquer forma";

  void exibir(){
    print("Imprimindo o tipo de forma: ${this.tipo}");
  }
}

class Triangulo extends Formas{
  
}