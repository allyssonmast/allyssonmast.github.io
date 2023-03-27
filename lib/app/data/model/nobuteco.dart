// To parse this JSON data, do
//
//     final nobuteco = nobutecoFromJson(jsonString);

import 'dart:convert';

Nobuteco nobutecoFromJson(String str) => Nobuteco.fromJson(json.decode(str));

String nobutecoToJson(Nobuteco data) => json.encode(data.toJson());

class Nobuteco {
  Nobuteco({
    required this.name,
    required this.asset,
    required this.logo,
    required this.description,
    required this.subtTitle,
    required this.pages,
    required this.url,
    required this.urlOption,
    required this.instructions,
  });

  String name;
  String asset;
  String url;
  String urlOption;
  String logo;
  String subtTitle;
  String description;
  Map<String,dynamic> pages;
  List<String> instructions;

  factory Nobuteco.fromJson(Map<String, dynamic> json) => Nobuteco(
    name: json["name"],
    subtTitle: json["subtTitle"],
    pages: json["pages"],
    url: json["url"],
    urlOption: json["urlOption"],
    asset: json["asset"],
    logo: json["logo"],
    description: json["description"],
    instructions: List<String>.from(json["instructions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "asset": asset,
    "logo": logo,
    "url": url,
    "subtTitle": subtTitle,
    "description": description,
    "instructions": List<dynamic>.from(instructions.map((x) => x)),
  };
}
