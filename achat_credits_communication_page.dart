import 'package:flutter/material.dart';

class AchatCreditsCommunicationPage extends StatelessWidget {
  const AchatCreditsCommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achat de crédits de communication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Achat de crédits de communication',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Choisissez le montant de crédit à acheter',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      children: [
                        _buildCreditAmountButton(context, '5 FCFA'),
                        _buildCreditAmountButton(context, '10 FCFA'),
                        _buildCreditAmountButton(context, '20 FCFA'),
                        _buildCreditAmountButton(context, '50 FCFA'),
                        _buildCreditAmountButton(context, '100 FCFA'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Action lorsque le bouton est cliqué
              },
              child: const Text('Valider l\'achat'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditAmountButton(BuildContext context, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // Action lorsque le bouton est cliqué
        },
        child: Text(amount),
      ),
    );
  }
}
