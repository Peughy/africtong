import 'package:africtong/list_project/controllers/list_project_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPresentation extends StatelessWidget {
  const ProjectPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    ListProjectController listProjectController = ListProjectController();

    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: listProjectController.projects.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image(
                              image: AssetImage(
                                  listProjectController.projects[index].image),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 12),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  listProjectController
                                      .projects[index].nomProjet,
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 12),
                              Container(
                                child: Text(
                                    maxLines: 3,
                                    "${listProjectController.projects[index].descriptionProjet.substring(0, 30)}...",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                            255, 49, 48, 48))),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.clock,
                                    color: Color.fromARGB(255, 49, 48, 48),
                                    size: 16,
                                  ),
                                  Text(
                                      listProjectController
                                          .projects[index].datePublication,
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          color: const Color.fromARGB(
                                              255, 49, 48, 48))),
                                ],
                              )
                            ])
                      ])),
                ),
                const Divider(
                  color: Color.fromARGB(255, 49, 48, 48),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
