import 'dart:io';

void main(){
  print("Informe o numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  if(numero >= 0){
    print("O numero é positivo '$numero'");
  }else{
    print("O numero é negativo '$numero'");
  }
}