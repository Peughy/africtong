import 'package:africtong/ajout_produit/controllers/ajout_projet_controller.dart';
import 'package:africtong/ajout_produit/views/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mainColor = Color(0xFF1c77c3);

class AjoutProjetView extends StatelessWidget {
  const AjoutProjetView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
      ),
      home: const AjoutProjet(),
    );
  }
}

class AjoutProjet extends StatefulWidget {
  const AjoutProjet({super.key});

  @override
  State<AjoutProjet> createState() => _AjoutProjetState();
}

AjoutProjetController ajoutProjetController = AjoutProjetController();

class _AjoutProjetState extends State<AjoutProjet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Ajouter un nouveau projet",
                      style: GoogleFonts.nunito(
                          fontSize: 32,
                          color: mainColor,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 12),
                Text(
                    "Suivez les etapes d'ajout de projet puis somettez a la fin. Chaque projet soummis sera examine par l'administrateur",
                    style: GoogleFonts.nunito(fontSize: 22)),
                const SizedBox(height: 24),
                Stepper(
                  physics: const ScrollPhysics(),
                  currentStep: ajoutProjetController.initStep,
                  steps: ajoutProjetController.steps,
                  type: StepperType.vertical,
                  onStepTapped: (index) {
                    setState(() {
                      ajoutProjetController.initStep = index;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (ajoutProjetController.initStep < ajoutProjetController.steps.length - 1) {
                        ajoutProjetController.initStep = ajoutProjetController.initStep + 1;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (ajoutProjetController.initStep > 0) {
                        ajoutProjetController.initStep = ajoutProjetController.initStep - 1;
                      } else {
                        ajoutProjetController.initStep = 0;
                      }
                    });
                  },
                ),
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: Text("soumettre".toUpperCase(),
                        style: GoogleFonts.nunito(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
