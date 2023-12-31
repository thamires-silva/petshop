import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/telas/imagem.dart';

class Googlebutao extends StatelessWidget {
  final String texto;
  final VoidCallback clicar;
  final String icon;
  final Color cor;

  const Googlebutao({
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
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.green),
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
