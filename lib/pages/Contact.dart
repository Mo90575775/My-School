import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/6.jpg', height: 150),

              const SizedBox(height: 20),

              const Text(
                'Contactez-nous',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // 🟦 Card email
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.blue),
                  title: const Text("Email"),
                  subtitle: const Text("contact@escep.edu"),
                ),
              ),

              const SizedBox(height: 15),

              // 🟦 Card téléphone
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.green),
                  title: const Text("Téléphone"),
                  subtitle: const Text("+227 90 57 57 74"),
                ),
              ),

              const SizedBox(height: 15),

              // 🟦 Card localisation
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.red),
                  title: const Text("Adresse"),
                  subtitle: const Text("Niamey, Niger"),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Nous sommes disponibles du lundi au vendredi.\nN'hésitez pas à nous écrire ou appeler.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
