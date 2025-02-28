import 'dart:io';

void calcular_cilindro(){
  try{
  print("Informe qual formula querer ver:\n1 ==> Área da base\n2 ==> Área lateral\n3 ==> Área total\n4 ==> Volume\n==> ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe o raio do cilindro: ");
    double raio = double.parse(stdin.readLineSync() as String);

    double area_base = 3.14 * (raio * raio);

    print("A área da base do cilindro é: ${area_base.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe o raio do cilindro: ");
    double raio = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do cilindro: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area_lateral = (2 * (3.14 * (raio * altura)));

    print("A área total do cilindro é ${area_lateral.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe a base maior do cilindro: ");
    double base_M = double.parse(stdin.readLineSync() as String);

    print("Informe a área lateral do cilindro: ");
    double area_lateral = double.parse(stdin.readLineSync() as String);

    double area_total = ((2 * base_M) + area_lateral);

    print("A área total do cilindro é ${area_total.toStringAsFixed(2)}");
  }else if(formula == 4){
    print("Informe a base maior do cilindro: ");
    double base_M = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do cilindro: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double volume = (3.14 * (altura * (base_M * base_M)));

    print("O volume do cilindro é ${volume.toStringAsFixed(2)}");
  }else{
    print("Erro, formula inválida!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}