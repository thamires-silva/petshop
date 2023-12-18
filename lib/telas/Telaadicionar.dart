import 'package:flutter/material.dart';
import 'package:petshop/telas/butaohorario.dart';
import 'package:petshop/telas/navibar.dart';
import 'package:table_calendar/table_calendar.dart';

class Telaadicionar extends StatelessWidget {
  Telaadicionar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Bella'),
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
              ],
            ),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2023, 1, 1),
              lastDay: DateTime.utc(2040, 12, 31),
              calendarFormat: CalendarFormat.month,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(fontSize: 14),
                weekendStyle: TextStyle(fontSize: 14),
              ),
              rowHeight: 40, 
            ),
           
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Escolha um horário',style: TextStyle(fontWeight: FontWeight.w900),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                      
                        Butaohorario(clicar: () {}, texto: '9h'),
                        Butaohorario(clicar: () {}, texto: '9h'),
                        Butaohorario(clicar: () {}, texto: '9h'),
                      ],
                    ),
                    Column(
                      children: [
                        Butaohorario(clicar: () {}, texto: '9h'),
                        Butaohorario(clicar: () {}, texto: '9h'),
                        Butaohorario(clicar: () {}, texto: '9h'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Reservar Horário', style: TextStyle(fontSize: 18)),
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
