import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/telas/botaosair.dart';
import 'package:petshop/telas/botaogoogle.dart';
import 'package:petshop/telas/iconetexto.dart';
import 'package:petshop/telas/navibar.dart';

class Telaperfil extends StatelessWidget {
  const Telaperfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          const Icon(Icons.arrow_back, color: Colors.white),
          const Spacer(),
          Text("Pixel Posse", style: TextStyle(color: Colors.white)),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'imagens/cachorro1.png',
                height: 50.0,
                width: 50.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'imagens/mulhersozinha.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pixel Posse"),
                        Botaosair(
                            clicar: () {},
                            texto: 'Sair',
                            icon: 'Group 206',
                            cor: Colors.black)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Claudia vasconcelos')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 10,
                        ),
                        Text('claudiavc@gmail.com')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Column(
                children: [
                  Iconetexto(
                    clicar: () {},
                    texto: 'Meu Perfil',
                    icon: "person",
                  ),
                  Iconetexto(
                    clicar: () {},
                    texto: 'Horarios marcados',
                    icon: "calendario",
                  ),
                  Iconetexto(
                    clicar: () {},
                    texto: 'Adicionar pet',
                    icon: "paw",
                  ),
                  Iconetexto(
                    clicar: () {},
                    texto: 'Agendar banhos',
                    icon: "agenda",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navibar(telaatual: 3),
    );
  }
}
