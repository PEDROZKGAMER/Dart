import 'dart:io';

void trapezio(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n3 ==> diagonal\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a base maior do trapézio: ");
    double base_M = double.parse(stdin.readLineSync() as String);

    print("Informe a base menor do trapézio: ");
    double base_m = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do trapézio: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area = ((base_M + base_m) * altura) / 2.0;

    print("A área do trapézio é: ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe a base maior do trapézio: ");
    double base_M = double.parse(stdin.readLineSync() as String);

    print("Informe a base menor do trapézio: ");
    double base_m = double.parse(stdin.readLineSync() as String);

    print("Informe o lado 1 do trapézio: ");
    double lado_1 = double.parse(stdin.readLineSync() as String);

    print("Informe a lado 2 do trapézio: ");
    double lado_2 = double.parse(stdin.readLineSync() as String);

    double perimetro = base_M + base_m + lado_1 + lado_2;

    print("O perimetro do trapézio é ${perimetro.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe a base maior do trapézio: ");
    double base_M = double.parse(stdin.readLineSync() as String);

    print("Informe a base menor do trapézio: ");
    double base_m = double.parse(stdin.readLineSync() as String);

    double diagonal = (base_M * base_m) / 2.0;

    print("A diagonal do trapézio é: ${diagonal.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}