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
          'Proporcionar con amor la ayuda necesaria a los hermanos más desprotegidos, pobres, enfermos e indigentes de la comunidad, dotándolos de servicios asistenciales con calides y calidad humana.',
          style: TextStyle
          (
            fontSize: 19,
            fontFamily:'Lato',
            color: Colors.black87,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
