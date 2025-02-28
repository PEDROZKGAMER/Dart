import 'dart:io';

void circunferencia_circulo(){
  try{
  print("Informe a formula a seguir:\n1 ==> área\n2 ==> perímetro\n3 ==> diametro\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe o raio do circulo: ");
    double raio = double.parse(stdin.readLineSync() as String);

    double area = 3.14 * (raio * raio);

    print("A área do circulo é: ${area.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o raio do circulo: ");
    double raio = double.parse(stdin.readLineSync() as String);

    double perimetro = 2 * 3.14 * raio;

    print("O perimetro do circulo é ${perimetro.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe o raio do circulo: ");
    double raio = double.parse(stdin.readLineSync() as String);

    double diametro = 2 * raio;

    print("O diametro do circulo é ${diametro.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}