import 'package:flutter/material.dart';
import 'mision_screen.dart'; // Asegúrate de que el archivo exista

class DispensarioScreen extends StatelessWidget {
  const DispensarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispensario Médico'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // <-- Aquí está el Padding bien cerrado
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Contamos con diferentes tipos de servicios en esta área, como:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MisionScreen()),
                );
              },
              icon: const Icon(Icons.medical_services),
              label: const Text('Médico General'),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MisionScreen()),
                );
              },
              icon: const Icon(Icons.medication_liquid),
              label: const Text('Rehabilitación Fisica'),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MisionScreen()),
                );
              },
              icon: const Icon(Icons.medical_information_outlined),
              label: const Text('Dentista'),
            ),
          ],
        ),
      ),
    );
  }
}
