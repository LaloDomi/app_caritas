import 'dart:async';
import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // ← Asegúrate de tener esta pantalla también

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Espera 3 segundos y navega a la pantalla de bienvenida
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambia a tu color preferido
      body: Center(
        child: Image.asset(
          'assets/images/logo_caritas.png',
          width: 200,
        ),
      ),
    );
  }
}
