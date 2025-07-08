import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Caritas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              '¡Bienvenido a la app de Cáritas!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             Image.asset(
              'assets/images/logo_caritas.png',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
