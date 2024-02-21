import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart'; // Importez le package zoom_tap_animation
import 'connexion.dart';

class PrincipalePage extends StatelessWidget {
  const PrincipalePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: const CarouselPage(),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: CardSection(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Naviguer vers la page de connexion
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConnexionPage()),
                  );
                },
                child: Text('Connexion'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Quitter l'application
                  Navigator.of(context).pop();
                },
                child: Text('Quitter'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key});

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final List<String> imageUrls = [
    'assets/images/image1.jpeg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpeg',
    'assets/images/image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        itemCount: imageUrls.length,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          enlargeCenterPage: true,
          viewportFraction: 0.8,
          onPageChanged: (index, reason) {
            // Fonction appelée lorsque la page du carousel est changée
          },
        ),
        itemBuilder: (context, index, realIndex) {
          final imageUrl = imageUrls[index];
          return ZoomTapAnimation(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 1000,
            ),
          );
        },
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Orange Money',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Envoyer et recevoir de l\'argent, acheter du crédit et des forfaits, payer ses factures et bien d\'autres.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ticketing',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Acheter et virtualiser vos tickets d\'événement, réserver les tickets de vos événements préférés.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Offres et services',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Acheter et virtualiser vos tickets d\'événement, réserver les tickets de vos événements préférés.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Statut',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Acheter et virtualiser vos tickets d\'événement, réserver les tickets de vos événements préférés.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
