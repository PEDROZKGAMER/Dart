import 'dart:io';

//Geometria Espacial
import 'Geometria Espacial/cilindro.dart';
import 'Geometria Espacial/cone.dart';
import 'Geometria Espacial/esfera.dart';
import 'Geometria Espacial/piramide.dart';
import 'Geometria Espacial/prisma.dart';
import 'Geometria Espacial/troncos.dart';

//Geometria Plana
import 'Geometria Plana/circunfe_circulo.dart';
import 'Geometria Plana/losango.dart';
import 'Geometria Plana/paralelograma.dart';
import 'Geometria Plana/quadrado.dart';
import 'Geometria Plana/retangulo.dart';
import 'Geometria Plana/trapezio.dart';
import 'Geometria Plana/triangulo.dart';

void main(){
  try{
  print("Informe qual geometria você quer estudar?\n1 ==> Geometria Espacial\n2 ==> Geometria Plana: ");
  int escolha_geometria = int.parse(stdin.readLineSync() as String);

  if(escolha_geometria == 1){
  print('Qual polígono você quer estudar?\n1 ==> Cilindro\n2 ==> Cone\n3 ==> Esfera\n4 ==> Piramide\n5 ==> Prisma\n6 ==> Troncos');
  int escolha_espacial = int.parse(stdin.readLineSync() as String);

  if(escolha_espacial == 1){
    calcular_cilindro();
  }else if(escolha_espacial == 2){
    calcular_cone();
  }else if(escolha_espacial == 3){
    calcular_esfera();
  }else if(escolha_espacial == 4){
    calcular_piramide();
  }else if(escolha_espacial == 5){
    calcular_prisma();
  }else if(escolha_espacial == 6){
    calcular_troncos();
  }else{
    print("Erro, poligono inválido!!");
  }
  }else if(escolha_geometria == 2){
    print('Qual polígono você quer estudar?\n1 ==> Circunferencia do circulo\n2 ==> Losango\n3 ==> Paralelograma\n4 ==> Quadrado\n5 ==> Retangulo\n6 ==> Trapézio\n7 ==> Triangulo: ');
    int escolha_plana = int.parse(stdin.readLineSync() as String);

    if(escolha_plana == 1){
      circunferencia_circulo();
    }else if(escolha_plana == 2){
      losango();
    }else if(escolha_plana == 3){
      paralelograma();
    }else if(escolha_plana == 4){
      quadrado();
    }else if(escolha_plana == 5){
      retangulo();
    }else if(escolha_plana == 6){
      trapezio();
    }else if(escolha_plana == 7){
      triangulo();
    }else{
      print("Erro, poligono inválido!!");
    }
  }
  }catch(FormatException){
    print("Erro, entrada inválida!!");
  }
}