import 'package:flutter/material.dart';
import 'package:petshop/Telainicial.dart';
import 'package:petshop/telas/Telaadicionar.dart';
import 'package:petshop/telas/Telaperfil.dart';
import 'package:petshop/telas/icons.dart';
import 'package:petshop/telas/telapets.dart';

class Navibar extends StatefulWidget {
  final int telaatual;
  const Navibar({super.key, required this.telaatual});

  @override
  State<Navibar> createState() => NavibarState();
}

class NavibarState extends State<Navibar> {
  final List<Widget> listatelas = [
    Telainicial(),
    Telapets(),
    Telaadicionar(),
    Telaperfil()
  ];
  void next(int pos) {
    if (pos == 0) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute<void>(builder: (context) => listatelas[pos]),
          (route) => false);
    } else {
      Navigator.push(context,
          MaterialPageRoute<void>(builder: (context) => listatelas[pos]),);
    }
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: next,
      currentIndex: widget.telaatual,
      backgroundColor: Colors.green,
      fixedColor: Colors.blue,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.pets),label: 'pets'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),label: 'person'
        ),
      ],
    );
  }
}
