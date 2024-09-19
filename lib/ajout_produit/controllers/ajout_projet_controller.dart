import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xFF1c77c3);

class AjoutProjetController {
  int initStep = 0;
  List<Step> steps = [
    Step(
        title: Text('Titre du projet',
            style: GoogleFonts.nunito(
                color: mainColor, fontSize: 22, fontWeight: FontWeight.bold)),
        content: Column(children: [
          TextFormField(
            style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              hintText: "Nom du projet",
              hintStyle: GoogleFonts.nunito(fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
            //   validator: (value) =>
            //       loginController.validateEmail(value),
          ),
        ]),
        isActive: true,
        subtitle: Text("ETAPE 1", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Secteur d'activite",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          TextFormField(
            style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              hintText: "Secteur d'activite",
              hintStyle: GoogleFonts.nunito(fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
            //   validator: (value) =>
            //       loginController.validateEmail(value),
          ),
        ]),
        isActive: true,
        subtitle: Text("ETAPE 2", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Objectif du projet",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          TextFormField(
            style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              hintText: "Votre objectif",
              hintStyle: GoogleFonts.nunito(fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
            //   validator: (value) =>
            //       loginController.validateEmail(value),
          ),
        ]),
        isActive: true,
        subtitle: Text("ETAPE 2", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Description textuelle du projet",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          TextFormField(
            minLines: 3,
            maxLines: 5,
            style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              hintText: "Votre projet",
              hintStyle: GoogleFonts.nunito(fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
            //   validator: (value) =>
            //       loginController.validateEmail(value),
          ),
        ]),
        isActive: true,
        subtitle: Text("ETAPE 3", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Description video du projet",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          ElevatedButton.icon(
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                allowMultiple: false,
                type: FileType.custom,
                allowedExtensions: ['mp4'],
              );

              if (result != null) {
                File file = File(result.files.single.path!);
              } else {
                // User canceled the picker
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            icon: const Icon(
              FontAwesomeIcons.video,
              color: Colors.white,
            ),
            label: Text("Importer videos".toUpperCase(),
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          )
        ]),
        isActive: true,
        subtitle: Text("ETAPE 4", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Cahier de charge du projet",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          ElevatedButton.icon(
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                allowMultiple: false,
                type: FileType.custom,
                allowedExtensions: ['pdf'],
              );

              if (result != null) {
                File file = File(result.files.single.path!);
                print(file.toString());
              } else {
                // User canceled the picker
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            icon: const Icon(
              FontAwesomeIcons.solidFile,
              color: Colors.white,
            ),
            label: Text("cahier de charge".toUpperCase(),
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          )
        ]),
        isActive: true,
        subtitle: Text("ETAPE 5", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Estimation du cout du projet",
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 52, 51, 51),
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Column(children: [
          TextFormField(
            keyboardType: TextInputType.number,
            style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              hintText: "Cout du projet",
              hintStyle: GoogleFonts.nunito(fontSize: 18),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
            //   validator: (value) =>
            //       loginController.validateEmail(value),
          ),
        ]),
        isActive: true,
        subtitle: Text("ETAPE 6", style: GoogleFonts.nunito(fontSize: 14))),
    Step(
        title: Text("Fin",
            style: GoogleFonts.nunito(
                color: Colors.green,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        content: Row(
          children: [
            const Icon(FontAwesomeIcons.check, size: 28, color: Colors.green),
            const SizedBox(height: 10),
            Text(
              "Etapes terminees",
              style: GoogleFonts.nunito(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ],
        ),
        isActive: true,
        state: StepState.complete,
        subtitle: Text("ETAPE 6", style: GoogleFonts.nunito(fontSize: 14))),
  ];
}
