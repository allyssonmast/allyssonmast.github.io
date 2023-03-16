class AboutMe {
  String url;
  String title;
  String subTitle;
  String? description;
  DateTime startDate;
  DateTime finalDate;

  AboutMe({
    required this.url,
    required this.title,
    required this.subTitle,
    this.description,
    required this.startDate,
    required this.finalDate,
  });
}
