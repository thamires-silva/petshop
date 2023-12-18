import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Butaohorario extends StatelessWidget {
  final String texto;
  final VoidCallback clicar;

  const Butaohorario({
    super.key,
    required this.clicar,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicar,
      child: Container(
       
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green),
          child: (Text(texto,style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center))),
    );
  }
}
