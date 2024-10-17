import "formaGeometrica.dart";
class Losangulo extends FormaGeometrica {
  double diagonalMaior;
  double diagonalMenor;

  Losangulo(this.diagonalMaior, this.diagonalMenor);

  @override
  double calculoDaArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }
}