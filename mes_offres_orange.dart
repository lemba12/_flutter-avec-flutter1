import 'package:flutter/material.dart';
import 'achat_credits_page.dart'; // Importer la page pour l'achat de crédits
import 'reabonnement_forfait_page.dart'; // Importer la page pour le réabonnement du forfait internet
import 'achat_credits_communication_page.dart'; // Importer la page pour l'achat de crédits de communication
import 'achat_forfaits_internet_page.dart'; // Importer la page pour l'achat de forfaits internet

class MesOffresOrangePage extends StatelessWidget {
  const MesOffresOrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Offres Orange'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildCard(
              context,
              'Achat de crédits',
              const AchatCreditsPage(),
              Colors.orange,
            ),
            buildCard(
              context,
              'Réabonnement du forfait internet',
              const ReabonnementForfaitPage(),
              Colors.orange,
            ),
            buildCard(
              context,
              'Achat de crédits de communication',
              const AchatCreditsCommunicationPage(),
              Colors.orange,
            ),
            buildCard(
              context,
              'Achat de forfaits internet',
              const AchatForfaitsInternetPage(),
              Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, Widget page, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.black,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
