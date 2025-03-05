import "dart:io";
void main(){
  try{
  print("By Pedro Xavier\nmatricula: 03346771");
  print("Informe qual lista de exercicios você queira ver: (1 , 2): ");
  int lista_exercicio = int.parse(stdin.readLineSync() as String);

  if(lista_exercicio == 1){
  print("Lista de exercicios 1");
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
  }else if(lista_exercicio == 2){
    print("Lista de exercicios 2");

    print("Informe a questão que queira visualizar 1, 2, 3, 4: ");
    int questao_lista2 = int.parse(stdin.readLineSync() as String);

    if(questao_lista2 == 1){
      print("Informe o 1° valor: ");
      int valor_1= int.parse(stdin.readLineSync() as String);

      print("Informe o 2° valor: ");
      int valor_2 = int.parse(stdin.readLineSync() as String);

      if(valor_1 > valor_2){
        print("O valor 1 '$valor_1', é maior");
      }else if(valor_2 > valor_1){
        print("O valor 2 '$valor_2', é maior");
      }else{
        print("Os valores sao iguais!");
      }
    }else if(questao_lista2 == 2){
      int ganhos_partidas = 0;

      for(int i = 0; i < 11; i++){
        print("Informe (V ==> Vitórias, E ==> Empates, D ==> Derrotas): ");
        String partida = (stdin.readLineSync() as String).toUpperCase();

        if(partida == "V"){
          ganhos_partidas += 10;
        }else if(partida == "E"){
          ganhos_partidas += 5;
        }else if(partida == "D"){
          ganhos_partidas -= 2;
        }
      }
      if(ganhos_partidas > 60){
        print("Subiu de patente! Pois a sua pontuação foi de $ganhos_partidas pontos");
      }else if(ganhos_partidas >= 21 && ganhos_partidas <= 59){
        print("Permaneceu na patente! Pois a sua pontuação foi de $ganhos_partidas pontos");
      }else if(ganhos_partidas < 21){
        print("Caiu de patente! Pois a sua pontuação foi de $ganhos_partidas pontos");
      }
    }else if(questao_lista2 == 3){
      List<String> perguntas = ["Telefonou para a vítima?",
                                        "Esteve no local do crime?",
                                        "Mora perto da vítima?",
                                        "Tinha dívidas com a vítima?",
                                        "Já trabalhou com a vítima?"];
      int perguntas_positivas = 0;

      for(String pergunta in perguntas){
        print("$pergunta (S ou N): ");
        String resposta = (stdin.readLineSync() as String).toUpperCase();

        if(resposta != "S" && resposta != "N"){
          print("Erro, entrada inválida!");
          return;
        }else{

        if(resposta == "S"){
          perguntas_positivas += 1;
        }
        }
      }
      if(perguntas_positivas == 2){
        print("Suspeito!");
      }else if(perguntas_positivas >= 3 && perguntas_positivas <= 4){
        print("Cumplice!");
      }else if(perguntas_positivas == 5){
        print("Assassino!");
      }else{
        print("Inocente!");
      }
    }else if(questao_lista2 == 4){
      List<double> notas = [];
      double soma_notas = 0;

      while(true){
        print("Informe a nota: ");
        double nota = double.parse(stdin.readLineSync() as String);

        if(nota < 0){
          print("Comando encerrado!");
          break;
        }else{
          soma_notas += nota;
        }
        notas.add(nota);
        }
        if(notas.isNotEmpty){
        double media = soma_notas / notas.length;
        List<double> acima_media = notas.where((n) => n > media).toList();
        print("Foram lidas ${notas.length} notas");
        print("As notas em ordem em que foram lidas: $notas");
        print("As notas em ordem inversa: ${notas.reversed.toList()}");
        print("A soma de todas as notas: ${soma_notas.toStringAsFixed(2)}");
        print("A média de notas foram: ${media.toStringAsFixed(2)}");
        print("Notas acima da média foram: $acima_media");
        }else{
          print("Nenhuma nota válida foi inserida...");
        }
    }
  }
  }catch(FormatException){
    print("Erro, entrada inválida!!");
  }
  }