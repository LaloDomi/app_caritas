import 'package:flutter/material.dart';

class Servicio2Screen extends StatelessWidget {
  const Servicio2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicio 2'),
      ),
      body: const Center(
        child: Text(
          'Aquí va la información o funcionalidades del Servicio 2.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
