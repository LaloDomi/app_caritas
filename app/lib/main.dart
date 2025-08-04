import 'package:app/comed_screen.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'asilo_screen.dart';
import 'dispensario_screen.dart';
import 'centro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cáritas App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(), // ← Pantalla inicial
      routes: {
        '/asilo': (context) => const AsiloScreen(),
        '/dispensario': (context) => const DispensarioScreen(),
        '/centro': (context)=> const Servicio3Screen(),
        '/comedores': (context)=> const comed_screen()
      },
    );
    
  }
}
