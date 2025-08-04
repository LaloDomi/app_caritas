import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class AsiloScreen extends StatelessWidget {
  const AsiloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/fotocarr1.png',
      'assets/images/fotocarr2.png',
      'assets/images/fotocarr3.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Asilo'),
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
                'Dentro de la fundación Caritas de Puebla, contamos con un asilo en donde se alojan alrededor de  56 abuelitos, de aproximadamente 65 años en adelante, las edades puedan variar en nuestros abuelos ya que se toma en cuenta sus necesidades y su situación por las cuales desean ingresar al asilo, así mismo parte de nuestros abuelos se encontraban en un estado de abandono y pobreza.',
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
