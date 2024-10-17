import "formaGeometrica.dart";
class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calculoDaArea() {
    return 3.14 * (raio * raio);
  }
}