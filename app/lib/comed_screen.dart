import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class comed_screen extends StatelessWidget {
  const comed_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/fotocarr1.png',
      'assets/images/fotocarr2.png',
      'assets/images/fotocarr3.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Comedores Palafoxiano'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            const SizedBox(height: 50),
            CarouselSlider(
              options: CarouselOptions(
                height: 250,
                autoPlay: true ,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlayInterval: const Duration(seconds: 3),
              ),
              items: imagePaths.map((path) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 50),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Los Comedores Palafox son una iniciativa de la Arquidiócesis de Puebla y de la fundación que brinda apoyo alimentario a personas en situación de vulnerabilidad. Funcionan como comedores sociales, ofreciendo comidas a precios bajos o incluso de forma gratuita, con el objetivo de ayudar a quienes más lo necesitan. ',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
