import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

const mainColor = Color(0xFF1c77c3);

class SearchSectionView extends StatelessWidget {
  const SearchSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                offset: Offset(1, 1),
              )
            ]),
        child: Form(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: GoogleFonts.roboto(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: 'Recherche un projet',
                    hintStyle: GoogleFonts.roboto(fontSize: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
            ],
          ),
        ),
      ),
    );
  }
}
