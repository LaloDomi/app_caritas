import 'package:flutter/material.dart';

class Servicio3Screen extends StatelessWidget {
  const Servicio3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicio 3'),
      ),
      body: const Center(
        child: Text(
          'Aquí va la información o funcionalidades del Servicio 3.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
