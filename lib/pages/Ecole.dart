import 'package:flutter/material.dart';

class EcolePage extends StatelessWidget {
  const EcolePage({super.key});

  final List<Map<String, String>> filieres = const [
    {"titre": "LPTI", "desc": "Licence Professionnelle en Télécoms & Informatique"},
    {"titre": "LPMEN", "desc": "Licence Professionnelle en Maintenance des Équipements Numériques"},
    {"titre": "DTS", "desc": "Diplôme de Technicien Supérieur"},
    {"titre": "DTS-C", "desc": "DTS en Communication"},
    {"titre": "RDS", "desc": "Réseaux & Data Science"},
    {"titre": "RST", "desc": "Réseaux & Systèmes Télécoms"},
    {"titre": "GL", "desc": "Génie Logiciel"},
    {"titre": "Master", "desc": "Formation Master"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notre École')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset('assets/images/3.jpg'),
          const SizedBox(height: 16),

          const Text(
            "ESCEP - Ecole Supérieure de Communication Electronique et de la Poste",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          // 🟦 Liste des filières sous forme de Cards
          ...filieres.map((filiere) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filiere["titre"]!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      filiere["desc"]!,
                      style: const TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    const SizedBox(height: 12),

                    // Bouton redirection
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilierePage(nomFiliere: filiere["titre"]!),
                            ),
                          );
                        },
                        child: const Text("Voir plus"),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class FilierePage extends StatelessWidget {
  final String nomFiliere;

  const FilierePage({super.key, required this.nomFiliere});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filière : $nomFiliere")),
      body: Center(
        child: Text(
          "Informations sur la filière $nomFiliere",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
