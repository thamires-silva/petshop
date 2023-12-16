import 'package:flutter/material.dart';
import 'package:petshop/telas/carregando.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _SenhaController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _EmailController,
              style:const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'Nome',
                prefixIcon:const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                
              ),
            ),
             const SizedBox(height: 20.0),

            TextField(
              controller: _SenhaController,
              style:const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'senha',
                prefixIcon:const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
           const SizedBox(height: 20.0),
           FilledButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Carregando()));
           }, child: const Text('Login')),
           

        ],
        ),
      ),
    );
  }
}