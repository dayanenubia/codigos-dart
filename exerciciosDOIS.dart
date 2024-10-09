import 'dart:io';

// 1–Faça um programa que leia 3 números inteiros e imprima os em ordem crescente.

void main() {
  List<int> numeros = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o número:");
    int num = int.parse(stdin.readLineSync()!);  
    numeros.add(num); 
  }

  numeros.sort();

  print("Os números em ordem crescente são: $numeros");

  //RESULTADO: Os números em ordem crescente são: [2, 5, 8]

  // ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 2 – Faça um programa que leia um número inteiro e imprimir se ele é par e divisível por 3 | ou se o número lido é apenas par | ou apenas divisível por 3 | 
  ou se é um número lido não é divisível por 3 nem par.*/

  print("Digite o número:");
  int numero = int.parse(stdin.readLineSync()!); 

  if(numero % 2 == 0 && numero % 3 == 0){
    print("Este número é par e divisivel por 3!");
  } else if (numero % 2 == 0){
    print("Este número é par!");
  } else if(numero % 3 == 0){
     print("Este número é divisivel por 3!");
  } else {
    print("Ele não é nem par nem divisivel por 3!");
  }

  /*RESULTADO:  Se o usuário digitar 6, o programa imprimirá: Este número é par e divisível por 3!.
                Se o usuário digitar 4, o programa imprimirá: Este número é par!.
                Se o usuário digitar 9, o programa imprimirá: Este número é divisível por 3!.
                Se o usuário digitar 5, o programa imprimirá: Ele não é nem par nem divisível por 3!.
  */

  // ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 3 – A lanchonete XYZ decidiu informatizar a venda dos seus produtos. O Programa deverá solicitar a quantidade de salgados, o tipo do salgado, a quantidade de bebidas e o
  tipo da bebida conforme tabela abaixo. Atenção: o pedido só pode ter um tipo de salgado e um tipo de bebida por vez. No final o algoritmo deverá mostrar o valor total
  do pedido. Se o pedido ultrapassar R$100.00, o sistema deverá dar um desconto de 10% no valor total. */

  List<String> salgados = ["Coxinha", "Joelho", "Pizza"];
  List<double> precosSalgados = [4.50, 5.50, 6.00];

  List<String> bebidas = ["Água", "Refrigerante", "Suco"];
  List<double> precosBebidas = [3.00, 4.50, 5.50];

  print("Digite a quantidade de salgados:");
  int quantidadeSalgados = int.parse(stdin.readLineSync()!);
  
  print("Escolha o tipo de salgado:");
  for (int i = 0; i < salgados.length; i++) {
    print("Código: ${i + 101} - ${salgados[i]}"); 
  }
  int codigoSalgado = int.parse(stdin.readLineSync()!) - 101; 

  print("Digite a quantidade de bebidas:");
  int quantidadeBebidas = int.parse(stdin.readLineSync()!);
  
  print("Escolha o tipo de bebida:");
  for (int i = 0; i < bebidas.length; i++) {
    print("Código: ${i + 201} - ${bebidas[i]}"); 
  }
  int codigoBebida = int.parse(stdin.readLineSync()!) - 201; 

  double totalSalgados = quantidadeSalgados * precosSalgados[codigoSalgado];
  double totalBebidas = quantidadeBebidas * precosBebidas[codigoBebida];

  double valorTotal = totalSalgados + totalBebidas;

  if (valorTotal > 100.00) {
    valorTotal *= 0.90; 
  }

  print("Valor total do pedido: R\$ ${valorTotal.toStringAsFixed(2)}");

  // ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 4 - Uma empresa concederá um aumento de salário aos seus funcionários de acordo com o cargo e conforme a tabela abaixo. Faça um programa de computador que leia o
  salário e o cargo de um funcionário e calcule o novo salário. Se o cargo do funcionário não estiver na tabela, ele deverá, então, receber 40% de aumento. Mostre o salário
  antigo, o novo salário e a diferença entre eles.*/

  List<String> cargos = ["gerente", "engenheiro", "tecnico"];
  List<double> aumentos = [0.10, 0.20, 0.15];

  print("Digite o cargo do funcionário (gerente/engenheiro/tecnico):");
  String cargo = stdin.readLineSync()!.toLowerCase();

  print("Digite o salário atual:");
  double salario = double.parse(stdin.readLineSync()!);

  double novoSalario;
  int indice = cargos.indexOf(cargo); 

  if (indice != -1) {
    novoSalario = salario * (1 + aumentos[indice]);
  } else {
    novoSalario = salario * 1.40; 
  }

  double diferenca = novoSalario - salario;

  print("Salário antigo: R\$ ${salario.toStringAsFixed(2)}");
  print("Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}");
  print("Diferença: R\$ ${diferenca.toStringAsFixed(2)}");

  // ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 5 - Escreva um programa que apresente a série de Fibonacci até o décimo quinto termo. A série de Fibonacci é formada pela sequência: 1,1,2,3,5,8,13,21,34,...etc. esta série se
  caracteriza pela soma de um termo atual com o seu anterior subsequente, para que seja formado o próximo valor da sequência.*/

  int termos = 15;

  int primeiro = 1;
  int segundo = 1;

  print("Série de Fibonacci até o décimo quinto termo:");
  print(primeiro); 
  print(segundo);  

  for (int i = 3; i <= termos; i++) {
    int proximo = primeiro + segundo; 
    print(proximo); 

    primeiro = segundo; 
    segundo = proximo;  
  }

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 6 – Faça um programa que receba dois números inteiros e gere os números inteiros que estão no intervalo compreendido por eles.*/

  print("Digite o primeiro número inteiro:");
  int primeiroNumero = int.parse(stdin.readLineSync()!);

  print("Digite o segundo número inteiro:");
  int segundoNumero = int.parse(stdin.readLineSync()!);

  int inicio = primeiroNumero < segundoNumero ? primeiroNumero : segundoNumero;
  int fim = primeiroNumero > segundoNumero ? primeiroNumero : segundoNumero;

  print("Números inteiros no intervalo entre $inicio e $fim:");

  for (int i = inicio; i <= fim; i++) {
    print(i);
  }


// ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 7 – Faça um programa para imprimir o fatorial de um número inteiro fornecido pelo usuário. O fatorial de um número N (representado por N!) é calculado pela fórmula: N!
  = 1*2*3*...*(N-1)*N.*/

  print("Digite um número inteiro para calcular o fatorial:");
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = 1;

  for (int i = 1; i <= numero; i++) {
    resultado *= i;
  }

  print("O fatorial de $numero é: $resultado");

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 8 – Construa um programa que preencha uma lista com 5 valores inteiros, colocando o valor 1 nas posições pares (considere o valor inicial 0 como par) da lista e 0 nas
  posições ímpares. Apresente a lista.*/

  List<int> lista = List.filled(5, 0); 

  for (int i = 0; i < lista.length; i++) {
    if (i % 2 == 0) {
      lista[i] = 1; 
    } else {
      lista[i] = 0; 
    }
  }

  print("Lista preenchida: $lista");

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  /* 9 – Escreva um programa que solicite ao usuário a entrada de 5 números e armazene estes valores em uma lista. Logo após, exiba o somatório desses números na tela. Após
  exibir a soma, o programa deve mostrar também os números que o usuário digitou, um por linha.*/

  List<double> numeros = [];

  for (int i = 0; i < 5; i++) {
    print("Digite o número ${i + 1}:");
    double numero = double.parse(stdin.readLineSync()!); 
    numeros.add(numero); 
  }

  double soma = 0;
  for (double numero in numeros) {
    soma += numero; 
  }

  print("A soma dos números é: $soma");

  print("Números digitados:");
  for (double numero in numeros) {
    print(numero);
  }

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 /* 10 - Escreva um programa que faça a leitura das notas dos alunos de uma disciplina e armazene-as em uma lista. Considere que há uma nota para cada aluno e que há 10 alunos 
  cursando a disciplina. Em seguida, calcule e imprima a maior nota da sala.*/

  List<double> notas = [];

  for (int i = 0; i < 10; i++) {
    print("Digite a nota do aluno ${i + 1}:");
    double nota = double.parse(stdin.readLineSync()!); 
    notas.add(nota); 
  }

  double maiorNota = notas[0];

  for (double nota in notas) {
    if (nota > maiorNota) {
      maiorNota = nota; 
    }
  }

  print("A maior nota da sala é: $maiorNota");

}




   
