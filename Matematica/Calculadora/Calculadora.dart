import "calculadora_funcoes.dart";
import 'dart:io';

void main(){
  print("Informe as opções abaixo:\n1 ==> Raiz Quadrada\n2 ==> Calculadora normal");
  int opcoes = int.parse(stdin.readLineSync() as String);

  if(opcoes == 1){
    raiz_quadrada();
  }else if(opcoes == 2){
    calculadora_normal();
  }
}