import "dart:io";
void main(){
  print("Informe o numero: ");
  double numero = double.parse(stdin.readLineSync() as String);

  print("Informe a operação da tabuada abaixo:\n1 ==> Soma\n2 ==> Subtração\n3 ==> Multiplicação\n4 ==> Divisão\n==> ");
  int operacao = int.parse(stdin.readLineSync() as String);

  for (int i = 1; i < 11; i++)
  if(operacao == 1){
    print("$numero + $i = ${numero + i}");
  }else if(operacao == 2){
    print("$numero - $i = ${numero - i}");
  }else if(operacao == 3){
    print("$numero * $i = ${numero * i}");
  }else if(operacao == 4){
    print("$numero / $i = ${numero / i}");
  }

}