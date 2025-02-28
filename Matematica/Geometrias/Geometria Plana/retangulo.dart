import 'dart:io';
import 'dart:math';

void retangulo(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n3 ==> diagonal\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a base do retangulo: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do retangulo: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area = base * altura;

    print("A área do retangulo é ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe a base do retangulo: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do retangulo: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double perimetro = 2 * (base + altura);

    print("O perimetro do retangulo é: ${perimetro.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe a base do retangulo: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do retangulo: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double diagonal = sqrt((base * base) + (altura * altura));

    print("A diagonal do retangulo é: ${diagonal.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}