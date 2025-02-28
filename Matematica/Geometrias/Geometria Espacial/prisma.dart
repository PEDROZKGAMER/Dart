import 'dart:io';
import 'dart:math';

void calcular_prisma(){
  try{
  print("Informe a formula a seguir da piramide:\n1 ==> área\n2 ==> área total\n3 ==> área base\n4 ==> volume\n==>: ");
  int formula = int.parse(stdin.readLineSync() as String);

  if(formula == 1){
    print("Informe o lado do prisma: ");
    double lado = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do prisma: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double area = lado * altura;

    print("A área do prisma é $area"); 
  }else if(formula == 2){
    print("Informe a área da base do prisma: ");
    double area_base = double.parse(stdin.readLineSync() as String);

    print("Informe a área lateral do prisma: ");
    double area_lateral = double.parse(stdin.readLineSync() as String);

    double area_total = area_base + (2 * area_lateral);

    print("A área total do prisma é $area_total");
  }else if(formula == 4){
    print("Informe a área da base do prisma: ");
    double area_base = double.parse(stdin.readLineSync() as String);

    print("Informe a altura do prisma: ");
    double altura = double.parse(stdin.readLineSync() as String);

    double volume = area_base * altura;

    print("O volume do prisma é $volume");
  }else if(formula == 3){
    print("Informe a formula da base a seguir:\nBT ==> base triangular\nBQ ==> base quadrado\nBR ==> base retangular\nBHR ==> base hexagonal regular\nBC ==> base circular\n==>: ");
    int formula_base = int.parse(stdin.readLineSync() as String);

    if(formula_base == 1){
      print("informe a base do prisma: ");
      double base = double.parse(stdin.readLineSync() as String);

      print("Informe a altura da base do prisma: ");
      double altura = double.parse(stdin.readLineSync() as String);

      double base_triangular = (base * altura) / 2;

      print("A base triangular do prisma é $base_triangular");
    }else if(formula_base == 2){
      print("Informe o lado do prisma: ");
      double lado = double.parse(stdin.readLineSync() as String);

      double base_quadrado = lado * lado;

      print("A base quadrangular do prisma é: ${base_quadrado.toStringAsFixed(2)}");
    }else if(formula_base == 3){
      print("Informe a largura da base retangular do prisma: ");
      double largura = double.parse(stdin.readLineSync() as String);

      print("Informe o comprimento da base retangular do prisma: ");
      double comprimento = double.parse(stdin.readLineSync() as String);

      double base_retangular = largura * comprimento;

      print("A base retangular do prisma é ${base_retangular.toStringAsFixed(2)}");
    }else if(formula_base == 4){
      print("Informe a base circular do prisma: ");
      double base = double.parse(stdin.readLineSync() as String);

      double base_circular = 3.14 * (base * base);

      print("A base circular do prisma é ${base_circular.toStringAsFixed(2)}");
    }else if(formula_base == 5){
      print("Informe o lado da base hexagonal do prisma: ");
      double lado = double.parse(stdin.readLineSync() as String);

      double base_hexagonal = (((lado * lado) * 3) * sqrt(3)) / 2.0;

      print("A base hexagonal do prisma é ${base_hexagonal.toStringAsFixed(2)}");
    }else{
      print("Erro, base inválida!!");
    }
  }else{
    print("Formula inválida!!");
  }
  }catch(FormatException){
    print("Erro, entrada inválida!");
  }
}