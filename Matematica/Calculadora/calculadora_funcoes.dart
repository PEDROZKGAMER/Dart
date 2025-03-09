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

void exponencial(){
  double resultado = 0;

  print("Informe o numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  resultado = exp(numero);

  print("$resultado");
}

void Potenciacao(){
  double resultado = 0;

  print("Informe qual a potencia: ");
  double potencia = double.parse(stdin.readLineSync() as String);

  print("Informe valor numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  resultado = pow(numero, potencia).toDouble();

  print("O numero $numero elevado a $potencia ==> $resultado");
}

void cosseno(){
  double resultado = 0;

  print("Informe valor numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  resultado = cos(numero);

  print("O cosseno do numero $numero, é ==> $resultado");
}

void tangente(){
  double resultado = 0;

  print("Informe valor numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  resultado = tan(numero);

  print("A targente do numero $numero, é ==> $resultado");
}

void seno(){
  double resultado = 0;

  print("Informe valor numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  resultado = sin(numero);

  print("O seno do número $numero, é ==> $resultado");
}

void Porcentagem(){
  double resultado = 0;

  print("Informe valor numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  print("Informe valor da porcentagem: ");
  double porcentagem = double.parse(stdin.readLineSync() as String);

  resultado = (numero * porcentagem) / 100;

  print("A porcentagem do valor $numero, é ==> ${resultado.toStringAsFixed(2)}");
  
}