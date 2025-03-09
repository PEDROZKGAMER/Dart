import 'dart:io';

void main(){
  List<int> numeros = [];

  while(true){
    print("Informe um numero: ");
    int numero = int.parse(stdin.readLineSync() as String);

    if(numero == "-6"){
      print("comndo encerrado!");
    }
    int soma = 0;

    soma += numero;

    print("$soma");
  }
}