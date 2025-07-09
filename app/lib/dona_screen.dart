import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DonaScreen extends StatelessWidget {
  const DonaScreen({super.key});

  Future<void> _launchDonationURL() async {
    final Uri url = Uri.parse('https://donaciones.caritaspuebla.org/donar');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dona'),
        backgroundColor: Color.fromARGB(255, 244, 67, 54),
      ),
      body: Center( // CENTRA TODO EN LA PANTALLA
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Solo ocupa el alto necesario
            children: [
              const Text(
                '¡Gracias por tu interés en donar!\n\nTu apoyo ayuda a cambiar vidas.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: _launchDonationURL,
                icon: const Icon(Icons.volunteer_activism),
                label: const Text('Dona'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 30, 27, 182),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
