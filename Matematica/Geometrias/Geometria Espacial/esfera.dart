import 'dart:io';
import "dart:math";

void calcular_esfera(){
  try{
    print("Informe qual formula querer ver:\n1 ==> Área \n2 ==> Volume\n==> ");
    int formula = int.parse(stdin.readLineSync() as String);

    if(formula == 1){
        print("Informe o raio da esfera: ");
        double raio = double.parse(stdin.readLineSync() as String);

        double area = 4 * (3.14 * (raio * raio));

        print("A área da esfera é ${area.toStringAsFixed(2)}");
    }else if(formula == 2){
        print("Informe o raio da esfera: ");
        double raio = double.parse(stdin.readLineSync() as String);

        double volume = (4.0 / 3.0) * 3.14 * pow(raio, 3);

        print("O volume da esfera é ${volume.toStringAsFixed(2)}");
    }else{
        print("Erro, formula inválida!!");
    }
    }catch(FormatException){
    print("Erro, entrada inválida!");
  }
  
}