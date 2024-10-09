import 'dart:io';  // Importa a biblioteca dart:io, necessária para operações de entrada e saída, como ler dados do usuário.
import 'dart:math'; // Importa a biblioteca dart:math, que contém funções matemáticas, como potência e raiz quadrada.

void main(){
  // Função principal do programa, onde a execução começa.
  
  // Comentário de linha - explica uma linha específica.
  /* Comentário de bloco - pode explicar várias linhas ou seções de código. */

  var valor; 
  // `var` permite declarar uma variável sem especificar o tipo explicitamente. O tipo será inferido pelo Dart em tempo de execução.
  
  int soma = 10;  
  // `int` define uma variável de número inteiro.
  
  valor = 20;  
  // Atribui o valor 20 à variável `valor`. O tipo foi inferido como `int` pelo compilador na primeira atribuição.

  double preco = 10.50;  
  // `double` define uma variável de ponto flutuante, usada para números decimais.

  bool teste = true;  
  // `bool` é o tipo para valores booleanos, que podem ser `true` ou `false`.

  String curso = 'Sistemas de informação';  
  // `String` define uma sequência de caracteres (texto).
  
  print(valor);  
  // Imprime o valor da variável `valor`, que atualmente é 20.
  
  valor = "Sistemas de Informação";  
  // O tipo de `valor` mudou para `String` (uma particularidade de Dart: `var` pode mudar o tipo, diferente de tipos estáticos).
  
  print(valor);  
  // Imprime o valor atualizado da variável `valor`, que agora é uma string.

  List valores = [1, "SI", true, 10.50];  
  // Uma lista pode conter valores de diferentes tipos (int, String, bool, double). Em Dart, listas são heterogêneas se o tipo não for especificado.

  print(valores);  
  // Imprime a lista `valores`.

  dynamic valor2 = 10;  
  // `dynamic` permite que a variável mude de tipo dinamicamente ao longo da execução do programa.
  
  print(valor2);  
  // Imprime o valor atual de `valor2` (10).
  
  valor2 = "Sistemas de Informação";  
  // `valor2` muda de `int` para `String` sem erro, graças ao uso de `dynamic`.

  print(curso.length);  
  // Imprime o tamanho (número de caracteres) da string `curso`.

  print(curso.toLowerCase());  
  // Converte o texto `curso` para letras minúsculas.

  print(preco.round());  
  // Arredonda o valor `preco` para o inteiro mais próximo (neste caso, 10).

  String? telefoneFixo;  
  // O símbolo `?` permite que a variável aceite valores `null`, indicando que a variável pode não ser inicializada.

  //const pi = 3.14;  
  // `const` define um valor constante em tempo de compilação. Aqui está comentado, mas seria usado se não dependesse de uma função externa.
  
  final num = 12 * pi;  
  // `final` cria uma constante em tempo de execução, que não pode ser alterada depois de inicializada.

  print("Digite um valor:");
  String nome = stdin.readLineSync()!;  
  // `stdin.readLineSync()` lê uma entrada do usuário. O operador `!` indica que o valor não será `null` aqui (forçando uma não-nullable string).

  print("Meu nome é $nome");  
  // Interpola o valor da variável `nome` na string usando `$`.

  print("Digite sua idade");
  var idade = int.parse(stdin.readLineSync()!);  
  // Converte a entrada do usuário (que é uma string) para um inteiro usando `int.parse()`.

  print("Minha idade é ($idade + 1)");  
  // Exibe a idade inserida pelo usuário. O uso de parênteses ao invés de chaves `${}` dentro da string está incorreto aqui, deveria ser `${idade + 1}`.

  print("Digite sua altura");
  var altura = int.parse(stdin.readLineSync()!);  
  // Lê e converte a altura inserida para um inteiro.

  print("Minha idade é $altura");  
  // Imprime a altura inserida (a variável altura está usando o nome `idade` incorretamente).

  print(pi);  
  // Imprime o valor de pi.

  print(pow(5, 2));  
  // Calcula e imprime 5 elevado à potência 2 (função `pow` da biblioteca `dart:math`).

  print(sqrt(25));  
  // Calcula e imprime a raiz quadrada de 25 (função `sqrt` da biblioteca `dart:math`).

  print(5 + 2);  
  // Soma 5 e 2.

  print(11 / 2);  
  // Divide 11 por 2 (o resultado é um número decimal).

  print(11 % 2);  
  // Calcula o resto da divisão de 11 por 2 (neste caso, 1).

  int a,b;
  a = 5;
  b = 2;

  print("Resultado : ${a == b}");  
  // Compara `a` e `b` para verificar se são iguais (`false`).

  print("Resultado : ${a > b}");  
  // Compara se `a` é maior que `b` (`true`).

  print("Resultado : ${a > b && b < 3}");  
  // Avalia se `a` é maior que `b` **e** se `b` é menor que 3 (`true`).

  int numero = 42;
  print(numero % 2 == 0 ? "Par" : "Impar");  
  // Usa um operador ternário para verificar se o número é par ou ímpar e imprime o resultado.
}
