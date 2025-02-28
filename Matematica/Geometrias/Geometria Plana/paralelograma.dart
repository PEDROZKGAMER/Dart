import 'dart:io';

void paralelograma(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a base do paralelograma: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do paralelograma: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area = base * altura;

    print("A altura do paralelograma é ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe a base do paralelograma: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe o lado do paralelograma: ");
    double lado = double.parse(stdin.readLineSync() as String);

    double perimetro = 2 * (base + lado);

    print("O perimetro do paralelograma é ${perimetro.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}