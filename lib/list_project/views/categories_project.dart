import 'package:africtong/list_project/controllers/list_project_controller.dart';
import 'package:africtong/list_project/views/search_section_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesProject extends StatefulWidget {
  const CategoriesProject({super.key});

  @override
  State<CategoriesProject> createState() => _CategoriesProjectState();
}

ListProjectController listProjectController = ListProjectController();
String labelProject = "Tous les";

class _CategoriesProjectState extends State<CategoriesProject> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listProjectController.categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          listProjectController.chooseCategories(
                              listProjectController.categories, index);
                          labelProject = listProjectController
                              .changeText(listProjectController.categories);
                        });
                      },
                      child: Text(
                          listProjectController.categories[index].categorie,
                          style: GoogleFonts.roboto(
                              backgroundColor: (listProjectController
                                      .categories[index].active)
                                  ? mainColor
                                  : Colors.transparent,
                              fontSize: 22,
                              color: (listProjectController
                                      .categories[index].active)
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: (listProjectController
                                      .categories[index].active)
                                  ? FontWeight.bold
                                  : FontWeight.normal))),
                );
              },
            )),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "$labelProject projets",
            style:
                GoogleFonts.nunito(fontSize: 38, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
