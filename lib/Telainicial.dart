import 'package:flutter/material.dart';
import 'package:petshop/telas/navibar.dart';
import 'package:table_calendar/table_calendar.dart';


class Telainicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFF5CB15A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Olá, Pixel Posso',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("imagens/coco.png"),
                        radius: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.person_pin_rounded),
                    Text('Meu perfil'),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0x33A5A5A5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "imagens/mulhercachorro.png",
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Thamires'),
                                Text('thamires@gmail.com'),
                                Text(
                                  'Deu trabalho isso sim',
                                ),
                                Text('veja meu perfil')
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0x33A5A5A5),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Meus Pets',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset("imagens/cachorro1.png",
                                  width: 80, height: 80),
                              Text('Bella'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("imagens/cachorro2.png",
                                  width: 80, height: 80),
                              Text('Roudy'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('imagens/branquinho.png',
                                  width: 80, height: 80),
                              Text('Furry'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    Text(
                      'Consultas Agendadas',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(2023, 1, 1),
                      lastDay: DateTime.utc(2040, 12, 31),
                    ),
                  ],
                ),
              ]),
        ),
      ),
      bottomNavigationBar: Navibar(telaatual: 0)
    );
  }
}
