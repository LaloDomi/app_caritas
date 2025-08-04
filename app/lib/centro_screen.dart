import 'package:flutter/material.dart';

class Servicio3Screen extends StatelessWidget {
  const Servicio3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Centro de Diagnóstico'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0), // Aquí se agrega el margen
        child: Center(
          child: Text(
            'Contamos con un centro de estudios, en el cual con precios accesibles pueden acceder a: \n\n'
            '- Mastografías \n'
            '- Ultrasonidos \n'
            '- Rayos X \n'
            '- Estudios de laboratorio \n',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
