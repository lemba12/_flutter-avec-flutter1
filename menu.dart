import 'package:flutter/material.dart';
class MenuPage extends StatelessWidget {
  final String phoneNumber;

  const MenuPage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                Icon(Icons.person), // Icone d'un homme
                SizedBox(width: 8), // Espace entre l'icône et le numéro
                Text(phoneNumber), // Numéro de téléphone
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Menus',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MenuItemCard(
                  imagePath: 'assets/images/orange.jpeg',
                  title: 'Accueil',
                  onPressed: () {
                    // Logique de navigation vers la page d'accueil
                  },
                ),
                MenuItemCard(
                  imagePath: 'assets/images/image1.jpeg',
                  title: 'Rou de la fortune',
                  onPressed: () {
                    // Logique de navigation vers la page Orange Money
                  },
                ),
                MenuItemCard(
                  imagePath: 'assets/images/image3.jpeg',
                  title: 'Tout sur la can',
                  onPressed: () {
                    // Logique de navigation vers la page Ma Ligne
                  },
                ),
                MenuItemCard(
                  imagePath: 'assets/images/ticket.jpg',
                  title: 'Orange money',
                  onPressed: () {
                    // Logique de navigation vers la page Marketplace
                  },
                ),
                MenuItemCard(
                  imagePath: 'assets/images/image2.jpg',
                  title: 'forfait internet',
                  onPressed: () {
                    // Logique de navigation
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.black),
                onPressed: () {
                  // Logique de navigation vers la page d'accueil
                },
              ),
              IconButton(
                icon: Icon(Icons.home, color: Colors.orange),
                onPressed: () {
                  // Logique de navigation vers la page d'accueil
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.local_atm), // Icone de Orange
                  SizedBox(width: 16), // Espace entre l'icône et le texte
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye), // Icone d'œil
                          SizedBox(width: 8), // Espace entre l'icône et le texte
                          Text('0 1 2 3 4 5 6 7 8 9'), // Les numéros
                        ],
                      ),
                      SizedBox(height: 8), // Espacement
                      Text('Sold principale'), // Texte du solde principal
                    ],
                  ),
                  Spacer(), // Espace flexible pour pousser le contenu à droite
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone), // Icone de téléphone
                          SizedBox(width: 8), // Espace entre l'icône et le texte
                          Icon(Icons.remove_red_eye), // Icone d'œil
                        ],
                      ),
                      SizedBox(height: 8), // Espacement
                      Text('Transaction Orange Money'), // Texte de transaction
                      SizedBox(height: 8), // Espacement
                      Text('Voir plus', style: TextStyle(color: Colors.orange)), // Texte "Voir plus" en orange
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Mes favoris',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FavorisCard(
                icon: Icons.receipt, // Icone de facturiers
                title: 'Facturiers',
              ),
              FavorisCard(
                icon: Icons.qr_code, // Icone de code QR
                title: 'Code QR',
              ),
              FavorisCard(
                icon: Icons.monetization_on, // Icone de transfert d'argent
                title: 'Transfert d\'argent',
              ),
              FavorisCard(
                icon: Icons.credit_card, // Icone d'achat de crédit
                title: 'Achat de crédit',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onPressed;

  const MenuItemCard({
    required this.imagePath,
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 32, height: 32), // Utilisation de l'image
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavorisCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const FavorisCard({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
