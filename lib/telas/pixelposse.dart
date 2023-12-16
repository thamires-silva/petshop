import 'package:flutter/material.dart';

void main() {
  runApp(Pixelposse());
}

class Pixelposse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Pets'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Pixel Posse"),
                      ),
                    ),
                  

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('imagens/cachorro1.png',
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_back, color: Colors.white),
                  ],
                ),
              ),
              Image.asset('imagens/mulhersozinha.png',fit: BoxFit.fill,),
              

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Pixel Posse"),
                      
                      // Adicione os ícones de e-mail e telefone aqui
                    ],
                  ),
                ),
              ),
              Container(
    width: 372,
    height: 195,
    decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.27),
        ),
        shadows: [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
            )
        ],
    ),
)
            ],
          ),
        ),
       
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                // Lógica para sair
              },
              child: Text("Sair", style: TextStyle(color: Colors.red)),
            ),
          ),
        ),
      ],
    );
  }
}