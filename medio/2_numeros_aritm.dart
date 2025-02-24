import "dart:io";
void main(){
  print("informe a operação aritmética abaixo:\n+ = soma\n- = subtração\n* = multiplicação\n/ = divisão");
  String operacao = stdin.readLineSync() as String;
  
  print("Informe o 1° numero: ");
  double numero_1 = double.parse(stdin.readLineSync() as String);

  print("Informe o 2° numero: ");
  double numero_2 = double.parse(stdin.readLineSync() as String);

  if(operacao == "+"){
    double soma = numero_1 + numero_2;
    print("$numero_1 + $numero_2 = $soma");
  }else if(operacao == "-"){
    double subtracao = numero_1 - numero_2;
    print("$numero_1 - $numero_2 = $subtracao");
  }else if(operacao == "*"){
    double multiplicacao = numero_1 * numero_2;
    print("$numero_1 * $numero_2 = $multiplicacao");
  }else if(operacao == "/"){
    double divisao = numero_1 / numero_2;
    print("$numero_1 / $numero_2 = $divisao");
  }else{
    print("Erro, operação inválida!!");
  }

  
}