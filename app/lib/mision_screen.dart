import 'package:flutter/material.dart';

class MisionScreen extends StatelessWidget {
  const MisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestra Misión'),
        backgroundColor: const Color.fromARGB(255, 244, 67, 54),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Text(
          'Aquí va el texto con la misión de Cáritas Puebla.\n\n'
          'Podrás explicar con detalle los valores, objetivos y todo lo relacionado.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
