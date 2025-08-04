import 'servicios.dart';
import 'package:flutter/material.dart';
import 'dona_screen.dart';
import 'info_screen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 205, 199),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo_caritas.png',
          height: 40,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 207, 39, 39),
              ),
              child: Text(
                'Inicio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Conócenos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Únete a nuestra causa'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DonaScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          // Fondo de imagen
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
          'assets/images/fondo2.png',
          fit: BoxFit.cover,
          
        ),
      ),

          
          // Capa opcional semitransparente para mejorar legibilidad (puedes quitarla si no la quieres)
          Container(
            color: Colors.white.withOpacity(0.60), // Puedes ajustar la opacidad
          ),
          // Contenido principal
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 250),
                const Text(
                  '¡Bienvenido a nuestra app!',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily:'Garamond',
                    color: Colors.black87,
                  ),
                ),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.push
                    (
                      context,
                      MaterialPageRoute(builder: (context)=> const ServiciosScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 244, 67, 54),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Explora nuestros servicios',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



