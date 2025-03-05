import 'dart:io';

void main(){
  double resultado = 0;

  print("Informe o numero: ");
  resultado = double.parse(stdin.readLineSync() as String);

  while(true){
    print("Informe o operador aretmético: (+ - * /): ");
    String operador = (stdin.readLineSync() as String).toUpperCase();

    if(operador == "OK"){
      print("Comando finalizado!");
      break;
    }

    if(operador != "+" && operador != "-" && operador != "*" && operador != "/"){
      print("Erro, operador invailo!!");
      continue;
    }
    
    print("Informe o numero: ");
    double numero = double.parse(stdin.readLineSync() as String);

    if(operador == "+"){
      resultado += numero;
    }else if(operador == "-"){
      resultado -= numero;
    }else if(operador == "*"){
      resultado *= numero;
    }else if(operador == "/"){
    if (numero == 0) {
        print("Erro: divisão por zero não é permitida.");
        continue;
      }
      resultado /= numero;
    } else {
      print("Operador inválido. Tente novamente.");
      continue;
    }
    print("Parcial: ${resultado}");
  }
  print("Resultado final: ${resultado}");
  
}