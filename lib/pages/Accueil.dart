import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                // Image de fond
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                // Filtre sombre
                Container(
                  height: 350,
                  color: Colors.black.withOpacity(0.5),
                ),

                // Texte centré
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "Révélez votre potentiel\navec l'ESCEP-NIGER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Nous formons les leaders de demain\n"
                              "en communications électroniques et en poste.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                """L'École Supérieure des Communications Électroniques et de la Poste (ESCEP-Niger) 
est un établissement phare dédié à la formation de professionnels qualifiés dans 
le domaine des communications électroniques et de la poste.

L’école s’appuie sur quatre pôles fondamentaux : la formation, la recherche, 
l’expertise et le partenariat — chacun jouant un rôle essentiel dans le 
développement de compétences de haut niveau pour un avenir prometteur.""",
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 30),


            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text("En savoir plus"),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}