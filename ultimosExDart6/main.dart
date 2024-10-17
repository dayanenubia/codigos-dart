import "quadrado.dart";
import "circulo.dart";
import "losangulo.dart";
void main() {

  Quadrado quadrado = Quadrado(5.0, 5.0);
  print("Área do quadrado: ${quadrado.calculoDaArea()}"); 
  Circulo circulo = Circulo(4.0);
  print("Área do círculo: ${circulo.calculoDaArea()}"); 

  Losangulo losangulo = Losangulo(6.0, 8.0);
  print("Área do losângulo: ${losangulo.calculoDaArea()}"); 
}