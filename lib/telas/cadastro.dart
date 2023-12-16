import 'package:flutter/material.dart';
import 'package:petshop/telas/botaogoogle.dart';
import 'package:petshop/telas/buttoes.dart';

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
      body: Container(
        decoration: BoxDecoration( image: DecorationImage(image: AssetImage('imagens/mulherdeitada.png'),fit: BoxFit.cover)),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
          'imagens/coco.png',
          fit: BoxFit.fitWidth,
          width: 150,
        ),
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
            InkWell(onTap: () {
              
            },child: Text('esqueceu a senha'),),

            
            const SizedBox(height: 20.0),
            Butoes(clicar: (){}, texto: 'Cadastrar'),
            Text('Ou entre com o'),
            Googlebutao(texto: 'entre com o google', clicar:(){}, icon: 'google',cor: Colors.white,),
            // FilledButton(onPressed: () {}, child: const Text('Cadastrar')),
            
          ],
        ),
      ),
      bottomNavigationBar:  Container(padding: EdgeInsets.symmetric(vertical: 10),   color: Colors.green, child: Text('Reservado',textAlign: TextAlign.center,),),
    );
  }
}