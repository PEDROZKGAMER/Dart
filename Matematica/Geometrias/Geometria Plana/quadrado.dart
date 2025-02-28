import 'dart:io';

void quadrado(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n3 ==> diagonal\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe o lado do quadrado: ");
    double lado = double.parse(stdin.readLineSync() as String);

    double area = lado * lado;

    print("A área do quadrado é ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o lado do quadrado: ");
    double lado = double.parse(stdin.readLineSync() as String);

    double perimetro = 4 * lado;

    print("O perimetro do quadrado é: ${perimetro.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Em manuteção!");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}