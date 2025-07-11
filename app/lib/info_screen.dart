import 'package:flutter/material.dart';
import 'mision_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Nosotros'),
        backgroundColor: const Color.fromARGB(255, 244, 67, 54),
      ),
      body: Stack(
        children: [
          // Fondo de imagen
          SizedBox.expand(
            child: Image.asset(
              'assets/images/fondo.png', // Asegúrate de tener esta imagen
              fit: BoxFit.cover,
            ),
          ),

          // Capa blanca con opacidad para que el texto sea más legible
          Container(
            color: Colors.white.withOpacity(0.6),
          ),

          // Contenido principal
          SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Cáritas',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Garamond',
                    color: Color.fromARGB(255, 20, 27, 182),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Cáritas cuyo significado viene del latín “Caritas-atis” (significa caridad ó amor) nace el 7 de abril de 1981 por iniciativa de Monseñor Don Rosendo Huesca Pacheco, Arzobispo Emérito, como consecuencia de las grandes necesidades que vive nuestro país. Familias desamparadas, indigentes carentes de todo, motivaron a que los católicos se unieran para ayudar a los hermanos más desprotegidos y vulnerables de la sociedad. Actualmente, Monseñor Don Víctor Sánchez Espinosa, Arzobispo de Puebla está muy interesado en apoyar a la Fundación Cáritas para atender a un mayor número de nuestros hermanos más necesitados. Cáritas Puebla, ubicada en la 13 Sur #1701, Barrio de Santiago, inició actividades el 15 de octubre de 1983.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily:'Lato',
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MisionScreen()),
                    );
                  },
                  icon: const Icon(Icons.info_outline),
                  label: const Text('Nuestra Misión'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 244, 67, 54),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
