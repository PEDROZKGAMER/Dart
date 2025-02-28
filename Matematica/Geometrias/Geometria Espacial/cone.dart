import 'dart:io';

void calcular_cone(){
  try{
  print("Informe qual formula querer ver:\n1 ==> Área da base\n2 ==> Área lateral\n3 ==> Área total\n4 ==> Volume\n==> ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe o raio do cone: ");
    double raio = double.parse(stdin.readLineSync() as String);

    double area_base = 3.14 * (raio * raio);

    print("A área da base do cone é ${area_base.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o raio do cone: ");
    double raio = double.parse(stdin.readLineSync() as String);

    print("Informe a geratriz do cone: ");
    double geratriz = double.parse(stdin.readLineSync() as String);

    double area_lateral = 3.14 * (raio * geratriz);

    print("A área lateral do cone é ${area_lateral.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe o raio do cone: ");
    double raio = double.parse(stdin.readLineSync() as String);

    print("Informe a geratriz do cone: ");
    double geratriz = double.parse(stdin.readLineSync() as String);

    double area_total = (3.14 * (raio * raio)) + (3.14 * (raio * geratriz));

    print("A área total do cone é ${area_total.toStringAsFixed(2)}");
  }else if(formula == 4){
    print("Informe o raio do cone: ");
    double raio = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do cone: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double volume =(1.0 / 3.0) * (3.14 * (raio * raio) * altura);

    print("O volume do cone é ${volume.toStringAsFixed(2)}");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}