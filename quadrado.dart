import "formaGeometrica.dart";
class Quadrado extends FormaGeometrica {
  double comprimento;
  double altura;

  Quadrado(this.comprimento, this.altura);

  @override
  double calculoDaArea() {
    return comprimento * altura;
  }
}