import 'package:africtong/ajout_produit/views/header.dart';
import 'package:africtong/list_project/views/categories_project.dart';
import 'package:africtong/list_project/views/project_presentation.dart';
import 'package:africtong/list_project/views/search_section_view.dart';
import 'package:flutter/material.dart';

class ListProjectView extends StatelessWidget {
  const ListProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: Header(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchSectionView(),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CategoriesProject(),
            ),
            SizedBox(height: 36),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ProjectPresentation(),
            ),
          ],
        ));
  }
}
