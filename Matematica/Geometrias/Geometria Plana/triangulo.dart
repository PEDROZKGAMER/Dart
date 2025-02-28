import 'dart:io';

void triangulo(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perimetro\n3 ==> diagonal\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a base do triangulo: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do triangulo: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area = (base * altura) / 2.0;

    print("A área do triangulo é ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o valor de a: ");
    double valor_a = double.parse(stdin.readLineSync() as String);

    print("Informe o valor de b: ");
    double valor_b = double.parse(stdin.readLineSync() as String);

    print("Informe o valor de c: ");
    double valor_c = double.parse(stdin.readLineSync() as String);

    double perimetro = valor_a + valor_b + valor_c;

    print("O perimetro do triangulo é ${perimetro.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}