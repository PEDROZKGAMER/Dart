import 'dart:io';

void main(){
  try{
    List<String> Homens = [];
    List<String> Mulheres = [];
    List<double> alturas = [];

    int qua_masculino = 0;
    int qua_feminino = 0;
    double soma_altura = 0;

    while(true){
      print("Informe seu sexo (M/F), (ou informe um 'OK' para encerrar o comando!): ");
      String sexo = (stdin.readLineSync() as String).toUpperCase();

      if(sexo == "OK"){
        print("Comando encerrado!");
        break;
      }

      if(sexo == "M"){
        Homens.add(sexo);
        qua_masculino += 1;
      }else if(sexo == "F"){
        Mulheres.add(sexo);
        qua_feminino += 1;
      }else{
        print("Sexo inválido!, por favor, inserir o sexo certo (M/F)");
        continue;
      }

      print("Informe a altura dessa pessoa: ");
      double altura = double.parse(stdin.readLineSync() as String);

      if(altura >= 2.00){
        print("Erro, altura inválida!");
      }else{
      alturas.add(altura);
      soma_altura += altura;
      }
    }
    
    int soma_sexos = qua_masculino + qua_feminino;
    double media = soma_altura / soma_sexos;

    print("A lista de homens informado: $Homens");
    print("A lista de mulheres informado: $Mulheres");
    print("A quantidade de sexos foi: $soma_sexos");
    print("A soma de alturas foi ${soma_altura}");
    print("A média de sexos e alturas é: ${media.toStringAsFixed(2)}");
  }catch(FormartExeption){
    print("Entrada inválida!!");
  }
}