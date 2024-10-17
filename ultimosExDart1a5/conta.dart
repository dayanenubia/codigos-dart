import "banco.dart";
class Conta extends Banco{
  String tipo;
  int numero;
  String nomeCliente;
  double saldo;

  Conta(String nomeBanco, this.tipo, this.numero, this.nomeCliente, this.saldo) : super(nomeBanco);

  void saca(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$ $valor realizado com sucesso.");
    } else {
      print("Saldo insuficiente.");
    }
  }

  void deposita(double valor) {
    saldo += valor;
    print("Depósito de R\$ $valor realizado com sucesso.");
  }

  void imprimeExtrato() {
    print("Banco: $nome");
    print("Cliente: $nomeCliente");
    print("Tipo de Conta: $tipo");
    print("Saldo da conta: R\$ $saldo");
  }
}
