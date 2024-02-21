import 'package:flutter/material.dart';

class AchatForfaitsInternetPage extends StatelessWidget {
  const AchatForfaitsInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achat de forfaits internet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Forfaits Internet disponibles',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            _buildSearchBar(),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  _buildForfaitCard(
                    context,
                    'Forfait 1',
                    '10 GB',
                    'Valable 30 jours',
                    '10000 FCFA',
                  ),
                  const SizedBox(height: 20.0),
                  _buildForfaitCard(
                    context,
                    'Forfait 2',
                    '20 GB',
                    'Valable 30 jours',
                    '15000 FCFA',
                  ),
                  const SizedBox(height: 20.0),
                  _buildForfaitCard(
                    context,
                    'Forfait 3',
                    '50 GB',
                    'Valable 60 jours',
                    '25000 FCFA',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Rechercher un forfait',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildForfaitCard(BuildContext context, String title, String dataAmount, String validity, String price) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Données: $dataAmount',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Validité: $validity',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Prix: $price',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Action lorsque le bouton est cliqué
              },
              child: const Text('Acheter'),
            ),
          ],
        ),
      ),
    );
  }
}
