import 'package:flutter/material.dart';
import 'package:petshop/telas/butaohorario.dart';
import 'package:petshop/telas/navibar.dart';
import 'package:table_calendar/table_calendar.dart';


class Telaadicionar extends StatelessWidget {
  Telaadicionar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar: AppBar(
          title: Text('Agendamento'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bella',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.calendar_today, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Escolha um horário'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          //   decoration: BoxDecoration(
                          //       border:
                          //           Border.all(width: 2, color: Colors.green),
                          //       borderRadius: BorderRadius.circular(5)),
                          //   child: Text(
                          //     '9h',
                          //   ),
                          // ),
                          // SizedBox(height: 8,),
                          //  Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          //   decoration: BoxDecoration(
                          //       border:
                          //           Border.all(width: 2, color: Colors.green),
                          //       borderRadius: BorderRadius.circular(5)),
                          //   child: Text(
                          //     '9h',
                          //   ),
                          // ),
                          // SizedBox(height: 8,),
                          //  Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          //   decoration: BoxDecoration(
                          //       border:
                          //           Border.all(width: 2, color: Colors.green),
                          //       borderRadius: BorderRadius.circular(5)),
                          //   child: Text(
                          //     '9h',
                          //   ),
                          // ),
                          Butaohorario(clicar: (){}, texto: '9h'),
                          Butaohorario(clicar: (){}, texto: '9h'),
                           Butaohorario(clicar: (){}, texto: '9h'),
                        ],
                      ),
                      Column(
                        children: [
                           Butaohorario(clicar: (){}, texto: '9h'),
                          Butaohorario(clicar: (){}, texto: '9h'),
                           Butaohorario(clicar: (){}, texto: '9h'),
                           
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
             
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para reservar horário
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text('Reservar Horário', style: TextStyle(fontSize: 18)),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
       bottomNavigationBar: Navibar(telaatual: 2),
      );
  }
}
