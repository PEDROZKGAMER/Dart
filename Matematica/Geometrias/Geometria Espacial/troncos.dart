import 'dart:io';
import 'dart:math';
void calcular_troncos(){
  try{
  print("Informe a formula a seguir:\n1 ==> tronco da piramide\n2 ==> tronco do cone\n3 ==> tronco do prisma\n4 ==> tronco do cilindro\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a altura do tronco da piramide: ");
    double altura = double.parse(stdin.readLineSync() as String);

    print("Informe a base maior do tronco da piramide: ");
    double base_M = double.parse(stdin.readLineSync() as String);
    
    print("Informe a base menor do tronco da piramide: ");
    double base_m = double.parse(stdin.readLineSync() as String);

    double tronco_piramide = (altura / 3) * (base_M + base_m + sqrt((base_M * base_m)));

    print("O tronco da piramide é ${tronco_piramide.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe a altura do tronco da piramide: ");
    double altura = double.parse(stdin.readLineSync() as String);

    print("Informe o raio maior do tronco da piramide: ");
    double raio_M = double.parse(stdin.readLineSync() as String);
    
    print("Informe o raio menor do tronco da piramide: ");
    double raio_m = double.parse(stdin.readLineSync() as String);

    double tronco_cone = (3.14 * altura / 3) * (pow(raio_M, 2) + (raio_M * raio_m) + pow(raio_m, 2));

    print("O tronco do cone é ${tronco_cone}");
  }else if(formula == 3){
    print("Informe a altura do tronco do prisma: ");
    double altura = double.parse(stdin.readLineSync() as String);

    print("Informe a base maior do tronco do prisma: ");
    double base_M = double.parse(stdin.readLineSync() as String);
    
    print("Informe a base menor do tronco do prisma: ");
    double base_m = double.parse(stdin.readLineSync() as String);

    double tronco_prisma = ((altura * base_M) + base_m) / 2.0;

    print("O tronco do prisma é ${tronco_prisma.toStringAsFixed(2)}");
  }else if(formula == 4){
    print("Informe a altura do tronco do cilindro: ");
    double altura = double.parse(stdin.readLineSync() as String);

    print("Informe o raio maior do tronco do cilindro: ");
    double raio_M = double.parse(stdin.readLineSync() as String);
    
    print("Informe o raio menor do tronco do cilindro: ");
    double raio_m = double.parse(stdin.readLineSync() as String);

    double tronco_cilindro = (3.14 * altura) * ((raio_M * raio_M) + (raio_m * raio_m));

    print("O tronco do cilindro é ${tronco_cilindro.toStringAsFixed(2)}");
  }else{
    print("Erro, formula tronco inválido!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }

}