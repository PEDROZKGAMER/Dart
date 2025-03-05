import 'dart:io';
import 'dart:math';

void main(){
  print("Informe o valor 'A': ");
  double valor_A = double.parse(stdin.readLineSync() as String);

  print("Informe o valor 'B': ");
  double valor_B = double.parse(stdin.readLineSync() as String);

  print("Informe o valor 'C': ");
  double valor_C = double.parse(stdin.readLineSync() as String);

  if(valor_A == 0){
    print("A formula é do 1° grau!!");
  }else{
    double delta = ((valor_B * valor_B) - (4 * valor_A * valor_C));
    print("∆ = $valor_B² - 4 * $valor_A * $valor_C\n∆ = ${valor_B * valor_B} - 4 * ${valor_A * valor_C}\n∆ = ${valor_B * valor_B} - ${4 * valor_A * valor_C}\n∆ = ${delta}");

    if(delta < 0){
      print("O valor de delta tem que ser maior que 0");
    }else{
      double calculo1 = ((-(valor_B)) + sqrt(delta)) /(2 * valor_A);
      double calculo2 = ((-(valor_B)) - sqrt(delta)) /(2 * valor_A);

      print("\n\nX = -($valor_B) ± √$delta / 2 * $valor_A\nX = ${-(valor_B)} ± ${sqrt(delta)} / ${2 * valor_A}\n\nX¹ = ${-(valor_B) + sqrt(delta)} / ${2 * valor_A} X¹ = $calculo1\nX² = ${-(valor_B) - sqrt(delta)} / ${2 * valor_A} X² = $calculo2");

      print("\nX¹ = $calculo1");
      print("X¹ = $calculo2");
    }
  }
}