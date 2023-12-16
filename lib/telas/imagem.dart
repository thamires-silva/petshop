import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Imagem extends StatelessWidget {
  String imagem;
  double altura;
 Imagem({super.key,required this.imagem, this.altura = 30});

  @override
  Widget build(BuildContext context) {
    return Image.asset('imagens/$imagem.png', height: altura,);
  }
}