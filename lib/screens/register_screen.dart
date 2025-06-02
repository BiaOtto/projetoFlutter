import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar Conta')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('CRIE SUA CONTA', style: TextStyle(fontSize: 24)),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Nome de usuário'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(labelText: 'Confirme a senha'),
              obscureText: true,
            ),
            ElevatedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                Navigator.pushNamed(context, '/selection');
              },
            ),
            TextButton(
              child: Text('Já possui uma conta? Entre aqui'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
