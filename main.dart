import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'mes_offres_orange.dart'; // Assurez-vous que ce fichier existe dans votre projet et qu'il contient la classe MesOffresOrangePage
import 'welcome_page.dart'; // Assurez-vous que ce fichier existe dans votre projet et qu'il contient la classe WelcomePage
import 'animation.dart'; 
import 'principale.dart';// Assurez-vous que ce fichier existe dans votre projet et qu'il contient la classe AnimationPage
void main() {
  runApp(const MaterialApp(
    home: MyApp(), // Afficher principale.dart en premier
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mon Application',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Constante pour la hauteur de l'image
    final double imageHeight = MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: imageHeight,
            child: CarouselSlider.builder(
              itemCount: 1, // Seule une image sera affichée
              options: CarouselOptions(
                autoPlay: true, // Défilement automatique activé
                autoPlayInterval: Duration(seconds: 3), // Intervalle de défilement automatique
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                return ZoomTapAnimation(
                  child: Image.asset(
                    'assets/images/femme_sourie.jpeg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MesOffresOrangePage()),
              );
            },
            child: const Text('Voir Mes Offres Orange'),
          ),

  const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PrincipalePage()),
              );
            },
            child: const Text('Pubs'),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
              );
            },
            child: const Text('Offre en ligne ici'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimationPage()),
              );
            },
            child: const Text('Maxit'),
          ),
        ],
      ),
    );
  }
}
