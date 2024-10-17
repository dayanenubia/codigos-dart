import 'pessoa.dart';

class Pai extends Pessoa{
  String profissao;

  Pai(String nome, int idade, this.profissao):super(nome, idade);
}