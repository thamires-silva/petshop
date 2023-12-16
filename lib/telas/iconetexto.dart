import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/telas/icons.dart';

class Iconetexto extends StatelessWidget {
  final String texto;
  final VoidCallback clicar;
  final String icon;
  Iconetexto(
      {super.key,
      required this.texto,
      required this.clicar,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicar,
      child: Container(
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Iconssvg(imagem: icon, cor: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text(texto)
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
