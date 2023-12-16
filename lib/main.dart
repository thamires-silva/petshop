import "package:flutter/material.dart";
import 'package:get/get.dart';
import "package:petshop/meuperfil.dart";
import "package:petshop/telas/agendamento.dart";
import "package:petshop/telas/cadastro.dart";
import "package:petshop/telas/carregando.dart";
import "package:petshop/telas/login.dart";
import "package:petshop/telas/meuspet.dart";
import "package:petshop/telas/pixelposse.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFF5BB15A)),
            useMaterial3: true,
            fontFamily: 'fredoka'),
        home: agendamento());
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          'imagens/lindinho.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 350,
          padding: EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 20),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Bem-vindo(a)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'Agende consultas para seu pet em poucos cliques',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 100)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF5BB15A))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadastro()));
                      },
                      child: Text(
                        'Crie sua conta',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Já possui uma conta? '),
                    InkWell(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));

                      },
                      child: Text('login',style: TextStyle(color: Color(0xff5CB15A)),),
                    )
                  ],
                ),
                  ],
                )
              ]),
        )
        ],
    ));
  }
}
