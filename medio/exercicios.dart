import "dart:io";
void main(){
  print("By Pedro Xavier\nmatricula: 03346771");
  print("Informe a questão que queira visualizar 1, 2, 3, 4, 5, 6: ");
  int questao = int.parse(stdin.readLineSync() as String);

  if(questao == 1){
    print("Informe um numero: ");
    int numero = int.parse(stdin.readLineSync() as String);

    int elevado_quadrado = numero * numero;

    print("O numero elevado ao quadrado: $elevado_quadrado");
  }else if(questao == 2){
    print("Informe seu nome: ");
    String nome = stdin.readLineSync() as String;

    print("Informe seu sobrenome: ");
    String sobrenome = stdin.readLineSync() as String;

    String nomeCompleto = "${nome ?? ''} ${sobrenome ?? ''}";
    print("Nome completo: $nomeCompleto");
  }else if(questao == 3){
    print("Quantos km percorreu no carro?: ");
    double km_percorrido = double.parse(stdin.readLineSync() as String);

    print("A quantidade de dias que o carro foi alugado: ");
    int dias_alugado = int.parse(stdin.readLineSync() as String);

    double diaria = (dias_alugado * 60) + (km_percorrido * 1.15);

    print("O resultado foi $diaria");
  }else if(questao == 4){
    print("Qual a quantidade de dias que você fumou: ");
    int dias_fumado = int.parse(stdin.readLineSync() as String);

    print("Quantos anos você fuma?: ");
    int anos_fumados = int.parse(stdin.readLineSync() as String);

    int tempo_fumado = (dias_fumado * anos_fumados) * 365;

    int minutos_fumados = tempo_fumado * 10;

    double numero_total = minutos_fumados / 1440;

    print("O fumante perderá aproximadamente ${numero_total.toStringAsFixed(0)} dias de vida devido ao fumo");
  }else if(questao == 5){
    print("Qual o valor do imovel você deseja financiar?: ");
    double valor_imovel = double.parse(stdin.readLineSync() as String);

    print("Qual é o seu salario?: ");
    double salario_usuario = double.parse(stdin.readLineSync() as String);

    print("Quantos meses você pretende ficar?: ");
    int quantidade_meses = int.parse(stdin.readLineSync() as String);

    double prestacao = valor_imovel / quantidade_meses;

    double salario_calculo = salario_usuario * 0.3;

    print("Valor da prestação: R\$ ${prestacao.toStringAsFixed(2)}");
  print("Limite de 30% do salário: R\$ ${salario_calculo.toStringAsFixed(2)}");

    if(prestacao <= salario_calculo){
      print("Aprovado");
    }else{
      print("Reprovado");
    }
  }else if(questao == 6){
    int altura_chico = 150;
    int altura_juca = 110;
    int anos = 0;
    int maxanos = 100;

    for (int i = 0; i < maxanos; i++) {
    altura_chico += 2;
    altura_juca += 5;
    anos++;

    if (altura_juca > altura_chico) {
      break;
    }
  }

    if (altura_juca > altura_chico) {
    print("Serão necessários $anos anos para que Juca seja maior que Chico.");
  } else {
    print("Não foi possível determinar em quantos anos Juca será maior que Chico.");
  }
  }
}