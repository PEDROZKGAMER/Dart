import "dart:io";
void main(){
  print("Informe seu nome: ");
  String nome = stdin.readLineSync() as String;

  print("Informe quantas notas ");
  int quantidade = int.parse(stdin.readLineSync() as String);

  if(quantidade == 2){
    print("Informe sua 1° nota: ");
    double nota_1 = double.parse(stdin.readLineSync() as String);

    print("Informe sua 2° nota: ");
    double nota_2 = double.parse(stdin.readLineSync() as String);

    double media = (nota_1 + nota_2) / 2;

    if (nota_1 < 0 || nota_1 > 10 || nota_2 < 0 || nota_2 > 10) {
    print("Erro, nota inválida!");
    return;
  }

    if(media >= 7.0){
      print("$nome você foi aprovado, pois sua média foi $media");
    }else if(media > 4 && media < 7){
      print("$nome você ficou na final, pois sua média foi $media");
    }else if(media <= 4){
      print("$nome você foi reprovado, pois sua média foi $media");
    }
  }else if(quantidade == 4){
    print("Informe sua 1° nota: ");
    double nota_1 = double.parse(stdin.readLineSync() as String);

    print("Informe sua 2° nota: ");
    double nota_2 = double.parse(stdin.readLineSync() as String);

    print("Informe sua 3° nota: ");
    double nota_3 = double.parse(stdin.readLineSync() as String);

    print("Informe sua 4° nota: ");
    double nota_4 = double.parse(stdin.readLineSync() as String);

    double media = (nota_1 + nota_2 + nota_3 + nota_4) / 4;

    if (nota_1 < 0 || nota_1 > 10 || nota_2 < 0 || nota_2 > 10 || nota_3 < 0 || nota_3 > 10 || nota_4 < 0 || nota_4 > 10) {
    print("Erro, nota inválida!");
    return;
  }
    if(media >= 7.0){
      print("$nome você foi aprovado, pois sua média foi $media");
    }else if(media > 4 && media < 7){
      print("$nome você ficou na final, pois sua média foi $media");
    }else if(media <= 4){
      print("$nome você foi reprovado, pois sua média foi $media");
    }
  }
}