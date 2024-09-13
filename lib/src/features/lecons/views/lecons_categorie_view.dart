import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/lecons/controller/lecons_categorie_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeconsCategorieView extends StatelessWidget {
  const LeconsCategorieView({super.key});

  @override
  Widget build(BuildContext context) {
    LeconsCategorieController leconsCategorieController =
        LeconsCategorieController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pad),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: leconsCategorieController.categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  debugPrint(
                      leconsCategorieController.categories[index].cathegorie);
                },
                child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: leconsCategorieController
                          .categories[index].mainContainer,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(borderBottomNavigationRadius),
                        topRight: Radius.circular(borderBottomNavigationRadius),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      leconsCategorieController.categories[index].cathegorie[0],
                      style: GoogleFonts.pirataOne(
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                          color: leconsCategorieController
                              .categories[index].textColor),
                    )),
                  ),
                  Material(
                    elevation: 2,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(borderBottomNavigationRadius),
                      bottomRight:
                          Radius.circular(borderBottomNavigationRadius),
                    ),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(pad * 0.5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          leconsCategorieController
                              .categories[index].cathegorie,
                          style: GoogleFonts.openSans(
                              fontSize: mediumSize,
                              letterSpacing: letterSpacing,
                              color: leconsCategorieController
                                  .categories[index].textColor,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(height: hSpacing * 2),
                ]));
          },
        ),
      ),
    );
  }
}
