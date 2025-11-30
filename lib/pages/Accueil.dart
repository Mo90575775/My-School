import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Bienvenue à l\'ESCEP !', style: TextStyle(fontSize: 24)),
          ),
          Image.asset('assets/images/5.jpg')
        ],
      ),
    );
  }
}
