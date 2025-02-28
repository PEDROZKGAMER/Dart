import 'dart:io';

void main(){
  print("Informe uma letra: ");
  String letra = stdin.readLineSync() as String;

  letra = letra.toUpperCase();

  if(letra == "A" || letra == "E" || letra == "I" || letra == "O" || letra == "U"){
    print("Essa letra '$letra', é uma vogal!");
  }else{
    print("Essa letra '$letra', é uma consoante!");
  }
}