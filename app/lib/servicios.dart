import 'package:flutter/material.dart';

// Widget personalizado animado
class AnimatedServiceButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const AnimatedServiceButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedServiceButton> createState() => _AnimatedServiceButtonState();
}


class _AnimatedServiceButtonState extends State<AnimatedServiceButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: _pressed ? const Color.fromARGB(255, 244, 3, 3) : const Color.fromARGB(255, 20, 31, 235),
        borderRadius: BorderRadius.circular(_pressed ? 60 : 16),
       
       
      ),
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            setState(() => _pressed = true);
            Future.delayed(const Duration(milliseconds: 150), () {
              widget.onTap();
              setState(() => _pressed = false);
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 12),
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

// Pantalla principal de servicios
class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedServiceButton(
              text: 'Asilo',
              onTap: () => Navigator.pushNamed(context, '/asilo'),
            ),
            AnimatedServiceButton(
              text: 'Dispensario Médico',
              onTap: () => Navigator.pushNamed(context, '/dispensario'),
            ),
            AnimatedServiceButton(
              text: 'Centro de diagnostico',
              onTap: () => Navigator.pushNamed(context, '/centro'),
            ),
            AnimatedServiceButton(
              text: 'Comedores',
              onTap: () => Navigator.pushNamed(context, '/comedores'),
            ),
            AnimatedServiceButton(
              text: 'Trabajo Social',
              onTap: () => Navigator.pushNamed(context, '/servicio4'),
            ),
             AnimatedServiceButton(
              text: 'Comedores Palafoxianos',
              onTap: () => Navigator.pushNamed(context, '/servicio4'),
            ),
          ],
        ),
      ),
    );
  }
}
