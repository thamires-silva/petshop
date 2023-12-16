import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconssvg extends StatelessWidget {
  String imagem;
  double altura;
  Color cor;
 Iconssvg({super.key,required this.imagem, this.altura = 30, required this.cor});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('icons/$imagem.svg', height: altura, color: cor,);
  }
}