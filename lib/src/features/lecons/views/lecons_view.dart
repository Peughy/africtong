import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/lecons/views/lecons_categorie_view.dart';
import 'package:africtong/src/features/lecons/views/lecons_search_view.dart';
import 'package:africtong/src/features/lecons/views/lecons_selection_view.dart';
import 'package:flutter/material.dart';

class LeconsView extends StatelessWidget {
  const LeconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: hSpacing),
          LeconsSelectionView(),
          SizedBox(height: hSpacing * 2),
          LeconsSearchView(),
          SizedBox(height: hSpacing * 3),
          LeconsCategorieView(),
        ],
      ),
    );
  }
}
