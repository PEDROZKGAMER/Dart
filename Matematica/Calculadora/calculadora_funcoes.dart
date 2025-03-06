import 'dart:io';
import 'dart:math';

void calculadora_normal(){
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
      print("Erro, operador inválido!!");
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

void raiz_quadrada(){
  double resultado = 0;

  print("Informe o numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  if(numero <= 0){
    print("Erro, não pode raiz quadrada de numero negativo e nem por 0");
  }else{
    resultado = sqrt(numero);
    print("A raiz quadrada de $numero é $resultado");
  }
}