import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/telas/imagem.dart';

class Botaosair extends StatelessWidget {
  final String texto;
  final VoidCallback clicar;
  final String icon;
  final Color cor;

  const Botaosair({
    super.key,
    required this.clicar,
    required this.texto,
    required this.icon,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicar,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Imagem(imagem: icon ),
            Text(texto,
                style: TextStyle(color: cor, fontSize: 16),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
