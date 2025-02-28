import 'dart:io';

void calcular_piramide(){
  try{
  print("Informe a formula a seguir da piramide:\n1 ==> área lateral\n2 ==> área base\n3 ==> volume\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe a base da piramide: ");
    double base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura da piramide: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area_lateral = (base * altura) / 2;

    print("A área lateral da piramide é ${area_lateral.toStringAsFixed(2)}");
  }else if(formula == 3){
    print("Informe a area da base da piramide: ");
    double area_base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura da piramide: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double volume = (area_base * altura) / 3;

    print("O volume da piramide é ${volume.toStringAsFixed(2)}");
  }else if(formula == 2){
    print("Informe a formula base a seguir:\n1 ==> base quadrada\n2 ==> base retangular\n3 ==> base triangular\n==>:");
    int formula_base = int.parse(stdin.readLineSync() as String);

    if(formula_base == 1){
      print("Informe o lado da base quadrangular da piramide: ");
      double lado = double.parse(stdin.readLineSync() as String);

      double base_quadrada = lado * lado;

      print("A base quadrangular da piramide é ${base_quadrada.toStringAsFixed(2)}");
    }else if(formula_base == 2){
      print("Informe a largura da base retangular da piramide: ");
      double largura = double.parse(stdin.readLineSync() as String);

      print("Informe o comprimento da base retangular da piramide: ");
      double comprimento = double.parse(stdin.readLineSync() as String);

      double base_retangular = largura * comprimento;

      print("A base retangular a piramide é ${base_retangular.toStringAsFixed(2)}");
    }else if(formula_base == 3){
      print("Informe a base triangular da piramide: ");
      double base = double.parse(stdin.readLineSync() as String);

      print("Informe a altura triangular da piramide: ");
      double altura = double.parse(stdin.readLineSync() as String);

      double base_triangular = (base * altura) / 2;

      print("A base triangular da piramide é ${base_triangular.toStringAsFixed(2)}");
    }else{
      print("Erro, formula inválida!");
    }
  }else{
    print("Erro, formular inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}