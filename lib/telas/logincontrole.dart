import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:petshop/Telainicial.dart';
import 'package:petshop/telas/Telalogin.dart';

class Logincontrole extends GetxController {static Logincontrole instance = Get.find();
  Rx<User?> _user = Rx<User?>(FirebaseAuth.instance.currentUser);
  User? get user => _user.value;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user.bindStream(FirebaseAuth.instance.userChanges());
    ever(_user, _verificaLogin);
  }

  void _verificaLogin(User? user) {
    if (user == null) {
      Get.offAll(() => Telalogin());
    } else {
      Get.offAll(() => Telainicial());
    }
  }

  void sairLogin() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => Telalogin());
  }

  void login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      Get.to(
        () => Telainicial(),
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Login",
        "Erro ao fazer Login",
        backgroundColor: Colors.red,
        titleText: Text("Erro no Login"),
        messageText: Text("Falha ao tentar fazer Login! Sua senha ou email estao incorretos."),
        snackPosition: SnackPosition.TOP
      );
    }
  }

  void criarconta(String nome, String email, String senha) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      User? usuario = FirebaseAuth.instance.currentUser;
      usuario!.updateProfile(displayName: nome);
      await usuario.reload();

      Get.to(
        () => Telainicial(),
      );

      print('Usuário criado com sucesso. Nome do usuário: $nome');
    } on FirebaseAuthException catch (e) {
    Get.snackbar(
        "Criar Conta",
        "Erro ao Criar Conta",
        backgroundColor: Colors.red,
        titleText: Text("Erro ao Criar Conta"),
        messageText: Text("Falha ao Criar Conta! Sua senha ou email não são válidos."),
        snackPosition: SnackPosition.TOP
      );
    } catch (e) {
      print(e);
    }
  }}

