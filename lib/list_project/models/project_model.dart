class ProjectModel {
  final String nomProjet;
  final String descriptionProjet;
  final String datePublication;
  final String video;
  final String cahierCharge;
  final String objectif;
  final int cout;
  final String image;

  ProjectModel(
      {required this.nomProjet,
      required this.descriptionProjet,
      required this.datePublication,
      required this.video,
      required this.cahierCharge,
      required this.objectif,
      required this.cout,
      required this.image});
}

class CategoriesModel {
  final String categorie;
  bool active;

  CategoriesModel({required this.categorie, this.active = false});
}
