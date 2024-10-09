import 'dart:io';

void main() {
  int idade;

  print("Digite a sua idade: ");
  idade = int.parse(stdin.readLineSync()!);

  if (idade <= 0 || idade > 110) {
    print("Idade inválida");
  } else if (idade >= 18) {
    print("Você é maior de idade");
  } else {
    print("Você é menor de idade");
  }

  int numero = 42;
  print(numero % 2 == 0 ? "Par" : "Ímpar");

  String letra;

  print("Digite uma letra: ");
  letra = stdin.readLineSync()!;

  switch (letra) {
    case "a":
      print("Arara");
      break;
    case "b":
      print("Bola");
      break;
    case "c":
      print("Cachorro");
      break;
    default:
      print("Letra ainda sem palavra associada");
  }

int x = 11;
  while (x <= 10) {
    print(x);
    x++;
  }

  int y = 11;
  do {
    print(y);
    y++;
  } while (y <= 10);

  int i;
  for (i = 1; i <= 10; i++) {
    print(i);
  }

List notas = [];
  List nomes = ["Ana", "Bia", "Carlos", "Daniel", "Eduarda"];
  List valores = [10, "Ana", 32, "Carlos"];
  List<String> listaNomes = ["Pedro", "Maria"];

  print(nomes);

  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  listaNomes.forEach(print);

  notas.add(10);
  notas.add(9);
  notas.addAll([8, 7, 6]);
  notas.insert(1, 5);

  int j, valor;
  List num = [];
  for (j = 0; j < 5; j++) {
    print("Digite um valor: ");
    valor = int.parse(stdin.readLineSync()!);
    num.add(valor);
  }

  num.forEach(print);

  var vogais = [];

  vogais.add("a");
  vogais.add("e");
  vogais.addAll(["i", "o", "u"]);
  vogais.remove("e");
  vogais.removeAt(2);

  List numeros = [1, 23, 36, 4, 15];
  numeros.sort();
  print(numeros);
  print(numeros.reversed);
  print(numeros.length);
  print(numeros.contains(30));
  print(numeros.isEmpty);
  print(numeros.isNotEmpty);
}

/*
Particularidades da linguagem Dart:
var e Tipagem Dinâmica: Dart permite tipagem dinâmica com var, o que significa que o tipo é inferido com base na atribuição inicial, mas o tipo da variável não pode mudar. Já com dynamic, o tipo pode mudar durante a execução.

Entrada e Saída: A função stdin.readLineSync() lê a entrada do usuário como string. O operador ! é usado para dizer que o valor não será null.

Listas Heterogêneas: Dart permite criar listas com elementos de tipos diferentes, a menos que uma tipagem específica seja aplicada (como List<String>).

Estrutura Condicional e Operador Ternário: O uso de if-else e do operador ternário (? :) é semelhante a outras linguagens, permitindo verificação de condições de forma concisa.

switch: Similar ao switch de outras linguagens, mas em Dart, case deve sempre terminar com break, exceto quando a execução desejada é "fall-through" para o próximo caso.

Laços (while e do-while): Dart suporta os tradicionais laços de repetição while e do-while, com o primeiro verificando a condição antes da execução e o segundo depois de cada iteração.

Manipulação de Listas: Dart oferece métodos como add(), addAll() e insert() para adicionar e manipular elementos em listas.
*/