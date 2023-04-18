import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nom et prénom',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email ou numéro de téléphone',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF175F30),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Vous avez déjà un compte ?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Se connecter'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
