import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'servicio1_screen.dart';
import 'servicio2_screen.dart';
import 'servicio3_screen.dart';

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
        '/servicio1': (context) => const Servicio1Screen(),
        '/servicio2': (context) => const Servicio2Screen(),
        '/servicio3': (context)=> const Servicio3Screen(),
      },
    );
    
  }
}
