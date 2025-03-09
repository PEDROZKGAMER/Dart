import "calculadora_funcoes.dart";
import 'dart:io';

void main(){
  print("Informe as opções abaixo da calculadora:\n1 ==> Raiz Quadrada\n2 ==> Calculadora normal\n3 ==> Exponencial\n4 ==> Potenciação\n5 ==> Cosseno\n6 ==> Targente\n7 ==> Seno\n8 ==> Porcentagem");
  int opcoes = int.parse(stdin.readLineSync() as String);

  if(opcoes == 1){
    raiz_quadrada();
  }else if(opcoes == 2){
    calculadora_normal();
  }else if(opcoes == 3){
    exponencial();
  }else if(opcoes == 4){
    Potenciacao();
  }else if(opcoes == 5){
    cosseno();
  }else if(opcoes == 6){
    tangente();
  }else if(opcoes == 7){
    seno();
  }else if(opcoes == 8){
    Porcentagem();
  }
}