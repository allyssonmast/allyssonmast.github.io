class Project {
  final String title;
  final String projectName;
  final String url;
  final String subTitle;
  final String descrition;
  final List<String> details;
  final Map<String,dynamic> projectArc;

  Project(
      {required this.title,
      required this.projectName,
      required this.url,
      required this.descrition,
      required this.projectArc,
      required this.subTitle,
      required this.details});
}
