import 'cliente.dart';
import 'conta.dart';

void main(){
  Cliente c1 = Cliente ("Dayane", 1);
  c1.mostrarDados();

   Conta conta1 = Conta("Banco XYZ", "Corrente", 12345, "Dayane", 1000.0);

  conta1.deposita(250.0);
  conta1.saca(100.0);

  conta1.imprimeExtrato();
}