import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController _NomeController = TextEditingController();
  final TextEditingController _PhoneController = TextEditingController();
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
              controller: _NomeController,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'Nome',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _EmailController,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _PhoneController,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'telefone',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _SenhaController,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF5E5E62),
              ),
              decoration: InputDecoration(
                hintText: 'senha',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            FilledButton(onPressed: () {}, child: const Text('Cadastrar')),
            
          ],
        ),
      ),
    );
  }
}