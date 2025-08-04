import 'package:flutter/material.dart';

class VisionScreen extends StatelessWidget {
  const VisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestra Visión'),
        backgroundColor: const Color.fromARGB(255, 244, 67, 54),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Text(
          'Ser una fundación con el más alto nivel en la calidad de sus servicios de asistencia social, beneficiando a las personas de escasos recursos, incrementando la sensibilidad y la confianza de la comunidad hacia Cáritas, atendiendo los requerimientos básicos de subsistencia en materia de salud, educación preescolar vestido y cuidados paliativos a pacientes geriátricos en abandono; mediante la optimización de recursos, contando con una infraestructura adecuada y capacitación del personal, haciendo todo esto por amor a Dios y al prójimo.',
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
