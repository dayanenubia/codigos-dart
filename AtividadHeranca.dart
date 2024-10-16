void main() {
  Veiculos veiculo = Veiculos("Carro", "Civic", 1500.0, 2.5, 4);
  Barco barco = Barco("Barco", "Lancha", 3000.0, 5.0);

  veiculo.mover();
  veiculo.parar();

  barco.mover();
  barco.parar();
}

class Brinquedo {
  String tipo;
  String modelo;
  double valor;
  double tamanho;

  Brinquedo(this.tipo, this.modelo, this.valor, this.tamanho) {
    if (this.tipo.isEmpty) {
      this.tipo = "Tipo não informado";
    }
    if (this.modelo.isEmpty) {
      this.modelo = "Modelo não informado";
    }
  }

  void mover() {
    print("$tipo $modelo está movendo.");
  }

  void parar() {
    print("$tipo $modelo parou.");
  }
}

class Veiculos extends Brinquedo {
  int quantRodas;

  Veiculos(String tipo, String modelo, double valor, double tamanho, this.quantRodas)
      : super(tipo, modelo, valor, tamanho) {
    if (quantRodas <= 0) {
      print("A quantidade de rodas é inválida!");
    } else {
      print("$tipo tem $quantRodas rodas.");
    }
  }
}

class Barco extends Brinquedo {
  Barco(String tipo, String modelo, double valor, double tamanho)
      : super(tipo, modelo, valor, tamanho);
}
