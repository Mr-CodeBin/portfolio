class ProjectsModel {
  final String title;
  final String image;
  final String subtitle1;
  final String subtitle2;

  ProjectsModel({
    required this.title,
    required this.image,
    required this.subtitle1,
    required this.subtitle2,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    return ProjectsModel(
      title: json['title'],
      image: json['image'],
      subtitle1: json['subtitle1'],
      subtitle2: json['subtitle2'],
    );
  }

  static List<ProjectsModel> fromJsonList(List list) {
    return list.map((item) => ProjectsModel.fromJson(item)).toList();
  }
}
