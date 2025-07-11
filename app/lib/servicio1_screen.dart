import 'package:flutter/material.dart';

class Servicio1Screen extends StatelessWidget {
  const Servicio1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicio 1'),
      ),
      body: const Center(
        child: Text(
          'Aquí va la información o funcionalidades del Servicio 1.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
