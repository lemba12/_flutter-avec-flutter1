import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    // Démarrage de l'animation
    _controller.forward();

    // Lancement du Timer
    _timer = Timer(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return const MainScreen();
        }),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel(); // Annuler le Timer lors de la suppression du widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/maxit.jpeg'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 50 * _animation.value,
                      top: 50 * _animation.value,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                    Positioned(
                      right: 50 * _animation.value,
                      bottom: 50 * _animation.value,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                    // Ajout du texte "MAXIT"
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 100,
                      child: Opacity(
                        opacity: _animation.value, // Opacité basée sur l'animation
                        child: const Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenue sur la maps!'),
            const SizedBox(height: 20),
            Image.asset('assets/images/maps.jpeg'), // Assurez-vous que le chemin est correct
          ],
        ),
      ),
    );
  }
}


