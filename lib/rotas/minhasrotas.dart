import 'package:flutter/material.dart';
import 'package:petshop/Telainicial.dart';
import 'package:petshop/rotas/Rotas.dart';
import 'package:petshop/telas/Telaadicionar.dart';
import 'package:petshop/telas/Telaperfil.dart';
import 'package:petshop/telas/telapets.dart';

class Minhasrotas {
  final routes = <String, WidgetBuilder>{
    Rotas.Telainicial: (context) =>  Telainicial(),
    Rotas.Telapets: (context) => Telapets(),
    Rotas.Telaadicionar: (context) => Telaadicionar(),
    Rotas.Telaperfil: (context) =>  Telaperfil(),
   
  };
}