import 'dart:io';
import 'dart:math';

void losango(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n3 ==> diagonal\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a diagonal maior do losango: ");
    double diagonal_M = double.parse(stdin.readLineSync() as String);

    print("Informe a diagonal menor do losango: ");
    double diagonal_m = double.parse(stdin.readLineSync() as String);

    double area = (diagonal_M * diagonal_m) / 2.0;

    print("A área do losango é ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o lado do losango: ");
    double lado = double.parse(stdin.readLineSync() as String);

    double perimetro = 4 * lado;

    print("O perimetro do losango ${perimetro.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe a diagonal maior do losango: ");
    double diagonal_M = double.parse(stdin.readLineSync() as String);

    print("Informe a diagonal menor do losango: ");
    double diagonal_m = double.parse(stdin.readLineSync() as String);

    double diagonal = sqrt((pow(diagonal_M / 2.0, 2)) + (pow(diagonal_m / 2.0, 2)));

    print("A diagonal do losango é ${diagonal.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}