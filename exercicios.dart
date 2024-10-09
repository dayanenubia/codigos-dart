import 'dart:io';
void main() {
  /*int numero1 = 10;
  int numero2 = 5;
  int resultado = numero1 + numero2;

  print('$numero1 + $numero2 = $resultado');*/

  //Resultado: 10 + 5 = 15

  
  /*print('Digite um número:');
  int numero = int.parse(stdin.readLineSync()!);
  
  int antecessor = numero - 1;
  int sucessor = numero + 1;

  print('Número: $numero');
  print('Antecessor: $antecessor');
  print('Sucessor: $sucessor');*/

  //Resultado: Digite um número: 5 Antecessor: 4 Sucessor: 6

  /*print('Digite o primeiro número:');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número:');
  double numero2 = double.parse(stdin.readLineSync()!);

  double media = (numero1 + numero2) / 2;

  print('A média aritmética entre $numero1 e $numero2 é: $media');

  //Resultado: A média aritmética entre 5.0 e 10.0 é: 7.5*/

  /*int fraldasPorDia = 4;
  double custoPorFralda = 1.10;
  int diasNoMes = 30;

  // Calcula o gasto total no mês
  double gastoMensal = fraldasPorDia * custoPorFralda * diasNoMes;

  // Exibe o valor total gasto no mês
  print('O total gasto com fraldas no mês é: R\$${gastoMensal.toStringAsFixed(2)}');

  //Resultado: O total gasto com fraldas no mês é: R$132.00*/

  /*print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);

  // Calcula a terça parte do número
  double tercaParte = numero / 3;

  // Exibe a terça parte do número
  print('A terça parte de $numero é: ${tercaParte.toStringAsFixed(2)}');

  //Resultado: A terça parte de 9 é: 3.00*/

  print('Digite o seu peso em kg:');
  double peso = double.parse(stdin.readLineSync()!);

  // Calcula a quantidade de água recomendada
  double qtdAgua = peso * 0.040;

  // Exibe a quantidade de água recomendada
  print('Você deve ingerir aproximadamente ${qtdAgua.toStringAsFixed(2)} litros de água por dia.');

  //Resultado: Você deve ingerir aproximadamente 2.80 litros de água por dia. 
}